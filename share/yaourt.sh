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
install="yaourt -S --force --needed --noconfirm"
purge="yaourt -R --force --noconfirm"
update="yaourt -U --force --needed --noconfirm"
upgrade="yaourt -U --force --needed --noconfirm"
autoremove="yaourt -Qtd --force --noconfirm"
upgrade_os=":"
manual_install="yaourt -Syu --aur --force --noconfirm"

