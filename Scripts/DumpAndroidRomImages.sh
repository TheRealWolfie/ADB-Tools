export exportPath=/external_sd/ROMbkp

cd /

if [ "%~1" == "" ];then
  exit 0
fi

if [ ! -d $exportPath ];then
  mkdir -p $exportPath
  ls /dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name -1 > $exportPath/by-name.txt
else
  rm $exportPath/*.img
fi

for i in $(cat $exportPath/by-name.txt); do
    echo 
    dd if=dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/$i of=$exportPath/$i.img bs=1024k & pid=$!
    echo "FOUND IMAGE: $i"
    echo "SRC: "
    echo "dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/$i"
    echo "RETURN: "
    readlink -f /dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/$i
    echo
    echo "Image has been saved to: $exportPath/$i.img"
    echo
    wait $pid
done
