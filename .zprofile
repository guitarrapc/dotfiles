# enable brew to PATH
if [[ -f "/opt/homebrew/bin/brew" ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# enable container default
export CONTAINER_DEFAULT_PLATFORM=linux/arm64
