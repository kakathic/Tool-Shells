xem() {
if [ -e $MODULE_PATH/jadxxx ];then
if [ -e $MODULE_PATH/jadxxx/1.0 ];then
echo 0
else
echo 1
fi
else
echo 1
fi
}

xem2() {
if [ -e $MODULE_PATH/jadxxx ];then
if [ -e $MODULE_PATH/jadxxx/1.0 ];then
echo "No Update"
else
echo "Update"
fi
else
echo "Download"
fi
}


echo '<group>
<action warning="You want to install the module ?" auto-off="true" reload="true" visible="echo '$(xem)'">
<title>File ➠ Java</title>
<desc>Dex to Java decompiler</desc>
<summary sh="echo '$(xem2)'"/>
<script>
echo "Downloading..."
wget -q https://github.com/kakathic/Tool-Terminal/raw/master/Module/jadxxx.zip2 -O $TMPDIR/modun.zip 2>/dev/null
unzip -oq $TMPDIR/modun.zip -d $MODULE_PATH
rm -fr $TMPDIR/modun.zip
</script>
</action>
</group>'

