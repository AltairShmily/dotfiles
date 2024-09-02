# Altari's Dotfiles Repository

## How to use this repositories

- commit the alias to your `.bashrc` or `.zshrc`
  ```bash
  alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
  ```
- your source repository ignores the folder where you'll clone it
  ```bash
  echo ".dotfiles" >> .gitignore
  ```
- clone dotfiles into a bare repository in a "dot" folder of your '$HOME'
  ```bash
  git clone --bare https://github.com/AltairShmily/dotfiles.git $HOME/.dotfiles
  ```
- define the alias in the current shell scope
  ```bash
  alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
  ```
- checkout the actual content from the bare repository to your '$HOME'
  ```bash
  config checkout
  ```
- set the flag 'showUntrackedFiles' to 'no' on this local repository
  ```bash
  config config --local status.showUntrackedFiles no
  ```
- now you can type 'config' commands to add and update the dotfiles
  ```bash
  config status
  config add .zshrc
  config commit -m "Add zshrc"
  config add .bashrc
  config commit -m "Add bashrc"
  config push --set-upstream origin main 
  ```

