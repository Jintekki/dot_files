#!/usr/bin/env bash
#                   _ _ _ _  _ _ _
#       | | |     |    |    |      |    | |    | |
#       | | |\    |    |    |      |   /  |   /  |
#       | | |  \  |    |    |-     |\/    |\/    |
# |     | | |    \|    |    |      |  \   |  \   |
#  \ _ /  | |     |    |    |_ _ _ |    \ |    \ |
#
## Original Author  : Aditya Shakya
## Mail    : adi1090x@gmail.com
## Github  : @adi1090x
## Twitter : @adi1090x

# Available Styles
# >> Created and tested on : rofi 1.6.0-1
#
# style_1     style_2     style_3     style_4     style_5     style_6
# style_7     style_8     style_9     style_10    style_11    style_12

theme="style_8"
dir="$HOME/.config/rofi/launchers/colorful"

# dark
ALPHA="#00000000"
BG="#000000ff"
FG="#FFFFFFff"
SELECT="#101010ff"

# light
#ALPHA="#00000000"
#BG="#FFFFFFff"
#FG="#000000ff"
#SELECT="#f3f3f3ff"

# accent colors
COLORS=('#fd6883' '#adda78' '#f9cc6c' '#f38d70' '#a8a9eb' '#85dacc')
ACCENT="${COLORS[$(( $RANDOM % 6 ))]}ff"

# overwrite colors file
cat > $dir/colors.rasi <<- EOF
	/* colors */

	* {
	  al:  $ALPHA;
	  bg:  #2d2a2eff;
	  se:  #2d2a2eff;
	  fg:  #fff1f3ff;
	  ac:  $ACCENT;
	}
EOF

# comment these lines to disable random style
# themes=($(ls -p --hide="launcher.sh" --hide="colors.rasi" $dir))
# theme="${themes[$(( $RANDOM % 12 ))]}"

rofi -no-lazy-grab -show drun -modi drun -theme $dir/"$theme"
