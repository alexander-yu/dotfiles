tabexec () {
    tmpfile=$(mktemp)
    echo "trap 'rm -f $tmpfile' EXIT; $@" > "$tmpfile"
    chmod +x "$tmpfile"
    hyper "$tmpfile"
}

conj () {
    git stash && "$@" && git stash pop
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
