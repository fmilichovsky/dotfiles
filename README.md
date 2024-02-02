# Dotfiles

My personal dotfiles, backed by [dotbot].

## Install

To apply the dotfiles on an environment:

1. Clone the repository

    ```shell
    git clone git@github.com:fmilichovsky/dotfiles.git
    ```

1. Let [dotbot] link the files locally

    ```shell
    dotfiles/install
    ```

This operation should be idempotent - can be done often and repeatedly.

## Changing dotfiles

1. Modify the necessary dotfiles.
1. Push to origin.
1. Run `install`.

## Local adjustments

Make local customizations (untracked by this repository) by adding `_local`
files on the environment.

For example:

* `vim` : `~/.vimrc_local`
* `zsh` / `bash` : `~/.shell_local_before` run first
* `zsh` : `~/.zshrc_local_before` run before `.zshrc`
* `zsh` : `~/.zshrc_local_after` run after `.zshrc`
* `zsh` / `bash` : `~/.shell_local_after` run last
* `git` : `~/.gitconfig_local`

[dotbot]: https://github.com/anishathalye/dotbot
