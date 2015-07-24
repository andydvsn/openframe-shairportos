if [ $(tty) = /dev/tty1 ]; then
  xinit -- -nocursor &>/dev/null
fi
