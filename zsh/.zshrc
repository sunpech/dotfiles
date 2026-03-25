# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# =============================================================================
# ENVIRONMENT VARIABLES
# =============================================================================
# Language
# export LANG=en_US.UTF-8
# Editor
export EDITOR="nvim"
# Compilation flags
# export ARCHFLAGS="-arch x86_64"
# =============================================================================
# PATH CONFIGURATION
# =============================================================================
# Use zsh path array to dedupe and control order
typeset -U path PATH
# 1. Homebrew - Manually check standard locations to avoid chicken-and-egg
if [[ -x "/opt/homebrew/bin/brew" ]]; then
  export HOMEBREW_PREFIX="/opt/homebrew"
elif [[ -x "/usr/local/bin/brew" ]]; then
  export HOMEBREW_PREFIX="/usr/local"
fi
# Add Homebrew bin/sbin to PATH if found
if [[ -n "$HOMEBREW_PREFIX" ]]; then
  path=("$HOMEBREW_PREFIX/bin" "$HOMEBREW_PREFIX/sbin" $path)
fi
# 2. Homebrew Python shims (so python3 is the brew one)
if [[ -d "$HOMEBREW_PREFIX/opt/python/libexec/bin" ]]; then
  path=("$HOMEBREW_PREFIX/opt/python/libexec/bin" $path)
fi
# 3. User Bins
path+=("$HOME/bin")
path+=("/usr/local/bin") # Legacy Fallback
# 4. Antigravity
export PATH="$HOME/.antigravity/antigravity/bin:$PATH"
# =============================================================================
# SHELL OPTIONS & HISTORY
# =============================================================================
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
# History settings
setopt share_history            # Share history between sessions (implies inc_append_history)
setopt hist_expire_dups_first   # Expire duplicates first when trimming
setopt hist_ignore_dups         # Ignore consecutive duplicates
setopt hist_ignore_space        # Don't save commands starting with space (useful for secrets)
setopt hist_reduce_blanks       # Strip extra blanks from history
setopt hist_verify              # Show command with history expansion to user before running
# Prevent zsh from setting the window/tab title
DISABLE_AUTO_TITLE="true"
unset zle_bracketed_paste
unset PROMPT_COMMAND
# Uncomment if pasting URLs is messy
# DISABLE_MAGIC_FUNCTIONS=true
# =============================================================================
# COMPLETION
# =============================================================================
autoload -Uz compinit
# Regenerate compdump at most once per day; use cached dump otherwise
if [[ -n ${ZDOTDIR:-$HOME}/.zcompdump(#qN.mh+24) ]]; then
  compinit
else
  compinit -C
fi
# =============================================================================
# ALIASES
# =============================================================================
# System & General
# Fix Open With - Clears out entries to rebuild again.
alias fixow='/System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister -kill -r -domain local -domain user;killall Finder;echo "Open With has been rebuilt, Finder will relaunch"'
alias python="python3"
# Git / Apps
alias stree="/Applications/SourceTree.app/Contents/Resources/stree"
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias smerge="/Applications/Sublime\ Merge.app/Contents/SharedSupport/bin/smerge"
alias ag="antigravity"
# Eza (better ls)
alias ls="eza --icons=always"
# Zoxide (better cd) - alias 'cd' to 'z'
alias cd="z"
# Youtube download
alias yt-download='yt-dlp -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/best" --merge-output-format mp4 --output "%(title)s.%(ext)s" "https://www.youtube.com/watch?v=$1"'
# =============================================================================
# KEYBINDINGS
# =============================================================================
# History search with arrows
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward
# Tab completion
bindkey '^I'   complete-word       # tab          | complete
bindkey '^[[Z' autosuggest-accept  # shift + tab  | autosuggest
bindkey '^I^I' autosuggest-accept  # tab tab      | autosuggest
# =============================================================================
# TOOLS & PLUGINS
# =============================================================================
# --- rbenv ---
if command -v rbenv >/dev/null 2>&1; then
  eval "$(rbenv init - zsh)"
fi
# --- NVM (Node Version Manager) ---
# Lazy load NVM for faster startup
export NVM_DIR="$HOME/.nvm"
nvm() {
  unset -f nvm node npm
  [[ -s "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" ]] && . "$HOMEBREW_PREFIX/opt/nvm/nvm.sh"
  command nvm "$@"
}
node() { unset -f node; nvm use default >/dev/null 2>&1; node "$@"; }
npm()  { unset -f npm;  nvm use default >/dev/null 2>&1; npm "$@"; }
# --- Zoxide ---
if command -v zoxide >/dev/null 2>&1; then
  eval "$(zoxide init zsh)"
fi
# --- FZF ---
# Set up fzf key bindings and fuzzy completion
if command -v fzf >/dev/null 2>&1; then
  source <(fzf --zsh)
fi
# --- Zsh Autosuggestions ---
ZSH_AUTOSUGGEST_USE_ASYNC=1
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
if [[ -f "$HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh" ]]; then
  source "$HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
fi
# --- Zsh Syntax Highlighting ---
# Ensure this is sourced AFTER compinit/etc.
# source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# =============================================================================
# THEME (Powerlevel10k)
# =============================================================================
# See: https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#homebrew
if [[ -f "$HOMEBREW_PREFIX/share/powerlevel10k/powerlevel10k.zsh-theme" ]]; then
  source "$HOMEBREW_PREFIX/share/powerlevel10k/powerlevel10k.zsh-theme"
fi
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
# =============================================================================
# FASTFETCH
# =============================================================================
if [[ $- == *i* ]] && [[ -z "$SSH_CONNECTION" ]] && command -v fastfetch >/dev/null 2>&1; then
  fastfetch
fi