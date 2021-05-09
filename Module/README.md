xem() {
if [ -e "$1" ];then
if [ -e "$1/$2" ];then
xem=0
xem2="No Update"
else
xem=1
xem2="Update"
fi
else
xem=1
xem2="Download"
fi
}

xem "\$MODULE_PATH/jadxxx" "1.0"

echo '<group>
<action warning="You want to install the module ?" auto-off="true" reload="true" visible="echo '$xem'">
<title>File ➠ Java</title>
<desc>Dex to Java decompiler</desc>
<summary sh="echo '$xem2'"/>
<script>
echo "Downloading..."
rm -fr $MODULE_PATH/jadxxx/*
wget -q https://github.com/kakathic/Tool-Terminal/raw/master/Module/jadxxx.zip2 -O $TMPDIR/modun.zip 2>/dev/null
unzip -oq $TMPDIR/modun.zip -d $MODULE_PATH
rm -fr $TMPDIR/modun.zip
</script></action></group>'

