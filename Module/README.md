xem() {
url="$1"
url2="$2"
if [ -e "$MODULE_PATH/$url" ];then
if [ -e "$MODULE_PATH/$url/$url2" ];then
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



xem "jadxxx" "1.0"

echo '<group>
<action warning="You want to install the module ?" auto-off="true" reload="true" visible="echo '$xem'">
<title>File ➠ Java</title>
<desc>Dex to Java decompiler</desc>
<summary sh="echo '$xem2'"/>
<script>
echo "Downloading..."
rm -fr $MODULE_PATH/'$url'/*
wget -q https://github.com/kakathic/Tool-Terminal/raw/master/Module/'$url'.zip2 -O $TMPDIR/modun.zip 2>/dev/null
unzip -oq $TMPDIR/modun.zip -d $MODULE_PATH
chmod -R $MODULE_PATH/'$url'
rm -fr $TMPDIR/modun.zip
</script></action></group>'



xem "AXMLPrinter2" "1.0"

echo '<group>
<action warning="You want to install the module ?" auto-off="true" reload="true" visible="echo '$xem'">
<title>AXMLPrinter</title>
<desc>Xml decoding tool in apk</desc>
<summary sh="echo '$xem2'"/>
<script>
echo "Downloading..."
rm -fr $MODULE_PATH/'$url'/*
wget -q https://github.com/kakathic/Tool-Terminal/raw/master/Module/'$url'.zip2 -O $TMPDIR/modun.zip 2>/dev/null
unzip -oq $TMPDIR/modun.zip -d $MODULE_PATH
chmod -R $MODULE_PATH/'$url'
rm -fr $TMPDIR/modun.zip
</script></action></group>'



xem "curl" "1.0"

echo '<group>
<action warning="You want to install the module ?" auto-off="true" reload="true" visible="echo '$xem'">
<title>Curl</title>
<desc>Test run curl command</desc>
<summary sh="echo '$xem2'"/>
<script>
echo "Downloading..."
rm -fr $MODULE_PATH/'$url'/*
wget -q https://github.com/kakathic/Tool-Terminal/raw/master/Module/'$url'.zip2 -O $TMPDIR/modun.zip 2>/dev/null
unzip -oq $TMPDIR/modun.zip -d $MODULE_PATH
chmod -R $MODULE_PATH/'$url'
rm -fr $TMPDIR/modun.zip
</script></action></group>'
