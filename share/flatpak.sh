#!/bin/bash

# Copyright (C) 2017 Andrei Pavel, andrei.pavel@cti.pub.ro
# Licensed under the MIT License

source_files=""
config="${HOME}/.config/curate-pkg/flatpak.json"
check_package=":"
add_key=":"
add_repository=":"
add_source=":"
cleanup_added_sources=":"
install="flatpak install"
purge=":"
update="flatpak update"
upgrade=":"
autoremove=":"
upgrade_os=":"
manual_install=":"

