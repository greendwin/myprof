
echo Installing bash_it...
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh
sed -i "s/BASH_IT_THEME='.*'/BASH_IT_THEME='bakke'/g" ~/.bashrc

# append our custom bashrc to bash_it
echo "source ~/.myprof/bashrc" >> ~/.bashrc

echo Installing tmux config...
# TODO: use new file & source execution for custom overrides support
ln -sf ~/.myprof/tmux.conf ~/.tmux.conf

echo Installing vim config...
echo "so ~/.myprof/vimrc" >> ~/.vimrc

echo Done.
