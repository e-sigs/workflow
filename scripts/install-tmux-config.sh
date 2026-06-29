#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
source_path="${repo_root}/dotfiles/tmux.conf"
target_path="${HOME}/.tmux.conf"

if [[ ! -f "${source_path}" ]]; then
  echo "tmux config not found: ${source_path}" >&2
  exit 1
fi

if [[ -L "${target_path}" ]]; then
  current_target="$(readlink "${target_path}")"
  if [[ "${current_target}" == "${source_path}" ]]; then
    echo "tmux config is already linked: ${target_path} -> ${source_path}"
    exit 0
  fi

  echo "Removing existing tmux config symlink: ${target_path} -> ${current_target}"
  rm "${target_path}"
elif [[ -e "${target_path}" ]]; then
  backup_path="${target_path}.backup.$(date +%Y%m%d%H%M%S)"
  echo "Backing up existing tmux config to: ${backup_path}"
  mv "${target_path}" "${backup_path}"
fi

ln -s "${source_path}" "${target_path}"
echo "Linked tmux config: ${target_path} -> ${source_path}"

if command -v tmux >/dev/null 2>&1 && [[ -n "${TMUX:-}" ]]; then
  tmux source-file "${target_path}"
  echo "Reloaded tmux config in the active tmux session."
fi
