# dracula theme
cd ${ELECTRON}/zsh

git clone https://github.com/dracula/zsh.git
mv zsh dracula-theme

ln -s ${ELECTRON}/zsh/dracula-theme/dracula.zsh-theme $OH_MY_ZSH/themes/dracula.zsh-theme
