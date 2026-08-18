# World Class Results

**A skill that stops AI output landing at 7/10.**

Works with Claude, Codex, Grok, and anything else you can hand a system prompt.

---

## The problem

Hand a frontier model someone else's landing page and ask it to rate that, and it will do a good job unprompted. We tested this. It scored a deliberately mediocre page 4/10 with no skill loaded, and caught a planted 10× arithmetic error in a board report at 3/10. **Critiquing other people's work is not the gap.**

The gap is what happens when the model is grading itself, and what happens after the critique.

Ask it to write something and rate its own output, and it writes a v2 headed *"pushed to 10"* — no bar, no comparator, nothing verified. That's the same model that was rigorous thirty seconds earlier about a stranger's page. And a critique, however sharp, is still a list of things someone else now has to do.

So this skill is aimed at four specific failures, all of them measured rather than assumed:

1. **Self-assessment inflation** — crowning your own draft
2. **Diagnosis instead of delivery** — telling the user what to fix rather than fixing it
3. **Claiming without checking** — "fixed" meaning "edited", not "verified"
4. **No stopping rule** — polishing forever, or fabricating the last two points to reach a 10

See [Evidence](#evidence) for what the tests actually found, including where the skill failed.

## What this does

It installs the missing pressure. Six steps, one loop:

```
Bar  →  Score  →  Gaps  →  Fix  →  Verify  →  Rescore  →  Stop
```

The one idea that makes it work:

> **You cannot rate something without a standard, and you cannot invent the standard after you've seen your own work.**

So the bar comes first — who the judge is, what 10/10 means to *them*, and a named real-world thing you're measuring against. Then the score, with evidence. Then the gaps, written as fixes you can actually make. Then the fixes get applied, verified, and rescored — and it stops on purpose instead of polishing forever.

## What makes it more than "rate it out of 10"

Any model will happily rate its own work an 8 and then declare it a 10 after changing two adjectives. These are the rules that stop that:

- **A bar and a named comparator before any number.** "9/10" alone is a feeling. "9/10 — matches the structure discipline of a Stripe docs page, one weaker example" is a claim you can argue with.
- **No score without a cited observable.** Point at the line. Numbers with no citation get deleted, not defended.
- **Overall ≤ lowest dimension + 1.** World class fails at the weakest link. Four 9s and a 3 is not an 8 — it's a 4, and that rule is what makes the pass find the real problem instead of the comfortable one.
- **Never a 9 or 10 on your own first draft.** Ever.
- **Ceiling of 7 on anything unverified.** Didn't run it, didn't read it end to end? It can't score above competent.
- **Fix, don't propose.** The improved artifact is the deliverable. The scorecard is just the receipt.
- **No verification, no "fixed".** Observing the new state, not making the edit that should have produced it.
- **A stop condition, declared and honoured.** Three rounds maximum. Polishing forever is a failure mode, not diligence.
- **Scope guard.** "Push to 10" means *this thing, better* — not a bigger thing wearing a quality costume.
- **The last point is a decision, not more effort.** 8 → 10 is almost never "add more". It's a cut, a stance, a reframe, one real specific, or the finish detail nobody else bothers with.

Plus two passes most reviews skip:

- **The kill shot** — find the hardest question this work can be asked, steel-man it, and answer it.
- **The subtraction pass** — what gets *better* if you delete something? Most 8s become 9s by removal.

## Lenses: derived, not recited

**A lens is a question, not a person.** The name is provenance; the question is the payload.

That matters because the obvious way to build this feature is a hardcoded list of famous names — and that list breaks in three ways. It doesn't **cover** your field (your artifact might be a veterinary anaesthesia protocol or a safeguarding policy). It invites **force-fitting** (Cialdini's principles applied to a surgical checklist, because the model would rather reach for the nearest listed name than admit the list doesn't apply). And it invites **fabrication** — ask a model to name five experts in a field and it will produce five confident names, some of whom didn't write what's attributed to them.

So the skill [derives the lenses](skills/world-class-results/references/lenses.md) from the artifact, in priority order:

1. **From the comparator** — you already named a real-world exemplar when you set the bar. What did whoever made it *decide* that you didn't notice was a decision? What did they leave out that you put in? No lookup, no names, no fabrication risk, works in every field. Usually the sharpest of the three.
2. **From the field** — named as narrowly as you honestly can ("post-operative pain monitoring in small-animal practice", not "medicine"), then whoever or whatever sets the standard *there*. **Published standards beat personalities**: "does this meet WCAG 2.2 AA?" is a sharper lens than "what would a design expert say?", because it's explicit, checkable, and someone accountable maintains it.
3. **From you** — one question: *whose work should I be measuring this against?* Practitioners carry a short list of people whose criticism would actually sting. That beats anything derived.

And a grounding rule that applies throughout: **never cite a name you can't ground.** If the model can't say what someone actually did, it drops the name and keeps the question. An unattributed sharp question beats a confidently misattributed one.

Three to five lenses, not ten — including **at least one deliberately foreign**, because that's where the non-obvious gaps live. A landing page reviewed through *operations* finds the broken follow-up nobody looked at. A code review through *teaching* finds the API nobody can learn.

There's still a library of worked examples in the appendix of that file — roughly sixty ideas across ten common domains, each compressed to a single diagnostic question. It's there to **demonstrate the compression**, and as a fast path for common artifact types. It's labelled as unverified attribution, and it is explicitly not a canon to force-fit.

## Install

One skill, three homes. Claude Code and Codex both read a `SKILL.md` with `name` + `description` frontmatter, so **the same file drives both** — only the directory differs. Grok Build discovers the Claude skills tree, so it comes along for free.

### Fastest path — the installer

```bash
git clone https://github.com/naamdog/world-class-results.git && cd world-class-results && ./install.sh
```

On Windows: `.\install.ps1`. Both take targets — `./install.sh codex`, `.\install.ps1 -Target claude,grok` — and default to all three.

| Target | Where it lands | Notes |
|---|---|---|
| **Claude Code** | `~/.claude/skills/world-class-results/` | Or use the plugin route below for the `/world-class` command too |
| **Codex** | `~/.agents/skills/world-class-results/` | Personal skill, available in every project. Project-scoped alternative: `.agents/skills/` in your repo root |
| **Grok Build** | shares the Claude skills tree | Confirm with `grok inspect` |

### Claude Code — as a plugin (recommended)

This repo is both a plugin and its own marketplace, which also gets you the `/world-class` slash command and one-command updates:

```bash
/plugin marketplace add naamdog/world-class-results
```

```bash
/plugin install world-class-results@naamdog-skills
```

Update later with `/plugin marketplace update naamdog-skills`.

This also wires a `UserPromptSubmit` hook that fires on every prompt, reminding the agent to verify claims against the live system and run the skill before handing over an artifact — no `settings.json` editing needed, and it travels with the plugin instead of living only in one person's config.

> **Windows by default.** The hook runs `hooks/world-class-reminder.ps1`. On mac/Linux, open `hooks/hooks.json` and swap the command to the POSIX script — both emit the same JSON:
> ```diff
> - "command": "powershell.exe -NoProfile -ExecutionPolicy Bypass -File \"${CLAUDE_PLUGIN_ROOT}/hooks/world-class-reminder.ps1\""
> + "command": "sh \"${CLAUDE_PLUGIN_ROOT}/hooks/world-class-reminder.sh\""
> ```

### Codex

The installer puts the skill in `~/.agents/skills/`. To scope it to one repo instead, copy `skills/world-class-results/` to `.agents/skills/world-class-results/` at your repo root and commit it — everyone who clones gets it. Codex scans `.agents/skills` from the working directory up to the repo root.

For always-on project rules rather than an on-demand skill, drop [`AGENTS.md`](AGENTS.md) at your repo root or append it to `~/.codex/AGENTS.md`.

> Codex's older `~/.codex/prompts/` custom prompts still work — copy [`commands/world-class.md`](commands/world-class.md) there for a `/world-class` command — but OpenAI has deprecated them in favour of skills. Prefer the skill.

### Grok Build

Grok Build discovers instructions, skills, plugins and hooks from your existing agent config, including the `.claude/` tree and the `AGENTS.md` family — so installing for Claude Code covers it. Run `grok inspect` in your repo to see exactly what it picked up before you rely on it.

For grok.com, X, or the xAI API — where there's no file to install — [`GROK.md`](GROK.md) has a paste-in block for Custom Instructions or a system prompt.

### Anything else

[`PROMPT.md`](PROMPT.md) has three sizes — a one-paragraph pocket version, a full system prompt, and a one-shot you can paste into a single conversation without installing anything.

## Use it

Just ask:

```
Rate that out of 10 and push it to 10.
```

Or invoke it up front, so the standard is set before the work starts:

```
Build the pricing page. Run a World Class pass on it before you show me.
```

For small things it goes quick — a score, the biggest gap, the fix, applied inline. For high-stakes work it runs the full loop and offers the panel.

## What's in here

| File | What it's for |
|---|---|
| [`skills/world-class-results/SKILL.md`](skills/world-class-results/SKILL.md) | The canonical spec — source of truth for everything else |
| [`references/rubric.md`](skills/world-class-results/references/rubric.md) | Weighted dimensions by artifact type — code, copy, design, analysis, strategy, teaching |
| [`references/calibration.md`](skills/world-class-results/references/calibration.md) | The 1–10 ladder and the anti-inflation rules |
| [`references/lenses.md`](skills/world-class-results/references/lenses.md) | How to derive lenses for any field, the grounding rule, plus ~60 worked examples |
| [`references/verification.md`](skills/world-class-results/references/verification.md) | What has to be true before you're allowed to say "fixed" |
| [`references/plain-output.md`](skills/world-class-results/references/plain-output.md) | Presenting a pass to a non-technical reader — verdict first, scorecard after |
| [`examples/worked-example.md`](skills/world-class-results/examples/worked-example.md) | A full pass on a pricing page: 4/10 → 8.6/10 |
| [`commands/world-class.md`](commands/world-class.md) | The `/world-class` slash command (Claude Code and Codex) |
| [`.claude-plugin/`](.claude-plugin/plugin.json) | Plugin manifest and marketplace catalogue |
| [`hooks/`](hooks/hooks.json) | Ships a `UserPromptSubmit` hook so the skill fires itself on every prompt, once installed as a plugin |
| [`install.sh`](install.sh) / [`install.ps1`](install.ps1) | Installs the skill for Claude Code, Codex, and Grok Build |
| [`AGENTS.md`](AGENTS.md) | Codex / Cursor / Amp and other `AGENTS.md` readers |
| [`GROK.md`](GROK.md) | Grok, in all its forms |
| [`PROMPT.md`](PROMPT.md) | Portable prompt, three sizes |
| [`tests/scenarios.md`](tests/scenarios.md) | Pressure scenarios for validating the skill actually changes behaviour |

## Evidence

Seventeen runs: thirteen scenarios with the skill, four matched baselines without it, on Claude Opus, against nine purpose-built fixtures. Full scenarios in [`tests/scenarios.md`](tests/scenarios.md).

**What the baselines showed.** Three of four baselines beat their own predicted failure. The skill's original pitch — that models flatter — was wrong for critique of someone else's work, and the README above has been rewritten to say so. One baseline did fail as predicted, and it's the one that matters: asked to write a cold email and rate it, it declared its own rewrite *"pushed to 10."* The same scenario with the skill scored the first draft **4** and the rewrite **8**, naming what stood between it and 10 rather than walking there.

**What held up.**

| Behaviour | Evidence |
|---|---|
| Won't crown its own work | 13/13 refused to award a 10. Highest self-score was 8.45. |
| Holds under pressure | *"I need the score to be high, this goes to the board Friday"* → opened with 2.5/10 and the arithmetic proving it. |
| Holds under "keep going" | *"Don't stop until it's perfect, I want a genuine 10"* → delivered 8.0, and named the fabricated testimonial it could have written to fake the 10. |
| Delivers instead of diagnosing | Every paired run: baseline described the fix, skill produced the artifact. |
| Verifies rather than asserts | One run computed contrast ratios programmatically and found a signup form that had never captured a single address — two independent reasons, both confirmed live. |
| Won't fabricate | Refused invented customer names, metrics, and expert attributions — unprompted, in five separate runs. |
| Derives lenses instead of reciting | A school risk assessment drew HSE, KCSIE and OEAP guidance; a beekeeping log drew BeeBase and the Veterinary Medicines Regulations. No forced famous names. |

**What failed, and what changed because of it.**

- **Over-application.** Asked to rate a single tweet, it produced a full weighted scorecard *and* offered Expert Panel. → Quick mode now has hard triggers; Standard must be earned on three conditions.
- **The Panel gate leaked.** Offered in 8 of 13 runs, because "public" is true of almost everything. → Now requires high-stakes **and** substantial, once per conversation.
- **Buried the honest answer.** On a help article whose real fix was engineering work, it said so — in a closing note, after the rewrite. → The wrong-artifact check is now step 0, line one.
- **An ambiguous rule.** The ceiling-of-7 didn't say what to do when a dimension is *partly* verified. → It does now: partly verified counts as unverified.

Three of those four were the same bug — **guidance I wrote as prose instead of as a step.** Advisory text gets read and nodded at; only steps and rules actually fire.

**Known limits.** One fixture was broken (the "genuinely fine" form wasn't fine), so the invent-work-on-good-work case remains untested. Single model, single run per scenario, and the domain attributions in the appendix are still unverified against sources. Re-running these — especially on other models — is the highest-value contribution anyone can make here.

## Contributing

The most useful things you can send:

1. **A scenario where the skill fails** — an artifact it rates generously, or a rationalisation it accepts. That's a loophole, and it gets an explicit counter.
2. **A lens that found something** the derivation method missed. Send the diagnostic question, not just an author — and say where it came from.
3. **A correction to an attribution** in the appendix. Those are unverified by design and marked as such; grounding one is a real contribution.
4. **A rubric** for an artifact type that isn't covered.

## A note on the frameworks

The appendix names practitioners and paraphrases the *question* their work teaches you to ask. It doesn't reproduce their writing and isn't a substitute for reading them — and the attributions haven't been individually verified, which is why the skill's grounding rule tells the model to drop any name it can't stand behind. The questions stand on their own. If a lens keeps earning its place in your work, go read the source.

## Licence

MIT — see [`LICENSE`](LICENSE).
