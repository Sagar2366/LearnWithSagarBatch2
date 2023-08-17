# needs to be fixed

diskInfo=$(df -H)
diskNames=($(echo "$diskInfo" | awk '{print $1}'))
capacities=($(echo "$diskInfo" | awk '{print $5}' | sed 's/%//'))

for ((i = 0; i < ${#diskNames[@]}; i++)); do
    diskName="${diskNames[i]}"
    capacity="${capacities[i]}"

    if [ "$capacity" -gt 75 ]; then
        echo "$diskName has exceeded 75% capacity" | mail -s "Disk Capacity Exceeded" feudalmagicite123@gmail.com
    fi
done