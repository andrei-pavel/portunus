#!/bin/bash

# Copyright (C) 2017 Andrei Pavel, andrei.pavel@cti.pub.ro
# Licensed under the MIT License

source_files=""
config="${home}/.config/curate-pkg/npm.json"
check_package="npm list -g"
add_key=":"
add_repository=":"
add_source=":"
cleanup_added_sources=":"
install="npm install -g"
purge=":"
update="npm update -g"
upgrade=":"
autoremove=":"
upgrade_os=":"
manual_install=":"

