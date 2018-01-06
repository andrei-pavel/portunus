#!/bin/bash

# Copyright (C) 2017-2018 Andrei Pavel, andrei.pavel@cti.pub.ro
# Licensed under the MIT License

source_files=
config="${HOME}/.config/curate-pkg/dnf.json"
check_package="false"
add_key=":"
add_repository=":"
add_source=":"
cleanup_added_sources=":"
install="dnf install -y"
purge="dnf remove -y"
update="dnf update -y"
upgrade="dnf dist-upgrade -y"
autoremove="dnf autoremove -y"
upgrade_os=":"
manual_install=":"

