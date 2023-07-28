path=/hdfs/data/data1
name_of_directory=$data1
dir=$path/$name_of_directory

if [ -d $dir ]; then
    echo "There is ${name_of_directory} Directory Exist!"
else
    echo " ${name_of_directory} Directory Not Exist"
    mkdir $dir
    exit 1
fi