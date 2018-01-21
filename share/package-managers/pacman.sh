#!/bin/bash

# Copyright (C) 2017-2018 Andrei Pavel, andrei.pavel@cti.pub.ro
# Licensed under the MIT License

source_files=""
config="${HOME}/.config/curate-pkg/pacman.yaml"

function check_package_() {
  local package="${1}"
  pacman -Qi "${package}" || pacman -Qg "${package}"
  return "${?}"
}

function add_key_ () {
  true
  return "${?}"
}

function add_repository_() {
  true
  return "${?}"
}

function add_source_() {
  true
  return "${?}"
}

function cleanup_added_sources_() {
  true
  return "${?}"
}

function install_() {
  local package="${1}"
  pacman -S --force --needed --noconfirm "${package}"
  return "${?}"
}

function purge_() {
  local package="${1}"
  pacman -Rsc --force --noconfirm "${package}"
  return "${?}"
}

function update_() {
  pacman -Syu --force --needed --noconfirm
  return "${?}"
}

function upgrade_() {
  if [[ ${#} -eq 0 ]]; then
    pacman -Su --force --needed --noconfirm
    return "${?}"
  fi

  local package="${1}"
  pacman -Su --force --needed --noconfirm "${package}"
  return "${?}"
}

function autoremove_() {
  true
  return "${?}"
}

function upgrade_os_() {
  true
  return "${?}"
}

function manual_install_() {
  local package="${1}"
  pacman -Sq --force --noconfirm "${package}"
  return "${?}"
}

