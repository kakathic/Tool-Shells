<?xml version="1.0" encoding="UTF-8" ?>

<group>
<page visible="[ -e $MODULE_PATH/jd-cli-111 ] &amp;&amp; echo 0 || echo 1"
config-sh="curl -Ls https://github.com/kakathic/Tool-Tool/raw/master/Module/jd-cli-111.zip2 -o $TMPDIR/modun.zip; unzip -oq $TMPDIR/modun.zip -d $START_DIR/data/module; sh $START_DIR/data/shell/modun.sh"
title="Download"
desc="Java jd-cli decompiler tool">
</page>
</group>

<group>
<page visible="[ -e $MODULE_PATH/cfr-111 ] &amp;&amp; echo 0 || echo 1"
config-sh="curl -Ls https://github.com/kakathic/Tool-Tool/raw/master/Module/cfr-111.zip2 -o $TMPDIR/modun.zip; unzip -oq $TMPDIR/modun.zip -d $START_DIR/data/module; sh $START_DIR/data/shell/modun.sh"
title="Download"
desc="Java cfr decompiler tool">
</page>
</group>
