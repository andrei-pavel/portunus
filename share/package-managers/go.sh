#!/bin/bash

# Copyright (C) 2017-2018 Andrei Pavel, andrei.pavel@cti.pub.ro
# Licensed under the MIT License

source_files=""
config="${HOME}/.config/portunus/go.yaml"

function check_package_ {
  local package="${1}"
  go list ... | grep "${package}"
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
  go get -u "${package}"
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
  go get -u "${package}"
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

