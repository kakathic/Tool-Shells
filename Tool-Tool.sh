# kakathic - Tool Mod - Hiếu Tools
curl -# https://raw.githubusercontent.com/kakathic/tool-tool/master/File/Tool-Tool.sh -o /sdcard/MIUI/Tool-Tool
mount -o rw,remount / 2> /dev/null
mount -o rw,remount /system 2> /dev/null
mv -f /sdcard/MIUI/Tool-Tool /bin/Tool-Tool
chmod -R 777 /sdcard/MIUI/Tool-Tool
mount -o ro,remount /system 2> /dev/null
mount -o ro,remount / 2> /dev/null
su -c "Tool-Tool"
