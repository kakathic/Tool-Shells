
<text/>
<text>
<slice color="#1CA4FF" size="20">Online</slice>
</text>

<group>
<action reload="true" visible="[ -e $MODULE_PATH/jd-cli-111 ] &amp;&amp; echo 0 || echo 1">
<title>Jd-cli decompiler</title>
<desc>Download Java jd-cli decompiler tool, Class to java</desc>
<script>
curl -Ls https://github.com/kakathic/Tool-Tool/raw/master/Module/jd-cli-111.zip2 -o $TMPDIR/modun.zip
unzip -oq $TMPDIR/modun.zip -d $START_DIR/data/module
</script>
</action>
</group>

<group>
<action reload="true" visible="[ -e $MODULE_PATH/cfr-111 ] &amp;&amp; echo 0 || echo 1">
<title>Cfr decompiler</title>
<desc>Download Java cfr decompiler tool, Class to java</desc>
<script>
curl -Ls https://github.com/kakathic/Tool-Tool/raw/master/Module/cfr-111.zip2 -o $TMPDIR/modun.zip
unzip -oq $TMPDIR/modun.zip -d $START_DIR/data/module
</script>
</action>
</group>
