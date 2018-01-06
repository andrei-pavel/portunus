#!/bin/bash

# Copyright (C) 2018 Andrei Pavel, andrei.pavel@cti.pub.ro
# Licensed under the MIT License

source_files=""
config="${HOME}/.config/curate-pkg/nix.json"
check_package="false" # should be: `nix-env -qas {} | grep -E '^I'`, but command needs to be prefix so disable for now
add_key=":"
add_repository=":"
add_source=":"
cleanup_added_sources=":"
install="nix-env --install --non-interactive"
purge="nix-env --uninstall --non-interactive"
update="nix-env --update --non-interactive"
upgrade="nix-env --upgrade --non-interactive"
autoremove=":"
upgrade_os=":"
manual_install=":"

