#!/bin/bash

# Copyright (C) 2018 Andrei Pavel, andrei.pavel@cti.pub.ro
# Licensed under the MIT License

source_files=""
config="${HOME}/.config/curate-pkg/nix.yaml"

function check_package_ {
  local package="${1}"
  nix-env -qas "${package}" | grep -E '^I'
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
  nix-env --install --non-interactive "${package}"
  return "${?}"
}

function purge_ {
  local package="${1}"
  nix-env --uninstall --non-interactive "${package}"
  return "${?}"
}

function update_ {
  nix-env --update --non-interactive
  return "${?}"
}

function upgrade_ {
  if [[ ${#} -eq 0 ]]; then
    nix-env --upgrade --non-interactive
    return "${?}"
  fi

  local package="${1}"
  nix-env --upgrade --non-interactive "${package}"
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

