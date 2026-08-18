#!/bin/sh
# World Class Results - UserPromptSubmit reminder (macOS/Linux).
# Mirrors hooks/world-class-reminder.ps1 - keep both messages identical.
# hooks.json invokes the .ps1 by default (Windows); swap it to this script
# on mac/linux - see the README for the exact edit.

msg='World Class Results reminder: if this turn will produce an artifact someone else executes or acts on (a prompt for another agent, a PR or code-review comment, an email, a spec, a plan), then before presenting it: verify every factual claim against the live system (read the file, run the command, query the API) rather than asserting from memory, then run the world-class skill on it. Most of its value is the verification, not the scoring. Skip entirely for status reports, lookups, and conversation - there is no artifact to rate and running it is noise. When the skill is genuinely used, declare it at the end of the response on one compact line, exactly: Skills used: world-class. If several such skills fire in one turn, combine them on one comma-separated line, e.g. Skills used: simple-language, world-class. State it only when genuinely used - never as decoration, never claim use if skipped.'

printf '{"hookSpecificOutput":{"hookEventName":"UserPromptSubmit","additionalContext":"%s"}}\n' "$msg"
