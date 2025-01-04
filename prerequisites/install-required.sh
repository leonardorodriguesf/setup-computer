if [ ! -f /opt/homebrew/bin/brew ]; then
    NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

if ! command -v brew >/dev/null; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

if ! command -v ansible >/dev/null; then
    brew install ansible
fi

if ! command -v python3 >/dev/null; then
    brew install python3
fi