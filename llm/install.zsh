(
    set -eo pipefail

    ln -s "$(git rev-parse --show-toplevel)/llm/CLAUDE.md" "$HOME/CLAUDE.md"
    ln -s "$(git rev-parse --show-toplevel)/llm/AGENTS.md" "$HOME/.codex/AGENTS.md"
)