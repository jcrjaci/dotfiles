if ! is-macos -o ! is-executable ruby -o ! is-executable curl -o ! is-executable git; then
  echo "Skipped: Homebrew (missing: ruby, curl and/or git)"
  return
fi

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap Goles/battery
brew update
brew upgrade

# Install packages

apps=(
  diff-so-fancy
  dockutil
  git
  git-extras
  font-inconsolata
  grep --with-default-names
  nvm
  python
  python@3
  shellcheck
  tree
  wget
  wifi-password
  zsh
)

brew install "${apps[@]}"

export DOTFILES_BREW_PREFIX_COREUTILS=$(brew --prefix coreutils)
set-config "DOTFILES_BREW_PREFIX_COREUTILS" "$DOTFILES_BREW_PREFIX_COREUTILS" "$DOTFILES_CACHE"

sudo easy_install pip
