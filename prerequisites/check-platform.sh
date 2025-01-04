platform="$(uname)"

if [[ "$platform" != "Darwin" ]]; then
    echo "$(tput setaf 1)Error: OS requirement not met"
    echo "You are currently running: $platform"
    echo "OS required: Darwin"
    echo "Installation stopped."
    exit 1
fi
