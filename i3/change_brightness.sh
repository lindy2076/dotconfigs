FILE_PATH="/sys/class/backlight/amdgpu_bl0"

MAX_BR=$(cat $FILE_PATH/max_brightness)


STEP=$2
CURR_BR=$(cat $FILE_PATH/brightness)

if [ $1 = "+" ]; then
	echo "YES"
	NEW_BR=$(($CURR_BR + $STEP))
	if [ $NEW_BR -ge $MAX_BR ]; then
		echo "top perdel"
	else
		echo "ok"
		echo $NEW_BR > $FILE_PATH/brightness
	fi
else
	echo "NO"
	NEW_BR=$(($CURR_BR - $STEP))
	if [ $NEW_BR -le 0 ]; then
		echo "bottom perdel"
	else
		echo "ok"
		echo $NEW_BR > $FILE_PATH/brightness
	fi
fi

echo $NEW_BR

