# configs
Configuration files

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

## Troubleshooting

#### `mvim` not finding vim when trying to launch from terminal

run `$ sudo ln -s /Applications/MacVim.app/Contents/bin/mvim /usr/local/bin/mvim`
