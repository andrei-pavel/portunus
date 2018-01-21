#!/bin/bash

# Copyright (C) 2017-2018 Andrei Pavel, andrei.pavel@cti.pub.ro
# Licensed under the MIT License

mkdir --parents "/etc/apt/sources.list.d"

source_files="$(find /etc/apt/sources.list.d -type f)"
config="${HOME}/.config/curate-pkg/apt.yaml"

function check_package_() {
  local package="${1}"
  dpkg-query -L "${package}"
  return "${?}"
}

function add_key_() {
  local key="${1}"
  apt-key add "${key}"
  return "${?}"
}

function add_repository_() {
  local repository="${1}"
  apt-add-repository -y "${repository}"
  return "${?}"
}

function add_source_() {
  local source="${1}"
  printf "${source}\n" >> /etc/apt/sources.list.d/curate-pkg.list
  return "${?}"
}

function cleanup_added_sources_() {
  rm -f /etc/apt/sources.list.d/curate-pkg.list
  return "${?}"
}

function install_() {
  local package="${1}"
  apt-get install -y "${package}"
  return "${?}"
}

function purge_() {
  local package="${1}"
  apt-get purge -y "${package}"
  return "${?}"
}

function update_() {
  apt-get update -y
  return "${?}"
}

function upgrade_() {
  if [[ ${#} -eq 0 ]]; then
    apt-get dist-upgrade -y
    return "${?}"
  fi

  local package="${1}"
  apt-get dist-upgrade -y "${package}"
  return "${?}"
}

function autoremove_() {
  apt-get autoremove -y
  return "${?}"
}

function upgrade_os_() {
  do-release-upgrade
  return "${?}"
}

function manual_install_() {
  local package="${1}"
  dpkg --install "${package}"
  return "${?}"
}

