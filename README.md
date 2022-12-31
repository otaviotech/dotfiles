# Dotfiles

These are my workspace day to day preferences.

# Install

Some software are not very simple to install via shell, so I split the proccess in 2 steps:

1. Run the automated installation. This will setup almost everything.

```shell
git clone https://github.com/otaviotech/dotfiles.git ~/dotfiles

cd ~/dotfiles

./install-macos.sh

cd -
```

2. At the end of the first command, a list of softwares will be shown. Unfortunately, we need to install them manually.

   ![Image of a list of softwares that need to be installed manually](/manual-install.png "List of files that need to be installed manually")
