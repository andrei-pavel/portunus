#!/bin/bash

# Copyright (C) 2017-2018 Andrei Pavel, andrei.pavel@mail.com
# Licensed under the MIT License

source_files=""
config="${HOME}/.config/portunus/eopkg.yaml"

function check_package_ {
  local package="${1}"
  eopkg info | grep "${package}"
  return "${?}"
}

function add_key_ {
  local key="${1}"
  true
  return "${?}"
}

function add_repository_ {
  local repository="${1}"
  eopkg add-repo -y "${repository}"
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
  eopkg install -y "${package}"
  return "${?}"
}

function purge_ {
  local package="${1}"
  eopkg remove -y "${package}"
  return "${?}"
}

function update_ {
  eopkg update-repo -y
  return "${?}"
}

function upgrade_ {
  if [[ ${#} -eq 0 ]]; then
    eopkg upgrade -y
    return "${?}"
  fi

  local package="${1}"
  eopkg upgrade -y "${repository}"
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
