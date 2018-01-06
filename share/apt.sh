#!/bin/bash

# Copyright (C) 2017 Andrei Pavel, andrei.pavel@cti.pub.ro
# Licensed under the MIT License

mkdir --parents "/etc/apt/sources.list.d"
source_files="$(find /etc/apt/sources.list.d -type f)"
config="${HOME}/.config/curate-pkg/apt.json"
check_package="dpkg-query -L"
add_key="apt-key add"
add_repository="apt-add-repository -y"
add_source=">> /etc/apt/sources.list.d/curate-pkg.list echo"
cleanup_added_sources="rm -f /etc/apt/sources.list.d/curate-pkg.list"
install="apt-get install -y"
purge="apt-get purge -y"
update="apt-get update -y"
upgrade="apt-get dist-upgrade -y"
autoremove="apt-get autoremove -y"
upgrade_os="do-release-upgrade"
manual_install="dpkg --install"

