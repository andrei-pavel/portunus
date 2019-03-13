#!/bin/bash

# Copyright (C) 2017-2018 Andrei Pavel, andrei.pavel@cti.pub.ro
# Licensed under the MIT License

source_files=""
config="${HOME}/.config/portunus/pip.yaml"

function check_package_ {
  local package="${1}"
  false "${package}"
  return "${?}"
}

function add_key_ {
  local key="${1}"
  true "${key}"
  return "${?}"
}

function add_repository_ {
  local repository="${1}"
  true "${repository}"
  return "${?}"
}

function add_source_ {
  local source="${1}"
  true "${source}"
  return "${?}"
}

function cleanup_added_sources_ {
  true
  return "${?}"
}

function install_ {
  local package="${1}"
  true "${package}"
  return "${?}"
}

function purge_ {
  true
  return "${?}"
}

function update_ {
  true
  return "${?}"
}

function upgrade_ {
  if [[ ${#} -eq 0 ]]; then
    true
    return "${?}"
  fi

  local package="${1}"
  true "${package}"
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
