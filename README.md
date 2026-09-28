# dotfiles

Meine Neovim-Konfiguration auf Basis von LazyVim, für macOS und Linux.

## Auf dem Mac installieren

Voraussetzung: [Homebrew](https://brew.sh). Installiere außerdem Apples Command Line Tools mit `xcode-select --install`, falls sie fehlen, und warte, bis deren Installation fertig ist.

```sh
brew install neovim git ripgrep fd fzf lazygit node tree-sitter-cli
brew install --cask font-jetbrains-mono-nerd-font

git clone https://github.com/CodingRuo/dotfiles.git ~/dotfiles
cd ~/dotfiles
./install.sh
nvim
```

Wähle im Terminal die Schrift **JetBrainsMono Nerd Font**. Beim ersten Start lädt Neovim die Plugins herunter; dafür wird Internet benötigt. Bei einem privaten Repository musst du dich vor dem Klonen bei GitHub authentifizieren.

Das Skript verknüpft `nvim/` mit `${XDG_CONFIG_HOME:-$HOME/.config}/nvim`. Eine bestehende Konfiguration wird zuvor in ein ausgegebenes `nvim.backup.*`-Verzeichnis verschoben. Erneutes Ausführen ist sicher. Das Repo muss anschließend an seinem Platz bleiben.

Nach der Plugin-Installation kannst du mit `:checkhealth` die Umgebung prüfen und mit `:Mason` zusätzliche Sprachserver installieren. Die aktuellen Voraussetzungen stehen in der [LazyVim-Dokumentation](https://www.lazyvim.org/); Neovim ist über [Homebrew](https://formulae.brew.sh/formula/neovim) verfügbar.

## Enthalten

- LazyVim mit Neo-tree und vorhandener `lazy-lock.json`.
- Farbschema `retro-82`, als eigenständige Datei statt Omarchy-Symlink.
- Absolute Zeilennummern, Autoformat und Scroll-Animationen deaktiviert.
- Vorhandene Transparenz- und Theme-Einstellungen.
- Native macOS-Zwischenablage für lokale Sitzungen, OSC 52 für Remote-Sitzungen.

Die Konfiguration wurde von `~/.config/nvim` übernommen. Die laufende Linux-Konfiguration bleibt eine separate Kopie; spätere Änderungen dort müssen ins Repo übernommen werden. Omarchy ist auf dem Mac nicht erforderlich.

## Aktualisieren

```sh
cd ~/dotfiles
git pull
```

Mit `:Lazy restore` kannst du Plugin-Versionen aus der Lockdatei wiederherstellen. `:Lazy update` aktualisiert Plugins und die Lockdatei.

Die ursprüngliche LazyVim-Starter-Lizenz liegt unter `nvim/LICENSE`.
