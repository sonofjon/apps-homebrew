#!/usr/bin/env bash
#
# Install apps and command-line tools using Homebrew.
#
# Reference: https://github.com/mathiasbynens/dotfiles/blob/main/brew.sh
# 

# Update Homebrew
brew update

# Upgrade outdated formulae
brew upgrade

# Save Homebrew’s installed location
# BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities
#   (Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`)
# brew install coreutils
# ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install GNU 'find', 'locate', 'updatedb', and 'xargs'
#   (Programs are prefixed with 'g')
# brew install findutils
# Install GNU 'sed'
#   (This overwriting the built-in 'sed')
# brew install gnu-sed --with-default-names
# Install current version of Bash
brew install bash
# brew install bash-completion
# brew install bash-completion2

# Switch to using Bash from Homwbrew as default shell
# if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
#   echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
#   chsh -s "${BREW_PREFIX}/bin/bash";
# fi;

# Install more recent versions of some macOS tools
# brew install vim --with-override-system-vi
# brew install grep
# brew install openssh

# Install other useful binaries
brew install ansible
brew install aspell
brew install automake
# brew install azure-cli
brew install bash
brew install cmake
brew install git
brew install git-filter-repo
brew install gnupg
brew install hunspell
brew install jansson
# brew install jeffreywildman/virt-manager/virt-viewer
brew install libgccjit
brew install libvterm
brew install luarocks
brew install nmap
brew install node
# brew install nvm   # unsupported upstream
brew install ocrmypdf
# brew install pdftohtml
brew install pstree
brew install rename
brew install shellcheck
brew install subversion
brew install texinfo
brew install texlab
# brew install tg44/heptapod/heptapod
brew install tree
brew install wget

# Use casks
brew tap homebrew/cask
# Add alternative cask versions
#   E.g. for emacs-pretest, emacs-nightly
# brew tap homebrew/cask-versions
# Use bundles
brew tap homebrew/bundle
# Add fonts repo
brew tap homebrew/cask-fonts

# Install other useful binaries (casks)
brew install --cask basictex

# Install fonts
brew install --cask font-bitstream-vera
brew install --cask font-dejavu
brew install --cask font-fira-code
brew install --cask font-fira-mono
brew install --cask font-hack
brew install --cask font-inconsolata
brew install --cask font-source-code-pro
# brew install --cask font-ubuntu-mono

# Install applications (casks)
brew install --cask alt-tab
brew install --cask barrier
brew install --cask bettertouchtool
brew install --cask db-browser-for-sqlite
brew install --cask coconutbattery
brew install --cask darktable
brew install --cask dropbox   # requires kernel extension
# brew install --cask duplicacy   # discontinued upstream
brew install --cask duplicacy-web-edition
brew install --cask emacs
brew install --cask evernote
brew install --cask firefox
brew install --cask google-chrome
brew install --cask istat-menus
brew install --cask iterm2
brew install --cask joplin
brew install --cask karabiner-elements
brew install --cask microsoft-edge
brew install --cask microsoft-teams
# brew install --cask mos   # needs an update
brew install --cask mpv
brew install --cask nomachine
brew install --cask openvpn-connect
brew install --cask paragon-ntfs   # requires kernel extension
# brew install --cask pdf-toolbox
brew install --cask plex
brew install --cask purevpn
brew install --cask qbittorrent
brew install --cask skype
brew install --cask spotify
# brew install --cask virtualbox   # not ready for m1
# brew install --cask virtualbox-extension-pack
brew install --cask visual-studio-code
brew install --cask vlc
brew install --cask webtorrent
# brew install --cask zenmap   # requires Rosetta
brew install --cask zoom

brew tap homebrew/cask-drivers
# brew install --cask garmin-express   # requires Rosetta

# Enable App Store
brew install mas

# Install applications (App Store)
#   Missing applications:
#     dJay Pro 2
#     dJay Pro AI
mas install 937984704   # Amphetamine
mas install 1160435653  # AutoMounter (note that AutoMounter Helper
                        # might also be needed, get it from
                        # https://www.pixeleyes.co.nz/automounter/helper/)
mas install 408981434   # iMovie
mas install 784801555   # Microsoft OneNote

# Remove outdated versions from the cellar
brew cleanup
