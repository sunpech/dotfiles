# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

Personal dotfiles for macOS managed with [GNU stow](https://www.gnu.org/software/stow/). Each top-level directory is a stow package that maps its contents to `$HOME` via symlinks.

## Setup Commands

```bash
git clone git@github.com:sunpech/dotfiles.git
mv dotfiles ~/.dotfiles
cd ~/.dotfiles

# Symlink all configs
stow zsh powerlevel10k starship nvim vim git wezterm ghostty
```

## Repository Structure

Each directory is a stow package — files inside mirror the path structure relative to `$HOME`:

- `zsh/` — `.zprofile` (sets up Homebrew PATH)
- `bash/` — `.bash_profile`, `.bash_aliases`, `.bash_colors`, `.aliases`
- `git/` — `.gitignore_global`
- `git-misc/` — git completion and prompt scripts (bash/zsh)
- `nvim/` — Neovim config using [LazyVim](https://lazyvim.github.io/) starter template
- `vim/` — Vim config with Pathogen plugin manager and a large collection of color schemes
- `powerlevel10k/` — `.p10k.zsh` powerlevel10k prompt config
- `starship/` — `.config/starship.toml` Starship prompt config (Google-color powerline theme)
- `wezterm/` — WezTerm terminal config
- `ghostty/` — Ghostty terminal config

## Key Details

- **Shell**: zsh (primary), bash configs retained but no longer actively used
- **Prompt**: Starship (active) or powerlevel10k — both installed via Homebrew; p10k is commented out in `.zshrc` while testing Starship
- **Neovim**: LazyVim-based; add plugins in `nvim/.config/nvim/lua/plugins/`; `example.lua` is disabled by default (`if true then return {} end`)
- **Font**: MesloLGS Nerd Font Mono (required for powerlevel10k glyphs)
- **Ghostty**: JetBrainsMono Nerd Font, opacity 0.9, blur enabled, `Dark+` theme
