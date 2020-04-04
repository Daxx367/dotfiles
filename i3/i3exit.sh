#!/bin/sh

# Link to original: https://faq.i3wm.org/question/239/how-do-i-suspendlockscreen-and-logout.1.html

lock() {
    /bin/bash $HOME/.config/i3/daxx367lock.sh 
}

case "$1" in
    lock)
        lock
        ;;
    logout)
        i3-msg exit
        ;;
    suspend)
        lock && systemctl suspend
        ;;
    hibernate)
        lock && systemctl hibernate
        ;;
    reboot)
        systemctl reboot
        ;;
    shutdown)
        systemctl poweroff
        ;;
    *)
        echo "Usage: $0 {lock|logout|suspend|hibernate|reboot|shutdown}"
        exit 2
esac

exit 0