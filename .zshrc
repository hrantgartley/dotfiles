# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# set editor to neovim
export EDITOR=nvim
alias bc='brew install'
alias bs='brew services start mongodb/brew/mongodb-community'
alias bst='brew services stop mongodb/brew/mongodb-community'
alias h='cd ~'
alias cls='clear'
alias py='python3.11'
alias d='cd ~/Documents/'
alias pc='p10k configure'
alias de='cd ~/Desktop/'
alias j='~/Documents/Java/'
alias jr='java'
alias g='cd ~/Documents/GoLang/'
alias specs='system_profiler SPSoftwareDataType SPHardwareType'
alias b='bash'
alias zc='nvim ~/.zshrc'
alias sz='. ~/.zshrc'
alias n='nvim'
alias js='cd ~/Documents/JavaScript/'
alias nv='nvim .'
alias gi='git init'
alias t='touch'
alias e='exit'
alias f='ls -ld -- */'
alias ncon='cd ~/.config/nvim'
alias na='ll | nms -a'
alias p='~/Documents/Python/'
alias pip='pip3'
alias cat='ccat'
alias cwd='pwd'
alias r='~/Documents/Rust'
alias wez='n ~/.wezterm.lua'
# alias g++='g++-13'
alias 4='cd ~/Documents/CIS486/'
alias 3='cd ~/Documents/CS325/'
alias lg='lazygit'
alias htd='cd /Applications/XAMPP/htdocs/'
alias htl='cd /Applications/XAMPP/logs'
alias gcl='git clone'
alias cr='cargo r'
alias njc='nvim *.js *.css *.html'
alias nj='nvim *.js *.html'
alias a='rm -rf'
alias gc='git commit -m'
alias gt='go test'
alias g.='git add .'
alias cs='cd ~/Documents/cSharp/'
alias dr='dotnet run'
alias db='dotnet build'
alias penv='python3 -m venv'
alias nrd='npm run dev'
alias gs='git stash'
alias python='python3.11'
alias ls='lsd'
alias l='ls -l'
alias lla='ls -la'
alias lt='ls --tree'
eval $(thefuck --alias)
autoload -Uz compinit
compinit

_java_complete() {
    local curcontext="$curcontext" state line
    _arguments -C \
        '*:java file:_files'
}
compdef _java_complete java
# autoload -Uz +X compinit && compinit
# autoload -Uz +X bashcompinit && bashcompinit
# # local comp_line="${COMP_WORDS[*]:1}"
# local comp_line="${COMP_WORDS[0]:1}"
# # ln -sf /usr/local/bin/gcc-5 /usr/local/bin/gcc
# # export PATH=/usr/local/bin:$PATH


# Load Angular CLI autocompletion.
source <(ng completion script)
# export LDFLAGS="-L/usr/local/opt/node@16/lib"
# export CPPFLAGS="-I/usr/local/opt/node@16/include"
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
# typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
# export PATH="/usr/local/opt/node@16/bin:$PATH"
export PATH="/usr/local/opt/node@16/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/llvm/lib"
export CPPFLAGS="-I/usr/local/opt/llvm/include/c++/v1"
