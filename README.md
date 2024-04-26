# Dotfiles

These are my workspace day to day preferences.

Dotfiles are managed using [chezmoi](https://github.com/twpayne/chezmoi).

# Install

Run the automated installation. This will setup **almost** everything.

```shell
cd ~
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply otaviotech
cd -
```
# Manual steps

After restarting the terminal, don't forget to:

- install tmux plugins by pressing `prefix + I` (`<ctrl + a> + I`).

