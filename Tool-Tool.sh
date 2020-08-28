# kakathic - Tool Mod - Hiếu Tools
curl -# https://raw.githubusercontent.com/kakathic/tool-tool/master/File/Tool-Tool -o /sdcard/Tool-Tool
curl -# https://raw.githubusercontent.com/kakathic/tool-tool/master/File/Tool-Chmod -o /sdcard/Tool-Chmod
su -c "cp -rf /sdcard/Tool-Tool /bin"
su -c "cp -rf /sdcard/Tool-Chmod /bin"
rm -rf /sdcard/Tool-Chmod
rm -rf /sdcard/Tool-Tool
su -c "Tool-Tool"