#!/bin/bash

# fail on error
set -e

# message
echo "Initializing /etc/update-motd.d structure.."

# move old motd if exists
if [ -f /etc/motd ]; then
    mv /etc/motd /etc/motd.old
fi

# motd is already a symlink ?
if [ -L /etc/motd ]; then
    rm /etc/motd
fi

# create motd symlink
ln -s /run/motd /etc/motd

# create update-motd.d directory
if [ ! -d /etc/update-motd.d/ ]; then
    mkdir /etc/update-motd.d
fi

# symlink already exists ?
if [ ! -L /etc/update-motd.d/11-sysinfo ]; then
    # link update-motd to binary
    ln -s /usr/bin/motd-sysinfo /etc/update-motd.d/11-sysinfo
fi

echo "READY"