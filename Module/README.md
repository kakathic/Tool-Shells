<group>
<action warning="You want to install the module ?" auto-off="true" reload="true" visible="[ -e $MODULE_PATH/jadxxx ] &amp;&amp; [ -e $MODULE_PATH/jadxxx/1.0 ] &amp;&amp; echo 0 || echo 1 || echo 1">
<title>File ➠ Java</title>
<desc>Dex to Java decompiler</desc>
<summary sh="[ -e $MODULE_PATH/jadxxx/1.0 ] &amp;&amp; echo Download || echo Update"/>
<script>
echo "Downloading..."
wget -q https://github.com/kakathic/Tool-Terminal/raw/master/Module/jadxxx.zip2 -O $TMPDIR/modun.zip 2>/dev/null
unzip -oq $TMPDIR/modun.zip -d $MODULE_PATH
rm -fr $TMPDIR/modun.zip
</script>
</action>
</group>

