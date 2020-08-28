# kakathic - Tool Mod - Hiếu Tools
curl -# https://raw.githubusercontent.com/kakathic/tool-tool/master/File/Tool-Tool -o /sdcard/MIUI/Tool-Tool
curl -# https://raw.githubusercontent.com/kakathic/tool-tool/master/File/Tool-Chmod -o /sdcard/MIUI/Tool-Chmod
su -c "cp -rf /sdcard/MIUI/Tool-Tool /bin"
su -c "cp -rf /sdcard/MIUI/Tool-Chmod /bin"
rm -rf /sdcard/MIUI/Tool-Chmod
rm -rf /sdcard/MIUI/Tool-Tool
su -c "Tool-Tool"