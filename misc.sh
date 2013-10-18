# start and move terminal to second workspace
TERMINAL_TITLE="title"

gnome-terminal &

while true
  do
    string=`wmctrl -l 2>&1`
    if [[ $string =~ $TERMINAL_TITLE ]];then
      break
    fi
	done

wmctrl -r $TERMINAL_TITLE -t 1
wmctrl -r $TERMINAL_TITLE -b add,fullscreen
