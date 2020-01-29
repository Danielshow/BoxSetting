## BoxSetting
I have been using VIM and TMUX for some time and this is a testament of what I use. My terminal is so easy to setup, follow this simple steps and you are good.

## Installation

### Using Bash
I have written a simple bash script which can automate the process but you have to do some things also

```bash
$ git clone https://github.com/Danielshow/BoxSetting
$ cd BoxSetting

# I use iterm as a replacement for my mac terminal
$ brew cask install iterm2

# I love ZSH and customization
$ brew install zsh
$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install Tmux as a multiplexer
$ brew install tmux

# Run my bash script
$ ./index.sh [your system username]
```
- Open Vim and run `:PluginInstall`
- Hurray 🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉

You might face a little error from `you-complete-me`, do this to fix it.
```bash
$ brew install cmake macvim
$ cd ~/.vim/bundle/YouCompleteMe
$ ./install.py
```

### Copying Files
```bash
$ git clone https://github.com/Danielshow/BoxSetting
$ cd BoxSetting

# Copy vimrc to your root fie
$ cp vimrc ~/.vimrc

# Copy tmux conf to your root file
$ cp tmux.conf ~/.tmux.conf

# Copy zshrc to your root file 
$ cp zshrc ~/.zshrc

# Make sure you have zsh installed
# Download Vundle
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Download spaceVIM
$ npm install -g spaceship-prompt
$ git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
$ ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
```
- Open Vim and run `:PluginInstall`
- Hurray 🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉

### Update
I added an undo script if you want to go back to your default settings
```shell
$ cd Boxsettings
$ ./undo.sh
```
Voila!!!!!🏵

### Alias
- I have lot of aliases I used in my `~/.zshrc`. You can delete them and change it to yours.
- You can also delete all instances of my name and replace with yours

## Tutorial
I wrote a tutorial for setting it up
- [tutorial](https://danielshow.dev/blogs/setting-up-vim-tmux-iterm-and-oh-my-zsh-a-better-workflow)


## Contribution
You can raise a PR to fix typo or add more configurations
