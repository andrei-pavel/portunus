#!/bin/bash

# Copyright (C) 2017 Andrei Pavel, andrei.pavel@cti.pub.ro
# Licensed under the MIT License

source_files=""
config="${HOME}/.config/curate-pkg/pacman.json"
check_package="pacman -Qi"
add_key=":"
add_repository=":"
add_source=":"
cleanup_added_sources=":"
install="pacaur -S --noconfirm"
purge=":"
update="pacaur -u --noconfirm"
upgrade="pacaur -u --noconfirm"
autoremove=":"
upgrade_os=":"
manual_install=":"

