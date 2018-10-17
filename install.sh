#!/bin/bash

# fail on error
set -e

# message
echo "Initializing /etc/update-motd.d structure.."

# create update-motd.d directory
if [ ! -d /etc/update-motd.d/ ]; then
    mkdir /etc/update-motd.d
fi

# symlink already exists ?
if [ ! -L /etc/update-motd.d/11-sysinfo ]; then
    # link update-motd to binary
    ln -s /usr/bin/motd-sysinfo /etc/update-motd.d/11-sysinfo
fi