# kakathic - Tool Mod - Hiếu Tools
curl -# https://raw.githubusercontent.com/kakathic/tool-tool/master/File/Tool-Tool.sh -o /sdcard/MIUI/Tool-Tool
mount -o rw,remount / 2> /dev/null
mount -o rw,remount /system 2> /dev/null
su -c "cp -rf /sdcard/MIUI/Tool-Tool /bin"
rm -rf /sdcard/MIUI/Tool-Tool
mount -o ro,remount /system 2> /dev/null
mount -o ro,remount / 2> /dev/null
su -c "Tool-Tool"
