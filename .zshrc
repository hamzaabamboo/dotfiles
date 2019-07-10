# load zgen
source "${HOME}/.zgen/zgen.zsh"
# import other dotfiles
source "${HOME}/dotfiles/.aliases"
source "${HOME}/dotfiles/.functions"
# init nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
# init pyenv
export PATH="/home/hamzaabamboo/.pyenv/bin:$PATH"
#eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"

export PATH="$PATH:$HOME/.yarn/bin"
export ZGEN_RESET_ON_CHANGE=(${HOME}/.zshrc)
export DEFAULT_USER="hamzaabamboo"
# if the init script doesn't exist
if ! zgen saved; then

  # specify plugins here
  
  zgen prezto
  zgen prezto '*:*' color 'yes'
  zgen prezto editor key-bindings 'emacs'
  zgen prezto '*:*' case-sensitive 'yes'
  zgen prezto prompt theme 'fire' 
  
  zgen prezto git
  zgen prezto command-not-found
  zgen prezto fasd
  zgen prezto syntax-highlighting 
  zgen prezto docker
  zgen prezto docker-compose
  zgen prezto autosuggestions 
  zgen load mafredri/zsh-async
  zgen load junegunn/fzf shell

  zgen load zsh-users/zsh-syntax-highlighting
  zgen load tarruda/zsh-autosuggestions

  # generate the init script from plugins above
  zgen save
fi
 zgen load denysdovhan/spaceship-prompt spaceship
