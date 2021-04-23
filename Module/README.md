
<group>
<action warning="Do you want to download it?" auto-off="true" reload="true" visible="[ -e $MODULE_PATH/jd-cli-111 ] &amp;&amp; echo 0 || echo 1">
<title>Jd-cli decompiler</title>
<desc>Java jd-cli decompiler tool, Class to java</desc>
<summary sh="echo Download"/>
<script>
wget -q https://github.com/kakathic/Tool-Terminal/raw/master/Module/jd-cli-111.zip2 -O $TMPDIR/modun.zip 2>/dev/null
unzip -oq $TMPDIR/modun.zip -d $START_DIR/data/module
rm -fr $TMPDIR/modun.zip
</script>
</action>
</group>

<group>
<action warning="Do you want to download it?" auto-off="true" reload="true" visible="[ -e $MODULE_PATH/cfr-111 ] &amp;&amp; echo 0 || echo 1">
<title>Cfr decompiler</title>
<desc>Java cfr decompiler tool, Class to java</desc>
<summary sh="echo Download"/>
<script>
wget -q https://github.com/kakathic/Tool-Terminal/raw/master/Module/cfr-111.zip2 -O $TMPDIR/modun.zip 2>/dev/null
unzip -oq $TMPDIR/modun.zip -d $START_DIR/data/module
rm -fr $TMPDIR/modun.zip
</script>
</action>
</group>
