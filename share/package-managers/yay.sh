#!/bin/bash

# Copyright (C) 2017-2018 Andrei Pavel, andrei.pavel@cti.pub.ro
# Licensed under the MIT License

source_files=""
config="${HOME}/.config/curate-pkg/pacman.yaml"

function check_package_ {
  local package="${1}"
  pacman -Qi "${package}" || pacman -Qg "${package}"
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
  yay -Syy --aur --force --needed --noconfirm "${package}"
  return "${?}"
}

function purge_ {
  local package="${1}"
  yay -Rsc --noconfirm "${package}"
  return "${?}"
}

function update_ {
  yay -U --aur --force --needed --noconfirm
  return "${?}"
}

function upgrade_ {
  if [[ ${#} -eq 0 ]]; then
    yay -Su --aur --force --needed --noconfirm
    return "${?}"
  fi

  local package="${1}"
  yay -Su --force --needed --noconfirm "${package}"
  return "${?}"
}

function autoremove_ {
  to_be_removed=$(yay -Qtd --aur --noconfirm 2>&1 | cut -d ' ' -f 1 | cut -d '/' -f 2 | head -n -3)
  if [[ ! -z ${to_be_removed} ]]; then
    echo "${to_be_removed}" | xargs yay -Rsc --noconfirm
  fi
  return "${?}"
}

function upgrade_os_ {
  true
  return "${?}"
}

function manual_install_ {
  local package="${1}"
  yay -Sq --force --noconfirm "${package}"
  return "${?}"
}

