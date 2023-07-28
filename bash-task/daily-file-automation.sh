path=/hdfs/data/data1
name_of_directory=$data1
dir=$path/$name_of_directory
filename_excel=daily_market_price.xlsx
source_dir=/local/data/market

if [ -d $dir ]; then
    echo "There is ${name_of_directory} Directory Exist!"
    cp $source_dir/$filename_excel $path
    echo "File Moved Succesfully"
else
    echo " ${name_of_directory} Directory Not Exist"
    mkdir $dir
    exit 1
fi