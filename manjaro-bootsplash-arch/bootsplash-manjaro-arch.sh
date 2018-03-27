#!/bin/bash
#
# A simple script to show how to create a bootsplash.
# Do with it whatever you wish.
#
# This needs ImageMagick for the 'convert' and 'identify' tools.
#

LOGO=arch.png
LOGO_WIDTH=$(identify $LOGO | cut -d " " -f 3 | cut -d x -f 1)
LOGO_HEIGHT=$(identify $LOGO | cut -d " " -f 3 | cut -d x -f 2)

THROBBER=spinner.gif
THROBBER_WIDTH=$(identify $THROBBER | head -1 | cut -d " " -f 3 | \
						cut -d x -f 1)
THROBBER_HEIGHT=$(identify $THROBBER | head -1 | cut -d " " -f 3 | \
						 cut -d x -f 2)

convert -alpha remove \
	-background "#000000" \
	$LOGO \
	logo.rgb

convert -alpha remove \
	-background "#000000" \
	$THROBBER \
	throbber%02d.rgb


#make clean
#make bootsplash-packer


# Let's put Tux in the center of an orange background.
./bootsplash-packer \
	--bg_red 0x00 \
	--bg_green 0x00 \
	--bg_blue 0x00 \
	--frame_ms 48 \
	--picture \
	--pic_width $LOGO_WIDTH \
	--pic_height $LOGO_HEIGHT \
	--pic_position 0 \
	--blob logo.rgb \
	--picture \
	--pic_width $THROBBER_WIDTH \
	--pic_height $THROBBER_HEIGHT \
	--pic_position 0x05 \
	--pic_position_offset 200 \
	--pic_anim_type 1 \
	--pic_anim_loop 0 \
	--blob throbber00.rgb \
	--blob throbber01.rgb \
	--blob throbber02.rgb \
	--blob throbber03.rgb \
	--blob throbber04.rgb \
	--blob throbber05.rgb \
	--blob throbber06.rgb \
	--blob throbber07.rgb \
	--blob throbber08.rgb \
	--blob throbber09.rgb \
	--blob throbber10.rgb \
	--blob throbber11.rgb \
	--blob throbber12.rgb \
	--blob throbber13.rgb \
	--blob throbber14.rgb \
	--blob throbber15.rgb \
	--blob throbber16.rgb \
	--blob throbber17.rgb \
	--blob throbber18.rgb \
	--blob throbber19.rgb \
	--blob throbber20.rgb \
	--blob throbber21.rgb \
	--blob throbber22.rgb \
	--blob throbber23.rgb \
	--blob throbber24.rgb \
	--blob throbber25.rgb \
	--blob throbber26.rgb \
	--blob throbber27.rgb \
	--blob throbber28.rgb \
	--blob throbber29.rgb \
	--blob throbber30.rgb \
	--blob throbber31.rgb \
	--blob throbber32.rgb \
	--blob throbber33.rgb \
	--blob throbber34.rgb \
	--blob throbber35.rgb \
	--blob throbber36.rgb \
	--blob throbber37.rgb \
	--blob throbber38.rgb \
	--blob throbber39.rgb \
	--blob throbber40.rgb \
	--blob throbber41.rgb \
	--blob throbber42.rgb \
	--blob throbber43.rgb \
	--blob throbber44.rgb \
	--blob throbber45.rgb \
	--blob throbber46.rgb \
	--blob throbber47.rgb \
	--blob throbber48.rgb \
	--blob throbber49.rgb \
	--blob throbber50.rgb \
	--blob throbber51.rgb \
	--blob throbber52.rgb \
	--blob throbber53.rgb \
	--blob throbber54.rgb \
	--blob throbber55.rgb \
	--blob throbber56.rgb \
	--blob throbber57.rgb \
	--blob throbber58.rgb \
	--blob throbber59.rgb \
	--blob throbber60.rgb \
	--blob throbber61.rgb \
	--blob throbber62.rgb \
	--blob throbber63.rgb \
	--blob throbber64.rgb \
	--blob throbber65.rgb \
	--blob throbber66.rgb \
	--blob throbber67.rgb \
	--blob throbber68.rgb \
	--blob throbber69.rgb \
	--blob throbber70.rgb \
	--blob throbber71.rgb \
	--blob throbber72.rgb \
	--blob throbber73.rgb \
	--blob throbber74.rgb \
	bootsplash-manjaro-arch

rm *.rgb
