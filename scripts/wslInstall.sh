#!/bin/sh

echo "User's Name in Windows"

cpath=$(pwd)
wpath="/mnt/c/Users/Jovic"

# Link Directories With Respect to XDG Dir
ln -s $wpath/Documents $HOME/Documents
ln -s $wpath/Downloads $HOME/Downloads
ln -s $wpath/Music $HOME/Music
ln -s $wpath/Pictures $HOME/Pictures
ln -s $wpath/Videos $HOME/Videos
ln -s $wpath/Desktop $HOME/Desktop
