#!/usr/bin/env bash
echo "---WELCOME---"
echo "Choose one of the items below"
echo "1-Creating 5 text files"
echo "2-Adding \"Hello worlds\" to each file"
echo "3-Replacing \"World\" with \"bash\""
echo "4-Exit"

while :; do
  read choice
  case $choice in
  1)
    touch file-{1..5}.txt
    for FILE in *; do echo "$FILE"; done
    ;;
  2)
    for FILE in *; do echo -e "$FILE\nHello World" > "$FILE"; done
    for FILE in *; do cat "$FILE"; done
    ;;

  3)
    TEXT="World"
    for FILE in *.txt; do
      sed "s/$TEXT/bash/g" "$FILE" > "$FILE.tmp"
      mv "$FILE.tmp" "$FILE"
    done
    echo "Replaced 'World' with 'bash' in each file."
    ;;

  4)
    echo "Exiting the script..."
    exit 0
    ;;
  esac
done
