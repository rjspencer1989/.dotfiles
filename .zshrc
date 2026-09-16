# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:/opt/firestorm-install:$HOME/.config/emacs/bin:$PATH

# --- directory navigation ---
setopt AUTO_CD  # typing a bare directory name (e.g. tab-completed) cd's into it, no `cd` needed

# --- history (replaces oh-my-zsh lib/history.zsh) ---
HISTFILE="$HOME/.zsh_history"
[ "$HISTSIZE" -lt 50000 ] && HISTSIZE=50000
[ "$SAVEHIST" -lt 10000 ] && SAVEHIST=10000
setopt extended_history       # record timestamp of command in HISTFILE
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it
setopt share_history          # share command history data

# --- completion (replaces oh-my-zsh lib/completion.zsh) ---
zmodload -i zsh/complist
WORDCHARS=''
unsetopt menu_complete   # do not autoselect the first completion entry
unsetopt flowcontrol
setopt auto_menu         # show completion menu on successive tab press
setopt complete_in_word
setopt always_to_end
bindkey -M menuselect '^o' accept-and-infer-next-history
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' special-dirs true
zstyle ':completion:*' list-colors ''
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'
zstyle ':completion:*:*:*:*:processes' command "ps -u $USER -o pid,user,comm -w -w"
zstyle ':completion:*:cd:*' tag-order local-directories directory-stack path-directories
zstyle ':completion:*' use-cache yes
zstyle ':completion:*' cache-path "$HOME/.zsh_cache"
zstyle '*' single-ignored show
autoload -Uz compinit && compinit
autoload -U +X bashcompinit && bashcompinit

# --- key bindings (replaces oh-my-zsh lib/key-bindings.zsh) ---
bindkey -e
autoload -U up-line-or-beginning-search
zle -N up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N down-line-or-beginning-search
for keymap in emacs viins vicmd; do
  [[ -n "${terminfo[kpp]}" ]] && bindkey -M $keymap "${terminfo[kpp]}" up-line-or-history
  [[ -n "${terminfo[knp]}" ]] && bindkey -M $keymap "${terminfo[knp]}" down-line-or-history
  bindkey -M $keymap "^[[A" up-line-or-beginning-search
  bindkey -M $keymap "^[[B" down-line-or-beginning-search
  [[ -n "${terminfo[kcuu1]}" ]] && bindkey -M $keymap "${terminfo[kcuu1]}" up-line-or-beginning-search
  [[ -n "${terminfo[kcud1]}" ]] && bindkey -M $keymap "${terminfo[kcud1]}" down-line-or-beginning-search
  [[ -n "${terminfo[khome]}" ]] && bindkey -M $keymap "${terminfo[khome]}" beginning-of-line
  [[ -n "${terminfo[kend]}" ]] && bindkey -M $keymap "${terminfo[kend]}" end-of-line
  [[ -n "${terminfo[kcbt]}" ]] && bindkey -M $keymap "${terminfo[kcbt]}" reverse-menu-complete
  bindkey -M $keymap '^?' backward-delete-char
  if [[ -n "${terminfo[kdch1]}" ]]; then
    bindkey -M $keymap "${terminfo[kdch1]}" delete-char
  else
    bindkey -M $keymap "^[[3~" delete-char
    bindkey -M $keymap "^[3;5~" delete-char
  fi
  bindkey -M $keymap '^[[3;5~' kill-word
  bindkey -M $keymap '^[[1;5C' forward-word
  bindkey -M $keymap '^[[1;5D' backward-word
done
bindkey '\ew' kill-region                              # [Esc-w] - kill from cursor to mark
bindkey '^r' history-incremental-search-backward       # [Ctrl-r] - incremental history search
bindkey ' ' magic-space                                # [Space] - don't do history expansion
autoload -U edit-command-line
zle -N edit-command-line
bindkey '\C-x\C-e' edit-command-line
bindkey "^[m" copy-prev-shell-word

# --- zsh-autosuggestions (apt package) ---
[ -f /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh ] && \
  source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# --- git aliases (kept from oh-my-zsh's git plugin: only the ones actually
# used, per a scan of .zsh_history against the full ~200-alias plugin) ---
alias ga='git add'
alias gaa='git add --all'
alias gapa='git add --patch'
alias gap='git apply'
alias gc='git commit --verbose'
alias gca='git commit --verbose --all'
alias gd='git diff'
alias gl='git pull'
alias glog='git log --oneline --decorate --graph'
alias gp='git push'
alias gpu='git push upstream'
alias grv='git remote --verbose'
alias gst='git status'
alias gss='git status --short'
alias gsb='git status --short --branch'

# --- eza (maintained fork of exa) ---
if type eza &> /dev/null; then
    alias ls='eza'
    alias ll='eza -l'
    alias la='eza -la'
    alias lt='eza --tree'
fi

# --- zoxide (smart cd: `z build`, `z PacketRusher`, etc.) ---
type zoxide &> /dev/null && eval "$(zoxide init zsh)"

# --- direnv (per-directory env vars via .envrc) ---
type direnv &> /dev/null && eval "$(direnv hook zsh)"

# User configuration

# Set personal aliases
alias git-import-dsc='git-import-dsc --author-is-committer --pristine-tar'
alias clean='fakeroot debian/rules clean'
alias v=/snap/bin/nvim
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin
export EDITOR=/snap/bin/nvim
export SSLKEYLOGFILE='/home/rob/sslkeylog'
if type rg &> /dev/null; then
    export FZF_DEFAULT_COMMAND='rg --files'
    export FZF_DEFAULT_OPTS='-m --height 50% --border'
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

fzd() {
    preview="git diff $@ --color=always -- {-1}"
    git diff $@ --name-only | fzf -m --ansi --preview "$preview"
}
export TERMINAL="/usr/local/bin/alacritty"

alias luamake=/home/rob/opensourcetools/lua-language-server/3rd/luamake/luamake
alias dotfiles='/usr/bin/git --git-dir=/home/rob/.dotfiles/ --work-tree=/home/rob'

eval "$(starship init zsh)"

export PACKETRUSHER=/home/rob/opensourcetools/PacketRusher

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add RVM to PATH for scripting.
export PATH="$HOME/.rvm/bin:$PATH"

# opencode
export PATH=/home/rob/.opencode/bin:$PATH
export VCPKG_ROOT=/home/rob/vcpkg
export PATH=$VCPKG_ROOT:$PATH

# --- zsh-syntax-highlighting (apt package) ---
# must be sourced last
[ -f /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] && \
  source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
