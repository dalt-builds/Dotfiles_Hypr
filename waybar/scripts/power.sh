#!/bin/bash

option=$(echo -e "⏻ Apagar\n🔄 Reiniciar\n🌙 Suspender" | rofi -dmenu -i -p "Power")

case $option in
    "⏻ Apagar")
        systemctl poweroff
        ;;
    "🔄 Reiniciar")
        systemctl reboot
        ;;
    "🌙 Suspender")
        systemctl suspend
        ;;
esac
