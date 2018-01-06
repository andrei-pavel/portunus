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
install="yaourt -S --force --noconfirm"
purge="yaourt -R --force --noconfirm"
update="yaourt -U --force --noconfirm"
upgrade="yaourt -U --force --noconfirm"
autoremove=":"
upgrade_os=":"
manual_install="yaourt -Syu --aur --force --noconfirm"

