# World Class Results — porting conformance

The brief for anyone porting World Class Results to another platform (Codex, Grok, Antigravity, or one that doesn't exist yet). This is not the skill. The reference text is [`skills/world-class-results/SKILL.md`](skills/world-class-results/SKILL.md) and the files in `references/`.

**A port is a translation, not a rewrite.** Translate the mechanics — hook plumbing, manifest format, command syntax. Keep the meaning. If a rule below is missing from your port, the port is wrong, however good it reads.

## Rules that must survive the port

Any wording. All present.

1. **The bar comes before the score.** Name the artifact, the judge (specifically — "a CFO skimming on a phone", not "users"), and what 10/10 means to that judge, plus a **named real-world comparator** — all before rating anything. No comparator means the rating is uncalibrated; say so rather than pretending otherwise.
2. **No score without a cited observable.** Every number points at something specific in the artifact. A number with no citation is deleted, not defended.
3. **Never award your own first draft a 9 or 10.**
4. **Overall ≤ lowest dimension + 1.** World class fails at the weakest link; an average hides it.
5. **Fix, don't propose.** Apply the improvements. Only list-without-doing when the fix needs a decision, asset, or access you don't have — then name exactly what you need and from whom.
6. **Score down as readily as up.** A rescore that only ever rises is not a rescore.
7. **Rescore with the same rubric and the same weights.** No moving the goalposts.
8. **Declare a stop condition and honour it** (default hard cap: round 3). Polishing forever is a failure mode, not diligence.
9. **Scope guard.** "Push it to 10" means *this thing, better* — never a bigger thing. Scope-expanding ideas get listed for the user, not built.
10. **The last point is a decision, not more effort.** 8 → 10 is a cut, a stance, a reframe, one real specific — almost never "add more".
11. **The wrong-artifact check goes in line one.** If the honest answer is that this shouldn't exist in this form, say so first, then rate it on its own terms anyway. Buried at the end, it doesn't count.
12. **Mode discipline.** A short, cheap pass is the default; the full scorecard has to be earned by a substantial artifact with real stakes. If the scorecard would be longer than the artifact, the mode is wrong.

## Free to change — and expected to

- **Wording, voice, worked examples, and the dimension libraries.** Rubrics should suit the work that platform's users actually produce.
- **Hook, manifest, and command mechanics** — whatever that platform's format is.
- **The output layout**, so long as it stays terse and the improved artifact remains the deliverable rather than the scorecard.
- **How the reference files are split**, or whether they are inlined at all.

## Never change these

These are the honesty guards. They are the whole reason the skill produces quality rather than flattery, and they are what a well-meaning port erodes first.

- **Verify before claiming, and say so plainly when you can't.** No verification, no "fixed".
- **"Couldn't check" must never quietly become "it's fine."** When verification is genuinely impossible, that is a **third outcome**: mark the claim `unverified`, name what would settle it and who has it, and **cap that dimension at 7**. An unverified claim dressed as a checked one is the most expensive failure this skill can produce.
- **The grounding rule.** Never cite a name you cannot ground — if you can't state what they actually did, drop the name and keep the question. **Never invent a framework.** An unattributed sharp question beats a confidently misattributed one.
- **Never sandbag.** Scoring your own work low so the improvement looks big is the same dishonesty as inflating it.
- **Report residual gaps.** A 9 with one named unfixable gap beats a claimed 10 with a hidden one.
- **Declare only when genuinely run.** The `WORLD CLASS` row reports the pass — before/after, what capped it, how many gaps actually closed — not a verdict on the work, and never instead of doing the pass.
- **The run box shape:** one fenced code block, one row per skill that genuinely ran, left rail only, **no right-hand border**, last thing in the response — unless a later always-last postmark skill is installed, which defines itself as coming after.

## Wiring checklist for a new platform

- [ ] Plugin manifest in that platform's own folder and format — never share a folder with another platform's manifest.
- [ ] Hook path uses **that platform's own root variable**. `${CLAUDE_PLUGIN_ROOT}` is Claude Code's. If you do not know the platform's variable, find out or use an absolute path — do not borrow another platform's.
- [ ] The hook emits valid single-line JSON, verified by running it.
- [ ] `.ps1` and `.sh` both present where the platform runs on both Windows and Unix, and both emit identical text.
- [ ] Any slash-command equivalent registered in that platform's own format.
- [ ] No discoverable skill or hook left at the repo root, where two platforms could both load it.
- [ ] Version set in that platform's manifest — and **bumped on every change**, or installers will not pick the change up.

## Checking a port

Structural checks are automatable: files exist, manifests parse, the hook emits valid JSON, no cross-platform leakage.

The rules above are **not** automatable, and should not be turned into exact-phrase greps. They say "any wording" on purpose; a grep for a phrase forces one wording and defeats the point of a port. A person or a reviewing agent reads the port against this list. That reading is the check.

`tests/scenarios.md` holds the pressure scenarios. The sharpest test for this skill: give the port an artifact it cannot verify and see what it does. If it asserts anyway, or quietly scores as though it checked, the port has lost the one guard that matters most.
