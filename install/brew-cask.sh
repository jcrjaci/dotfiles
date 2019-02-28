if ! is-macos -o ! is-executable brew; then
  echo "Skipped: Homebrew-Cask"
  return
fi

brew tap caskroom/versions
brew tap caskroom/cask
brew tap caskroom/fonts

# Install packages

apps=(
  datagrip
  deluge
  firefox
  flycut
  google-chrome
  iterm2
  microsoft-office
  paintbrush
  postman
  skype
  slack
  vagrant
  virtualbox
  visual-studio-code
  vlc
  hyper
  ticktick
  whatsapp
  google-backup-and-sync
  font-fira-code
  google-chrome-canary
)

brew cask install "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json webpquicklook qlvideo
