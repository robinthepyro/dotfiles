#!/bin/bash

clipboard=false
region=false
while getopts ":cr" opt; do
case ${opt} in
    c)
        clipboard=true
    ;;
    r)
        region=true
    ;;
    h)
        echo "screenshot.sh usage:"
        echo "    -c : clipboard mode. Writes image to clipboard only, no file is created on disk."
        echo "    -r : select a region to screenshot."
    ;;
    ?)
        echo "Invalid option: -${OPTARG}."
        exit 1
    ;;
esac
done

command="grim"

if [ $region == true ]; then
    command+=" -g "
    command+="\"$(slurp -b 00000044 -c 000000cc)\""
fi 
if [ $clipboard == true ]; then
    command+=" - | wl-copy"
    success_message="Screenshot copied to clipboard"
else
    filename="~/Pictures/screenshots/$(date +%F_%T).png"
    command+=" $filename"
    success_message="Screenshot saved to $filename"
fi

echo $command
eval $command
notify-send "$success_message (probably)" -t 2500
