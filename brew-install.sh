#!/usr/bin/env bash
#
# Install apps and command-line tools using Homebrew.
#
# Reference: https://github.com/mathiasbynens/dotfiles/blob/main/brew.sh
#
# TODO: plocate?, traceroute?, mos?

##### Setup

## Update
brew update

## Upgrade
brew upgrade

## Homebrew location
BREW_PREFIX=$(brew --prefix)

##### Packages

#### GNU

### GNU programs not present in macOS

brew install aspell
brew install autoconf
brew install automake
brew install gnupg
brew install texinfo
brew install tree
brew install watch
brew install wdiff
brew install wget

### GNU programs whose BSD counterpart is installed in macOS

# brew install binutils
brew install coreutils   # installed with the prefix 'g'
#  perhaps add `$(brew --prefix coreutils)/libexec/gnubin` to $PATH)
brew install diffutils
brew install findutils   # installed with the prefix 'g'
# brew install gawk        # conflicts with awk package
brew install grep        # installed with the prefix 'g'
brew install gzip
brew install gnu-sed     # installed with the prefix 'g'
brew install gnu-tar     # installed with the prefix 'g'
brew install gnu-which   # installed with the prefix 'g'

### GNU programs that exist in macOS but are outdated
brew install less
# brew install make      # installed with the prefix 'g'
                         # known to cause problems, see `brew info make`
# brew install nano

### Bash

## Install Bash
brew install bash
# brew install bash-completion    # Bash 3.2
# brew install bash-completion2   # Bash 4.2+

## Add Homebrew Bash to default shells
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/bash";
fi;

#### Formulae

### Binaries

# brew install azure-cli
brew install btop
brew install cmake
# brew install dasel   # for emacs-pet
brew install fzf
brew install gdu
brew install git
brew install git-filter-repo
brew install hunspell
# brew install jeffreywildman/virt-manager/virt-viewer
brew install mmv
brew install ncdu
# brew install nmap
# brew install nvm   # unsupported upstream
brew install ocrmypdf
# brew install openssh
# brew install pdftohtml
brew install pipx && pipx ensurepath
brew install pstree
brew install python
brew install rename
brew install ripgrep
brew install rsync
# brew install subversion
brew install tree-sitter
# brew install unzip   # known to cause problems, see `brew info uzip`
brew install vim
brew install wakeonlan

## Manage and fine-tune Time Machine exclude paths
# brew install asimov
# brew tap tg44/heptapod
# brew install heptapod

### Libraries

brew install jansson
brew install libgccjit
brew install libvterm

### Package managers
# brew install luarocks
# brew install npm   # install with nvm

### Code libraries
brew install ansible
# brew install node   # use nvm instead

### Language servers
###   CSS, HTML, JS, JSON, Markdown: vscode-langservers-extracted
###   (install with npm)

## Ansible
# brew install ansible-language-server      # install with npm
# brew install yaml-language-server         # install with npm

## Bash
# brew install bash-language-server         # install with npm

## JS
# brew install typescript...                # NA, install with npm

## JSON
# brew install json...                      # NA, install with npm

## LaTeX
# brew install digestif                     # NA, install with luarocks
# brew install texlab

# Lua
# brew install lua-language-server

## Markdown
# brew install markdown...                  # NA, install with npm

## Python
# brew install pyright                      # install with npm

### Code linters
###   TODO: linting for HTML and JSON does not work
###         CSS, HTML, JS, JSON, Markdown: ?

## Ansible
# brew install ansible-lint                 # (not needed)
# brew install yamllint                     # dependency of ansible-lint
                                            # (not needed)

## Bash
brew install shellcheck                     # (needed)

## JS
# brew install eslint                       # install with npm
                                            # (might not be needed)
                                            # included in
                                            #   vscode-langservers-extracted

## JSON
brew install jsonlint

## LaTeX
# brew install chktex                       # NA, install with tlmgr
                                            # (not needed)

## Lua
# brew install luacheck                     # NA, install with luarocks
                                            # TODO: is it needed?

## Markdown
# brew install marksman                     # NA
# brew install markdownlint                 # NA, install with gem
                                            # TODO: is it needed?

## Python

# see setup-python repo

#### Casks

### Setup

## Standard casks
# brew tap homebrew/cask   # no longer needed

## Alternative cask versions
##   E.g. for emacs-pretest, emacs-nightly
# brew tap homebrew/cask-versions

## App Store
brew install mas

### Packages

## Binaries
brew install --cask basictex

## Fonts
# brew tap homebrew/cask-fonts
# brew install --cask font-bitstream-vera
# brew install --cask font-dejavu
# brew install --cask font-fira-code
# brew install --cask font-fira-mono
brew install --cask font-hack
# brew install --cask font-inconsolata
# brew install --cask font-source-code-pro
# brew install --cask font-ubuntu-mono

## Applications
# brew install --cask adobe-acrobat-reader
brew install --cask alt-tab
# brew install --cask anaconda
# brew install --cask bankid   # safer to install manually!
# brew install --cask barrier
brew install --cask bettertouchtool
brew install --cask bitwarden
# brew install --cask coconutbattery
# brew install --cask db-browser-for-sqlite
brew install --cask darktable
brew install --cask docker
brew install --cask dropbox   # requires kernel extension
# brew install --cask duplicacy   # discontinued upstream
# brew install --cask duplicacy-cli
brew install --cask duplicacy-web-edition
# brew install --cask evernote
brew install --cask firefox
# brew install --cask garmin-express   # requires Rosetta?
brew install --cask google-chrome
# brew install --cask handbrake
brew install --cask hiddenbar   # alternatives: bartender, dozer,
                                # jordanbaird-ice, vanilla (App store:
                                # barbee)
# brew install --cask iina   # mpv
brew install --cask inkscape
brew install --cask istat-menus
brew install --cask iterm2
brew install --cask jitsi-meet
brew install --cask karabiner-elements
brew install --cask libreoffice-still
brew install --cask microsoft-teams
# brew install --cask mos   # TODO: needs an update
# brew install --cask mpv   # no gui
# brew install --cask nomachine
brew install --cask obsidian
# brew install --cask openvpn-connect
# brew install --cask paragon-ntfs   # requires kernel extension
# brew install --cask pdf-toolbox
brew install --cask plex
brew install --cask protonvpn
brew install --cask qbittorrent
# brew install --cask qfinder-pro   # requires Rosetta
brew install --cask spotify
# brew install --cask stats   # replacement for istat-menus
brew install --cask synologyassistant
# brew install --cask virtualbox   # not ready for m1
# brew install --cask virtualbox-extension-pack
brew install --cask visual-studio-code
brew install --cask vlc
# brew install --cask webtorrent   # requires Rosetta
# brew install --cask zenmap   # requires Rosetta
brew install --cask zoom

# Emacs
brew install --cask emacs        # Emacs For Mac OS X
# brew tap jimeh/emacs-builds      # Emacs Builds
# brew install --cask emacs-app-nightly-29
# brew tap d12frosted/emacs-plus   # Emacs+ (formula)
# brew install emacs-plus@30 --with-native-comp


## App Store
# mas install 937984704   # Amphetamine
# mas install 1160435653  # AutoMounter (note that AutoMounter Helper
                        # might also be needed, get it from
                        # https://www.pixeleyes.co.nz/automounter/helper/)
# mas install 408981434   # iMovie
# mas install 784801555   # Microsoft OneNote

##### Cleanup

## Remove outdated versions from the cellar
brew cleanup
