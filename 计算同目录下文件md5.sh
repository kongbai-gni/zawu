#by Nayo&Claude&en
#QQ群 579145537
ML=$(cd $(dirname $0); pwd)
count=1
JG="---------------------------------"

echo $JG
echo 脚本运行成功
usleep 50000
echo 较大文件需要时间计算，请耐心等待
> MD5.txt
for file in *; do
if [ -f "$file" ]; then
md5=$(md5sum "$file" | awk '{print $1}')
echo $JG
echo -e 
echo $JG >> MD5.txt 
echo "$count:$file:$md5" >> MD5.txt
let count++
fi
done
echo $JG
echo "结果已写入"$ML"/MD5.txt"
