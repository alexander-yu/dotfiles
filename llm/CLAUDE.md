# CLAUDE.md

## Output Style + Coding Conventions

I really value readability and parsimony in code, prompts and documentation. Try to DRY out your outputs.

## Subagents

Avoid extensive `Glob`/`Grep`/`WebSearch`/`Bash` - use `Explore` agents instead.
Avoid extensive `Edit`/`Bash` - use `general-purpose` sonnet or haiku subagents instead.
Use `Read` sparingly, to verify critical claims yourself.

## Finding/Searching Files

Prefer using rg (ripgrep) when available, otherwise default to grep, and only if neither of those are suitable, use find or find -exec.

## Editing Files

Prefer using your own internal tools when appropriate for editing, over tools like bash, sed or python3.

## Assumptions

Do not make assumptions. If any information is missing or there are multiple reasonable approaches, stop and ask me a clarifying question before proceeding, or try to find that information.

## Papercuts

When you encounter a minor friction when working — a tool call that failed and had to be retried, confusing documentation, undocumented setup steps, flaky commands, stale cache, misleading errors, or any other non-obvious gotcha — first look at `~/prompts/papercuts.md` to see if it was previously recorded and if there is a warning/fix already in place. If not, add an entry to it, following the designated format. Describe what you were doing and what got in the way. If relevant, include the solution or fix.

## Git handoff

<!-- Recorded by Codex, an AI coding assistant, from the user's explicit preference. -->
Create new branches from current master unless the user explicitly requests a different base or a stacked branch.

After completing work in a temporary worktree, commit the changes locally, check out that branch in the main checkout, and remove the temporary worktree. Preserve the previous branch and any unrelated work. Do not push commits or open pull requests unless the user explicitly requests it.

## Git Branching Conventions

- Do not prefix branch names with the AI harness name, e.g. codex or claude. You may use slashes to indicate hierarchy.
- When stacking branches, the naming should have a structure that captures the (project, workstream description, issue number, sequence number, branch description) in that order, e.g. `project/feature-123/1-add-login`. If any of these items is not applicable, it can be omitted, but the remaining structure should still be clear.
- When stacking branches, ensure that each branch clearly indicates its relationship to the previous branch in the stack (e.g. via `git branch -u`), maintaining a logical and traceable sequence.
