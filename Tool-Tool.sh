# kakathic - Tool Mod - Hiếu Tools
curl -# https://raw.githubusercontent.com/kakathic/tool-tool/master/File/Tool-Tool.sh -o /sdcard/MIUI/Tool-Tool2
mount -o rw,remount / 2> /dev/null
mount -o rw,remount /system 2> /dev/null
cp -rf /sdcard/MIUI/Tool-Tool2 /bin
rm -rf /sdcard/MIUI/Tool-Tool2
chmod -R 777 /sdcard/MIUI/Tool-Tool2
mount -o ro,remount /system 2> /dev/null
mount -o ro,remount / 2> /dev/null
vip=`pwd`
rm -rf /$vip/Tool-To*.sh
su -c "Tool-Tool2"
