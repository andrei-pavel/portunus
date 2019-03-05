#!/bin/bash

# Copyright (C) 2017-2018 Andrei Pavel, andrei.pavel@cti.pub.ro
# Licensed under the MIT License

source_files=""
config="${HOME}/.config/portunus/snap.yaml"

function check_package_ {
  local package="${1}"
  false
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
  snap install "${package}"
  return "${?}"
}

function purge_ {
  local package="${1}"
  true
  return "${?}"
}

function update_ {
  snap refresh
  return "${?}"
}

function upgrade_ {
  if [[ ${#} -eq 0 ]]; then
    snap refresh
    return "${?}"
  fi

  local package="${1}"
  snap refresh "${package}"
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

