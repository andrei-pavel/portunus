#!/bin/bash

# Copyright (C) 2017-2018 Andrei Pavel, andrei.pavel@cti.pub.ro
# Licensed under the MIT License

source_files=""
config="${HOME}/.config/curate-pkg/npm.yaml"

function check_package_ {
  local package="${1}"
  npm list -g "${package}"
  return "${?}"
}

function add_key_ {
  local key="${1}"
  true
  return "${?}"
}

function add_repository_ {
  local repository="${1}"
  true
  return "${?}"
}

function add_source_ {
  local source="${1}"
  true
  return "${?}"
}

function cleanup_added_sources_ {
  true
  return "${?}"
}

function install_ {
  local package="${1}"
  npm install -g "${package}"
  return "${?}"
}

function purge_ {
  local package="${1}"
  npm uninstall -g "${package}"
  return "${?}"
}

function update_ {
  true
  return "${?}"
}

function upgrade_ {
  if [[ ${#} -eq 0 ]]; then
    npm update -g
    return "${?}"
  fi

  local package="${1}"
  npm update -g "${package}"
  return "${?}"
}

function autoremove_ {
  true
  return "${?}"
}

function upgrade_os_ {
  true
  return "${?}"
}

function manual_install_ {
  true
  return "${?}"
}

