#!/bin/bash

# Copyright (C) 2018 Andrei Pavel, andrei.pavel@mail.com
# Licensed under the MIT License

source_files=""
config="${HOME}/.config/portunus/brew.yaml"

function check_package_ {
  local package="${1}"
  brew ls --versions "${package}"
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
  brew install -y  "${package}"
  return "${?}"
}

function purge_ {
  local package="${1}"
  brew purge "${package}"
  return "${?}"
}

function update_ {
  brew update
  return "${?}"
}

function upgrade_ {
  if [[ ${#} -eq 0 ]]; then
    brew upgrade
    return "${?}"
  fi

  local package="${1}"
  brew upgrade "${package}"
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
