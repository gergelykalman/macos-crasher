#!/bin/bash

echo "Preparing"
rm -rf mnt
mkdir mnt
touch mnt/._a

echo "Creating disk"
hdiutil create -size 128m -fs MS-DOS disk -ov

echo "Attaching disk"
hdiutil attach disk.dmg -owners off -nomount

echo "(re)Mounting"
mount_msdos -o union /dev/disk4s1 mnt

echo "Triggering bug"
touch mnt/a

