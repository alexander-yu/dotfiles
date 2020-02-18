tabexec () {
    tmpfile=$(mktemp)
    echo "trap 'rm -f $tmpfile' EXIT; $@" > "$tmpfile"
    chmod +x "$tmpfile"
    "$TERM_PROGRAM" "$tmpfile"
}

tab () {
    if [[ -n $1 ]]; then
        "$TERM_PROGRAM" "$1"
    else
        "$TERM_PROGRAM" .
    fi
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

branch () {
    current_branch=$(git_current_branch)
    git checkout -b "$@" && git branch -u "$current_branch"
}
