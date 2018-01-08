#!/bin/bash

# Copyright (C) 2017-2018Andrei Pavel, andrei.pavel@cti.pub.ro
# Licensed under the MIT License

source_files=""
config="${HOME}/.config/curate-pkg/pacman.yaml"
check_package="pacman -Qi"
add_key=":"
add_repository=":"
add_source=":"
cleanup_added_sources=":"
install="pacman -Syuq --force --noconfirm"
purge="pacman -Rsc --force --noconfirm"
update="pacman -Syuq --force --noconfirm"
upgrade="pacman -Syuq --force --noconfirm"
autoremove=":"
upgrade_os=":"
manual_install="pacman -Sq --force --noconfirm"

