#!/bin/bash

# Copyright (C) 2017-2018 Andrei Pavel, andrei.pavel@cti.pub.ro
# Licensed under the MIT License

source_files=""
config="${HOME}/.config/curate-pkg/pacman.yaml"
check_package="pacman -Qi"
add_key=":"
add_repository=":"
add_source=":"
cleanup_added_sources=":"
install="pacman -Syuq --force --needed --noconfirm"
purge="pacman -Rsc --force --noconfirm"
update="pacman -Syuq --force --needed --noconfirm"
upgrade="pacman -Syuq --force --needed --noconfirm"
autoremove=":"
upgrade_os=":"
manual_install="pacman -Sq --force --noconfirm"

