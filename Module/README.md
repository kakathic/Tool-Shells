
<group>
<action warning="Do you want to download it?" auto-off="true" reload="true" visible="[ -e $MODULE_PATH/javaclass ] &amp;&amp; echo 0 || echo 1">
<title>Convert class</title>
<desc>Decompile jar and convert class to java</desc>
<summary sh="echo Download"/>
<script>
wget -q https://github.com/kakathic/Tool-Terminal/raw/master/Module/javaclass.zip2 -O $TMPDIR/modun.zip 2>/dev/null
unzip -oq $TMPDIR/modun.zip -d $START_DIR/data/module
rm -fr $TMPDIR/modun.zip
</script>
</action>
</group>

<group>
<action warning="Do you want to download it?" auto-off="true" reload="true" visible="[ -e $MODULE_PATH/AXMLPrinter2 ] &amp;&amp; echo 0 || echo 1">
<title>AXMLPrinter</title>
<desc>Allows decoding xml in apk</desc>
<summary sh="echo Download"/>
<script>
wget -q https://github.com/kakathic/Tool-Terminal/raw/master/Module/AXMLPrinter2.zip2 -O $TMPDIR/modun.zip 2>/dev/null
unzip -oq $TMPDIR/modun.zip -d $START_DIR/data/module
rm -fr $TMPDIR/modun.zip
</script>
</action>
</group>

<group>
<action warning="You want to install the module ?" auto-off="true" reload="true" visible="[ -e $MODULE_PATH/phptest ] &amp;&amp; echo 0 || echo 1">
<title>PHP</title>
<desc>Install the device php</desc>
<summary sh="echo Download"/>
<script>
echo "Downloading..."
wget -q https://github.com/kakathic/Tool-Terminal/releases/download/php1.0/phptest-$CPU.zip -O $TMPDIR/modun.zip 2>/dev/null
unzip -oq $TMPDIR/modun.zip -d $MODULE_PATH
rm -fr $TMPDIR/modun.zip
echo
echo "Installing..."
tar -xJf $MODULE_PATH/phptest/php-$CPU -C $START_DIR/kr-script 2>/dev/null
</script>
</action>
</group>
