# configs
Configuration files

Check out https://github.com/glacambre/firenvim

## Installation

1. Install MacVim

2. Create `~/vim/` if it does not exist
```bash
mkdir ~/.vim
```

3. Install vim theme
```bash
$ mkdir ~/.vim/colors && cp monokai.vim ~/.vim/colors/
```

4. Install Vundle
```bash
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

5. Launch and install plugins
```bash
$ mvim
:PluginInstall
```

6. Install global packages
```bash
$ npm i -g eslint_d
$ npm i -g eslint-cli
```

7. Build YouCompleteMe binaries
```bash
$ brew install cmake
$ cd ~/.vim/bundle/YouCompleteMe && ./install.py --tern-completer
```

8. Install Tern dependencies
```bash
$ cp ~/dev/configs/.tern-config ~/
$ cd ~/.vim/bundle/tern_for_vim && npm i
```

9. Install brew dependencies (Ack for CtrlSF and grip for MD preview)
```bash
$ brew install ack
$ brew install grip
```

10. Install this for checking out files
```bash
$ brew install jq
```

Now you can type to check out files:
```
jq -r .scripts package.json
```

Install Iterm2 color theme
```
cd Downloads && curl -O https://raw.githubusercontent.com/MartinSeeler/iterm2-material-design/master/material-design-colors.itermcolors
```

Install Oh My ZSH!
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Install PowerLevel10k theme
```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

Change the theme in `~/.zshrc`:
```
ZSH_THEME="powerlevel10k/powerlevel10k"
```

Open up iTerm2 preferences (⌘ + ,) -> Go to Profiles -> Keys -> Click on + icon (add new Keyboard shortcut):
![image](https://user-images.githubusercontent.com/4421460/130530332-dc1b5c08-9d04-43ad-b789-799dc8dd0f32.png)

Restart Iterm

FZF for ctrl-r
```
brew install fzf
$(brew --prefix)/opt/fzf/install
source ~/.zshrc
```

Fix repeating keypresses on Mac
```
defaults write -g ApplePressAndHoldEnabled -bool false
```

## Troubleshooting

[Check here for more info on OMZ](https://blog.larsbehrenberg.com/the-definitive-iterm2-and-oh-my-zsh-setup-on-macos)

#### `mvim` not finding vim when trying to launch from terminal

run `$ sudo ln -s /Applications/MacVim.app/Contents/bin/mvim /usr/local/bin/mvim`
