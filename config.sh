# it's always better to have one variable file for .zshrc and .bashrc

export ELECTRON=~/.electron



# applications

# nodejs
export PATH=$PATH:$HOME/Applications/node/bin
# solana cli
export PATH=$PATH:$HOME/.local/share/solana/install/active_release/bin
# jdk 19
export PATH=$PATH:$HOME/Applications/jdk-19.0.2/bin
# pypy3
export PATH=$PATH:$HOME/Applications/pypy3.9-v7.3.11-linux64/bin
# rustup
export PATH=$PATH:$HOME/.cargo/env
# solana cli
export PATH="/home/jayam04/.local/share/solana/install/active_release/bin:$PATH"



# codehub folders
export CODEP=~/CodeHub/projects
export CODEL=~/CodeHub/learning
export CODEM=~/CodeHub/myself



# quick navigate to codehub dir
alias codep="cd $CODEP"
alias codel="cd $CODEL"
alias codem="cd $CODEM"
alias postman="~/Applications/Postman/Postman"



# applications dir
export APPLICATIONS="${ELECTRON}/applications"
# passwordstore dir
export PASSWORD_STORE_DIR=~/.electron/passwordstore



# sub scripts

export APPLICATIONS=$APPLICATIONS_FOLDER
