# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

Personal dotfiles for macOS managed with [GNU stow](https://www.gnu.org/software/stow/). Each top-level directory is a stow package that maps its contents to `$HOME` via symlinks.

## Setup Commands

```bash
# Clone with submodules
git clone --recurse-submodules git@github.com:sunpech/dotfiles.git
mv dotfiles ~/.dotfiles
cd ~/.dotfiles

# Symlink all configs
stow zsh ohmyzsh alacritty powerlevel10k nvim vim git wezterm

# Update submodules after pulling
git submodule update --remote --merge
```

## Repository Structure

Each directory is a stow package — files inside mirror the path structure relative to `$HOME`:

- `zsh/` — `.zprofile` (sets up Homebrew PATH)
- `bash/` — `.bash_profile`, `.bash_aliases`, `.bash_colors`, `.aliases`
- `git/` — `.gitignore_global`
- `git-misc/` — git completion and prompt scripts (bash/zsh)
- `nvim/` — Neovim config using [LazyVim](https://lazyvim.github.io/) starter template
- `vim/` — Vim config with Pathogen plugin manager and a large collection of color schemes
- `alacritty/` — Alacritty terminal config; uses `github_dark` theme from the alacritty-theme submodule
- `powerlevel10k/` — `.p10k.zsh` powerlevel10k prompt config
- `ohmyzsh/` — oh-my-zsh installation (git submodule)
- `wezterm/` — WezTerm terminal config

## Submodules

Two git submodules are included:
1. `ohmyzsh/.ohmyzsh` — [ohmyzsh/ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)
2. `alacritty/.config/alacritty/themes` — [alacritty/alacritty-theme](https://github.com/alacritty/alacritty-theme)

## Key Details

- **Shell**: zsh (primary), bash configs retained but no longer actively used
- **Prompt**: powerlevel10k theme via oh-my-zsh
- **Neovim**: LazyVim-based; add plugins in `nvim/.config/nvim/lua/plugins/`; `example.lua` is disabled by default (`if true then return {} end`)
- **Font**: MesloLGS Nerd Font Mono (required for powerlevel10k glyphs and alacritty)
- **Alacritty**: opacity 0.7, blur enabled, `option_as_alt = "Both"`, `github_dark` theme
- **git status alias**: `gst` runs `git status --ignore-submodules` to avoid noise from the ohmyzsh submodule
