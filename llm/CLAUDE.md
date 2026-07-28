# CLAUDE.md

## Finding/Searching Files
Prefer using rg (ripgrep) when available, otherwise default to grep, and only if neither of those are suitable, use find or find -exec.

## Editing Files
Prefer using your own internal tools when appropriate for editing, over tools like bash, sed or python3.

## Assumptions
Do not make assumptions. If any information is missing or there are multiple reasonable approaches, stop and ask me a clarifying question before proceeding, or try to find that information.

## Papercuts

When you encounter a minor friction when working — a tool call that failed and had to be retried, confusing documentation, undocumented setup steps, flaky commands, stale cache, misleading errors, or any other non-obvious gotcha — add an entry to `~/prompts/papercuts.md` following the designated format. Describe what you were doing and what got in the way. If relevant, include the solution or fix.
