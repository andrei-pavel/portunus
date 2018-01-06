#!/bin/bash

# Copyright (C) 2017 Andrei Pavel, andrei.pavel@cti.pub.ro
# Licensed under the MIT License

source_files=""
config="${HOME}/.config/curate-pkg/eopkg.json"
check_package="eopkg info " # needs grep 'Installed package'
add_key=":"
add_repository="eopkg add-repo -y"
add_source=":"
cleanup_added_sources=":"
install="eopkg install -y"
purge="eopkg remove -y"
update="eopkg update-repo -y"
upgrade="eopkg upgrade -y"
autoremove=":"
upgrade_os=":"
manual_install=":"

