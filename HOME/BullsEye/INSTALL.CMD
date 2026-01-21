# Install.cmd script for BullsEye
#
################################################################################
#
#  $Revision: 1.0 $
#
# MODIFICATIONS
#
# Revision 1.0	2004/08/18 Initial revision

echo -text "Installing BullsEye 10.0..."
# Load images...
ifvc -label VCIMAGES
copy -from $BOOTPATH/Options/BullsEye/Images/BERefPosSmall.jpg -to $RELEASE/options/arc/ArcBase/tps/BERefPosSmall.jpg 
copy -from $BOOTPATH/Options/BullsEye/Images/BEStartPosSmall.jpg -to $RELEASE/options/arc/ArcBase/tps/BEStartPosSmall.jpg 
goto -label INSTLANG
#VCIMAGES
copy -from $BOOTPATH/Options/BullsEye/Images/BERefPosSmall.jpg -to $RELEASE/vcbin/BERefPosSmall.jpg 
copy -from $BOOTPATH/Options/BullsEye/Images/BEStartPosSmall.jpg -to $RELEASE/vcbin/BEStartPosSmall.jpg 

#INSTLANG
# Language file for textstrings
setstr -strvar $TMP_GAP -value $BOOTPATH
setstr -strvar $BOOTPATH -value "$TMP_GAP/Options/BullsEye"
include -path "$RELEASE/system/instlang.cmd"
setstr -strvar $BOOTPATH -value "$TMP_GAP"

register -type elogmes -domain_no 11 -min 1500 -max 1549 -prepath $BOOTPATH/Options/BullsEye/language/ -postpath /be_elogtext.xml

config -filename $BOOTPATH/Options/BullsEye/Config/sysBullsEye_shared.cfg -domain SYS -replace -internal
config -filename $BOOTPATH/Options/BullsEye/Config/mmcBullsEye.cfg -domain MMC -replace -internal

#
setvar -var 75 -value 0
getkey -id "ProductionMonitoring" -var 10 -strvar $ANSWER -errlabel CONTINUE
goto -strvar $ANSWER
#YES
setvar -var 75 -value 10
config -filename $BOOTPATH/Options/BullsEye/Config/mmcPM_BE.cfg -domain MMC -replace -internal
#CONTINUE


setvar -var 10 -value 0
getkey -id "ProcessType" -var 10 -strvar $ANSWER -errlabel SINGLE_ARC
goto -strvar $ANSWER


#SIPROC

# -id TaskS1 -key SROB1
#BE_S_ROB1
setvar -var 10 -value 0
getkey -id "TaskS1" -var 10 -strvar $ANSWER -errlabel NO_BE_S_ROB1

# Test if drivemodule key is present for ROB1
setvar -var 10 -value 0
getkey -id "Irb1" -var 10 -strvar $ANSWER -errlabel NO_BE_S_ROB1

echo -text "--> Installing BullsEye in ROB1"
config -filename $BOOTPATH/Options/BullsEye/Config/sysBullsEye_1.cfg -domain SYS -replace -internal
#
if -var 75 -value 10 -label PRMO
goto -label CONTINUE
#PRMO
config -filename $BOOTPATH/Options/BullsEye/config/sysPM_BE_1.cfg -domain SYS -replace -internal 
#CONTINUE
#
goto -label END_LABEL

#NO_BE_S_ROB1
goto -label BE_S_ROB2


# -id TaskS2 -key YES
#BE_S_ROB2
setvar -var 10 -value 0
getkey -id "TaskS2" -var 10 -strvar $ANSWER -errlabel NO_BE_S_ROB2

# Test if drivemodule key is present for ROB2
setvar -var 10 -value 0
getkey -id "Irb2" -var 10 -strvar $ANSWER -errlabel NO_BE_S_ROB2

echo -text "--> Installing BullsEye in ROB2"
config -filename $BOOTPATH/Options/BullsEye/Config/sysBullsEye_2.cfg -domain SYS -replace -internal
#
if -var 75 -value 10 -label PRMO
goto -label CONTINUE
#PRMO
config -filename $BOOTPATH/Options/BullsEye/config/sysPM_BE_2.cfg -domain SYS -replace -internal 
#CONTINUE
#
goto -label END_LABEL

#NO_BE_S_ROB2
goto -label BE_S_ROB3


# -id TaskS3 -key YES
#BE_S_ROB3
setvar -var 10 -value 0
getkey -id "TaskS3" -var 10 -strvar $ANSWER -errlabel NO_BE_S_ROB3

# Test if drivemodule key is present for ROB3
setvar -var 10 -value 0
getkey -id "Irb3" -var 10 -strvar $ANSWER -errlabel NO_BE_S_ROB3

