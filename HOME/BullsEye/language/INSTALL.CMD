fileexist -path $BOOTPATH/language/$LANG/bull_text.xml -label INSTALL_FILE
goto -label END
#INSTALL_FILE
echo -text "Installing bull_text.xml"
text -filename $BOOTPATH/language/$LANG/bull_text.xml -package $LANG
#END
