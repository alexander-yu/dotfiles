tabexec () {
    echo "$@" > ~/Desktop/tmp.zsh
    chmod +x ~/Desktop/tmp.zsh
    cmd="do shell script \"hyper ~/Desktop/tmp.zsh\""
    osascript -e "$cmd"
}

conj () {
    git stash
    "$@"
    git stash pop
}

refresh () {
    source $HOME/.zshrc
}

uuid () {
    python -c "import uuid; print(uuid.uuid4())" | tee /dev/tty | pbcopy
}
