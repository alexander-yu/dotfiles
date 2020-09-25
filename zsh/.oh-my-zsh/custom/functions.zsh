tempexec () {
    tmpfile=$(mktemp)
    echo "trap 'rm -f $tmpfile' EXIT; $@" > "$tmpfile"
    chmod +x "$tmpfile"
    zsh "$tmpfile"
}

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
    uuidgen | tr "[:upper:]" "[:lower:]" | tee /dev/tty | tr -d "\n" | pbcopy
}

notify () {
    case "$(uname)" in
        Darwin)
            osascript -e "display notification \"$1\" with title \"$2\" subtitle \"$3\""
        ;;
    esac
}

branch () {
    local parent

    if [[ -n "$2" ]]; then
        parent="$2"
    else
        parent=$(git_current_branch)
    fi

    git checkout -b "$@" && git branch -u "$parent"
}

unstack () {
    if [[ $(git_current_branch) != "master" ]]; then
        git branch --unset-upstream && git rebase master && git branch -u master
    fi
}
