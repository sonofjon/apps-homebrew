#!/usr/bin/env bash
#
# Install command-line tools using Homebrew.
#
# Reference: https://github.com/mathiasbynens/dotfiles/blob/main/brew.sh
# 

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
# BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
# brew install coreutils
# ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
# brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
# brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
# brew install gnu-sed --with-default-names
# Install a modern version of Bash.
brew install bash
# brew install bash-completion
# brew install bash-completion2

# Switch to using brew-installed bash as default shell
# if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
#   echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
#   chsh -s "${BREW_PREFIX}/bin/bash";
# fi;

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
# brew install vim --with-override-system-vi
# brew install grep
# brew install openssh

# Install other useful binaries.
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

# Install other useful binaries (casks).
basictex
db-browser-for-sqlite
emacs-app
font-bitstream-vera
font-dejavu
font-fira-code
font-fira-mono
font-hack
font-inconsolata
font-source-code-pro
font-ubuntu-mono
mos
mpv
# pdf-toolbox
zenmap

# Remove outdated versions from the cellar.
brew cleanup