echo -text "--> Installing BullsEye in ROB3"
config -filename $BOOTPATH/Options/BullsEye/Config/sysBullsEye_3.cfg -domain SYS -replace -internal
#
if -var 75 -value 10 -label PRMO
goto -label CONTINUE
#PRMO
config -filename $BOOTPATH/Options/BullsEye/config/sysPM_BE_3.cfg -domain SYS -replace -internal 
#CONTINUE
#
goto -label END_LABEL

#NO_BE_S_ROB3
goto -label BE_S_ROB4


# -id TaskS4 -key YES
#BE_S_ROB4
setvar -var 10 -value 0
getkey -id "TaskS4" -var 10 -strvar $ANSWER -errlabel NO_BE_S_ROB4

# Test if drivemodule key is present for ROB4
setvar -var 10 -value 0
getkey -id "Irb4" -var 10 -strvar $ANSWER -errlabel NO_BE_S_ROB4

echo -text "--> Installing BullsEye in ROB4"
config -filename $BOOTPATH/Options/BullsEye/Config/sysBullsEye_4.cfg -domain SYS -replace -internal
#
if -var 75 -value 10 -label PRMO
goto -label CONTINUE
#PRMO
config -filename $BOOTPATH/Options/BullsEye/config/sysPM_BE_4.cfg -domain SYS -replace -internal 
#CONTINUE
#
goto -label END_LABEL

#NO_BE_S_ROB4
goto -label END_LABEL

#MUPROC

#BE_ROB1
setvar -var 10 -value 0
getkey -id "AwTask1" -var 10 -strvar $ANSWER -errlabel BE_ROB2
goto -strvar $ANSWER
#MROB1
echo -text "--> Installing BullsEye in ROB1"
config -filename $BOOTPATH/Options/BullsEye/Config/sysBullsEye_1.cfg -domain SYS -replace -internal
#
if -var 75 -value 10 -label PRMO
goto -label CONTINUE
#PRMO
config -filename $BOOTPATH/Options/BullsEye/config/sysPM_BE_1.cfg -domain SYS -replace -internal 
#CONTINUE
#

#BE_ROB2
setvar -var 10 -value 0
getkey -id "AwTask2" -var 10 -strvar $ANSWER -errlabel BE_ROB3
goto -strvar $ANSWER
#YES
echo -text "--> Installing BullsEye in ROB2"
config -filename $BOOTPATH/Options/BullsEye/Config/sysBullsEye_2.cfg -domain SYS -replace -internal
#
if -var 75 -value 10 -label PRMO
goto -label CONTINUE
#PRMO
config -filename $BOOTPATH/Options/BullsEye/config/sysPM_BE_2.cfg -domain SYS -replace -internal 
#CONTINUE
#

#BE_ROB3
setvar -var 10 -value 0
getkey -id "AwTask3" -var 10 -strvar $ANSWER -errlabel BE_ROB4
goto -strvar $ANSWER
#YES
echo -text "--> Installing BullsEye in ROB3"
config -filename $BOOTPATH/Options/BullsEye/Config/sysBullsEye_3.cfg -domain SYS -replace -internal
#
if -var 75 -value 10 -label PRMO
goto -label CONTINUE
#PRMO
config -filename $BOOTPATH/Options/BullsEye/config/sysPM_BE_3.cfg -domain SYS -replace -internal 
#CONTINUE
#

#BE_ROB4
setvar -var 10 -value 0
getkey -id "AwTask4" -var 10 -strvar $ANSWER -errlabel END_LABEL
goto -strvar $ANSWER
#YES
echo -text "--> Installing BullsEye in ROB4"
config -filename $BOOTPATH/Options/BullsEye/Config/sysBullsEye_4.cfg -domain SYS -replace -internal
#
if -var 75 -value 10 -label PRMO
goto -label CONTINUE
#PRMO
config -filename $BOOTPATH/Options/BullsEye/config/sysPM_BE_4.cfg -domain SYS -replace -internal 
#CONTINUE
#
goto -label END_LABEL

#SINGLE_ARC
echo -text "--> Installing BullsEye in ROB1"
config -filename $BOOTPATH/Options/BullsEye/Config/sysBullsEye_1.cfg -domain SYS -replace -internal
#
if -var 75 -value 10 -label PRMO
goto -label CONTINUE
#PRMO
config -filename $BOOTPATH/Options/BullsEye/config/sysPM_BE_1.cfg -domain SYS -replace -internal 
#CONTINUE
#
goto -label END_LABEL

#END_LABEL
echo -text "BullsEye installation complete."


