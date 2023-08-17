uptime = $(uptime | awk '{print $3}')
numWeeks=2
numMinutesInOneWeek=$((1 * 7 * 24 * 60))

if [ "$uptime" -gt "$((numWeeks * numMinutesInOneWeek))" ]
then
    echo "Rebooting"
    sudo reboot
else
    echo "No need to reboot..."
fi


