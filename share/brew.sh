#!/bin/bash

# Copyright (C) 2018 Andrei Pavel, andrei.pavel@cti.pub.ro
# Licensed under the MIT License

source_files=""
config="${HOME}/.config/curate-pkg/brew.json"
check_package="brew ls --versions"
add_key=":"
add_repository=":"
add_source=":"
cleanup_added_sources=":"
install="brew install -y"
purge="brew remove"
update="brew update"
upgrade="brew upgrade"
autoremove=":"
upgrade_os=":"
manual_install=":"

