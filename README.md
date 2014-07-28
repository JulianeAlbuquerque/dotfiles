# Juliane's dotfiles

This repository includes all of my custom dotfiles.  They should be cloned to
your home directory so that the path is `~/dotfiles/`.  The included setup
script creates symlinks from your home directory to the files which are located
in `~/dotfiles/`.

The setup script is smart enough to back up your existing dotfiles into a
`~/dotfiles_old/` directory if you already have any dotfiles of the same name as
the dotfile symlinks being created in your home directory.

I also prefer `zsh` as my shell of choice.  As such, the setup script will also
clone the `oh-my-zsh` repository from my GitHub. It then checks to see if `zsh`
is installed.  If `zsh` is installed, and it is not already configured as the
default shell, the setup script will execute a `chsh -s $(which zsh)`.  This
changes the default shell to zsh, and takes effect as soon as a new zsh is
spawned or on next login.

So, to recap, the install script will:

1. Back up any existing dotfiles in your home directory to `~/dotfiles_old/`
2. Create symlinks to the dotfiles in `~/dotfiles/` in your home directory
3. Clone the `oh-my-zsh` repository from my GitHub (for use with `zsh`)
4. Check to see if `zsh` is installed, if it isn't, try to install it.
5. If zsh is installed, run a `chsh -s` to set it as the default shell.

## How to install?
1.	Clone the repository `git clone git@github.com:JulianeAlbuquerque/dotfiles.git`
2.	`cd ~/dotfiles`
3.	Run the setup script `./install.sh`


## What's included?

All my command-line tools and its configurations. Have fun :)


###### Shell

* [ZSH](http://www.zsh.org/) for shell
* [Oh my ZSH](https://github.com/robbyrussell/oh-my-zsh) for ZSH tweaking

###### Theme

* [Dracula](https://github.com/zenorocha/dracula-theme) for better syntax highlight for [ZSH](http://www.zsh.org/), [iTerm2](http://www.iterm2.com/) and [Alfred](http://www.alfredapp.com/)


###### NodeJS

* [Bower](http://bower.io/) for front-end package management
* [Grunt](http://gruntjs.com/) for task automation

###### Ruby

* [Compass](http://compass-style.org/) for Sass programming
* [Jekyll](http://jekyllrb.com/) for static generated website development

## Credits

* Script defaults based on [michaeljsmalley dotfiles](https://github.com/michaeljsmalley/dotfiles/blob/master/makesymlinks.sh) | [read more](http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/)
* Themes based on [@zenorocha's dracula](https://github.com/zenorocha/dracula-theme)