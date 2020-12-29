Backup my dotfiles with GNU stow.

Howto: https://alexpearce.me/2016/02/managing-dotfiles-with-stow/

## Usage

```bash
$ git clone git@github.com:ruanyf/dotfiles.git
$ cd dotfiles

# restore .bashrc
$ stow bash -t ~

# restore .vimrc
$ stow vim -t ~

# restore fish
# restore i3 （should install rofi & dmenu first）
# restore i3status
$ stow config -t ~/.config
```

