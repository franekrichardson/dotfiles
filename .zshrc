# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory autocd extendedglob nomatch notify
bindkey -v
# End of lines configured by zsh-newuser-install

# 10ms for key sequences
KEYTIMEOUT=1

autoload -Uz compinit
compinit
# End of lines added by compinstall

#Add go vars
export GOPATH=~/dev/golang
export PATH=${PATH}:${GOPATH}/bin

#Add python pip user location
export PATH=${PATH}:~/.local/bin/

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

#powerlevel config
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
#POWERLEVEL9K_SHORTEN_DELIMITER=""
#POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(vi_mode dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(virtualenv background_jobs_joined time)
POWERLEVEL9K_MODE='nerdfont-fontconfig'
source  ~/powerlevel9k/powerlevel9k.zsh-theme

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
eval "$(rbenv init -)"
export GEM_HOME=$(ruby -e 'print Gem.user_dir')
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 

# enable nvm
source /usr/share/nvm/init-nvm.sh

