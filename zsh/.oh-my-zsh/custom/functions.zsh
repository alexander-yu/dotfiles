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
    exec zsh
}

uuid () {
    python -c "import uuid; print(uuid.uuid4())" | tee /dev/tty | tr -d '\n' | pbcopy
}

notify () {
    case `uname` in
        Darwin)
            osascript -e "display notification \"$1\" with title \"$2\" subtitle \"$3\""
        ;;
    esac
}
