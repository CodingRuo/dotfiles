#!/usr/bin/env bash
set -euo pipefail

repo_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
config_dir="${XDG_CONFIG_HOME:-$HOME/.config}"
target="$config_dir/nvim"

mkdir -p "$config_dir"
if [ -L "$target" ] && [ "$(readlink "$target")" = "$repo_dir/nvim" ]; then
  echo "Neovim ist bereits mit diesem Repo verknüpft."
  exit 0
fi
if [ -e "$target" ] || [ -L "$target" ]; then
  backup_dir="$(mktemp -d "$config_dir/nvim.backup.XXXXXXXX")"
  mv "$target" "$backup_dir/nvim"
  echo "Vorhandene Konfiguration gesichert: $backup_dir/nvim"
fi
ln -s "$repo_dir/nvim" "$target"
echo "Installiert: $target -> $repo_dir/nvim"
echo "Starte nvim, um die Plugins zu installieren."
