# Mount rw
mount -o rw,remount / 2> /dev/null
mount -o rw,remount /system 2> /dev/null
# Tải 7za
if [ -e /system/bin/7za ];then
echo
else
curl -# https://raw.githubusercontent.com/kakathic/Tool-Tool/master/File/bin/7za -o /system/bin/7za
chmod -R 777 /system/bin/7za
fi
# Tải Apktool
if [ -e /sdcard/Tool-Tool/.tmp/Apktool ];then
echo
else
curl -# http://www.mediafire.com/file/lycmt3rgxrnfyzo/Apktool.7z/file -o /sdcard/filetmp.k
link1=`grep "http://download" /sdcard/filetmp.k`
link2=`echo $link1  | sed -e 's/href="//g' -e 's/">//g'`
curl -# $link2 /sdcard/Tool-Tool/.tmp/Apktool
rm -rf /sdcard/filetmp.k
fi
# Giải nén Apktool và Cấp quyền hoạt động
if [ -e /data/local/Tool-Apk ];then
echo
else
cd /
7za x -y /sdcard/Tool-Tool/.tmp/Apktool
chmod -R 777 /bin/apktool
chmod -R 777 /data/data/per.pqy.openjdk
chmod -R 777 /data/local/Tool-Apk
fi
# Cài đặt thành công
if [ -e /data/data/per.pqy.openjdk ];then
echo
else
cp -rf /data/local/Tool-Apk/per.pqy.openjdk /data/data
chmod -R 777 /data/data/per.pqy.openjdk
fi
if [ -e /data/local/Tool-Apk/16.apk ];then
echo
else
apktool if /system/app/miui/miui.apk
apktool if /system/app/miuisystem/miuisystem.apk
apktool if /system/framework/framework-res.apk
apktool if /system/framework/framework-ext-res/framework-ext-res.apk
fi
# Mount ro
mount -o ro,remount /system 2> /dev/null
mount -o ro,remount / 2> /dev/null