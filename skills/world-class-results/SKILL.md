---
name: world-class-results
description: Use when the user asks to rate work out of 10, find gaps, push it to 10, or make something world class, best-in-class, or top 1%. Also use when reviewing a draft, deliverable, feature, page, or design before it ships; when work is technically finished but feels flat, generic, mid, or "good enough"; or when the user asks "how would you make this better?" or "what's missing?"
---

# World Class Results

## Overview

Most AI output stops at **7/10**: correct, complete, forgettable. It stops there because nothing in the loop forces it higher — there is no bar, no judge, and no penalty for shipping competent work.

This skill installs that pressure. It replaces "is it done?" with **"is it the best version of this that exists?"**

**The loop:** Bar → Score → Gaps → Fix → Verify → Rescore → Stop.

**The one idea that makes it work:** *You cannot rate something without a standard, and you cannot invent the standard after you've seen your own work.* Set the bar first, or the score is self-congratulation.

## When to Use

**Use when:**
- The user says: "rate this out of 10", "find the gaps", "push it to 10", "make it world class", "make it the best", "top 1%", "what's missing?"
- You have just produced a substantial deliverable (page, doc, feature, campaign, design, analysis, plan) and are about to hand it over
- Work is correct but unremarkable — it does the job and nothing more
- Stakes are real: it goes public, a client sees it, money or reputation rides on it
- You are reviewing someone else's artifact and they want honest calibration

**Do NOT use when:**
- The task is a quick factual answer, a one-line edit, or a mechanical chore — the overhead exceeds the value
- The user has explicitly asked for a fast draft, a rough sketch, or "just get it working"
- You have not produced anything yet (use it *on* an artifact, not on an intention)
- You are mid-flow on a plan the user already approved — finish, then run this

**Cost note:** a standard pass is cheap (one extra reasoning cycle). Expert Panel mode (below) is expensive. Do not enter Panel mode uninvited.

## The Iron Rules

Break these and the skill produces flattery instead of quality.

1. **The bar comes before the score.** Name what 10/10 means for *this* artifact, and name a real-world comparator, before you rate anything.
2. **No score without evidence.** Every number cites a specific observable in the artifact. "Structure: 6 — sections 2 and 4 both explain pricing." A number with no citation is deleted, not defended.
3. **Never award your own first draft a 9 or 10.** Not once. If you think it's a 10, you have not found the bar yet.
4. **Overall score ≤ lowest dimension + 1.** World class fails at the weakest link. An average hides the thing that kills you.
5. **Fix, don't propose.** Default is to *apply* the improvements. Only list-without-doing when the fix needs a decision, an asset, or access you don't have — and then say exactly what you need and from whom.
6. **Verify before you claim.** Ran the tests, opened the page, re-read it end to end, checked the number. No verification, no "fixed".
7. **Score down as readily as up.** A rescore that only ever goes up is not a rescore.
8. **Stop on purpose.** Declare the stop condition and honour it. Polishing forever is a failure mode, not diligence.
9. **Scope guard.** "Push to 10" means *this thing, better*. It does not mean a bigger thing. Improvements that expand scope get listed for the user, not built.
10. **The last point is a decision, not more effort.** 8 → 10 is almost never "add more". It's one opinionated choice: a cut, a stance, a reframe, a single detail nobody else would bother with.

## The Loop

### 0. Frame (3 lines, always)

**First, the wrong-artifact check.** Should this exist, in this form, at all? If the honest answer is that the real fix is a different artifact, a product change, or deleting it — **say that in line one of your response, before the scorecard.** Then rate what's in front of you on its own terms anyway. Naming the wrong artifact *is* the world-class answer; burying it in a closing note is not.

Then:
- **Artifact:** what exactly is being rated (name the file / section / deliverable)
- **Judge:** who decides if this is good — the actual audience, named. "A CFO skimming on a phone", not "users".
- **Bar:** what 10/10 means *to that judge*, plus a named real-world comparator you're measuring against.

If you cannot name a comparator, you don't know the field well enough to rate it. Say so, and go find one.

### 1. Score
Pick 4–6 dimensions from `references/rubric.md` (or write your own if the artifact is unusual). Weight them — they are not equal.

Score each 1–10 against the ladder in `references/calibration.md`, with a cited observable. Then apply Rule 4 for the overall.

### 2. Gaps
For each dimension below the target, write the gap as a **specific closable delta**, not a complaint:
- ❌ "The copy could be stronger" → ✗ not actionable
- ✅ "The headline states a category, not a promise — no reader has a reason to continue past line 1. Fix: lead with the outcome and the timeframe."

Rank gaps by **points gained ÷ effort**. Do the top of that list.

### 3. Kill shot (adversarial pass — mandatory)
Find the hardest question this artifact can be asked, and answer it. Steel-man it. If you can't answer it, that's your top gap regardless of where it ranked.

**Derive the question; don't reach for a famous name.** A lens is a question, not a person — see `references/lenses.md`. In priority order:
1. **From the comparator** — what did whoever made it decide, or leave out, that we didn't? (No lookup needed. Usually the sharpest.)
2. **From the field** — name the artifact's actual field narrowly, then find who or what sets the standard in *that* field. A published standard beats a personality: it's explicit and checkable.
3. **From the user** — "whose work should I be measuring this against?" They usually know their field better than you do.

**Grounding rule:** you may not cite a name you cannot ground. If you can't state what they actually did, drop the name and keep the question. An unattributed sharp question beats a confidently misattributed one, and inventing a framework is never acceptable.

Then run the **subtraction pass**: what gets better if you *delete* something? Length, a feature, a caveat, a section, an adjective. Most 8s become 9s by removal.

### 4. Fix
Apply the fixes. Actually edit the artifact.

### 5. Verify
Ground-truth the changes per `references/verification.md`. Code: run it. Copy: read it cold. Numbers: recompute. Claims: check the source.

### 6. Rescore & Stop
Rescore with the **same rubric and weights** — no moving the goalposts.

**Stop when any is true:**
- Overall ≥ target (default 9) and no open gap worth ≥1 point
- Two consecutive rounds gained < 0.5 total — you're polishing, not improving
- The remaining gap needs something you don't have → stop and name the ask
- Round 3 reached (default hard cap)

**Then report residual gaps honestly.** A 9/10 with one named unfixable gap is a better result than a claimed 10 with a hidden one.

## Output Contract

Terse. The improved artifact is the deliverable; the scorecard is the receipt.

```
WORLD CLASS PASS — <artifact>
Judge: <who> · Bar: <what 10 means> · Comparator: <named>

DIMENSION        W   BEFORE → AFTER   EVIDENCE
<name>          .3      6  →  9       <one line, specific>
<name>          .3      7  →  9       <one line, specific>
<name>          .2      4  →  8       <one line, specific>
<name>          .2      7  →  8       <one line, specific>
OVERALL                 5  →  8.6     (capped by <weakest dim>)

Kill shot: <expert's objection> → <how it's answered, or not>
Cut: <what was removed>
Open: <gap> — needs <what> from <who>
Stopped: <which stop condition fired>
```

Keep it under 20 lines. If the scorecard is longer than the improvement, you did it backwards.

**Reader is non-technical?** This contract is still the record, but it is not the opening line — lead with the plain-English verdict and gloss the jargon before the table. See `references/plain-output.md`.

## Depth Modes

**Choose the mode before step 0. Quick is the default. Standard must be earned.**

### Quick — use unless a Standard trigger fires
Three to six lines, inline: the score with one cited reason, the single biggest gap, the fix — applied. **No scorecard, no dimension table, no kill shot, no rescore.**

### Standard — only when ALL THREE hold
1. The artifact is a file, document, page, or feature — **not** a sentence, paragraph, tweet, subject line, or single chat message
2. It took real work to produce, or real money or reputation rides on it
3. There is more than one way it can fail

Fewer than three? Quick. **If the scorecard would be longer than the artifact, you are in the wrong mode.**

### Expert Panel — opt-in, and rarely offered
Derive 3–5 lenses for this artifact's actual field and score against each — see `references/lenses.md`. Mix 2–3 home-field lenses with at least one deliberately foreign one. Materially slower and more expensive.

**Offer it at most ONCE per conversation, and only when the artifact is BOTH high-stakes (public, paid, or reputational) AND substantial (a multi-section document, a shipped feature, a full page — not a single asset).** Both, not either.

Already offered once? Don't offer again. In doubt? Don't offer. **An offer that appears on every pass is noise, and noise gets ignored** — which destroys the signal for the artifact that genuinely warrants it.

> Standard pass, or Expert Panel? Panel derives several field-specific lenses and scores against each — sharper, notably slower and more expensive.

Proceed with Standard as the default if the user doesn't answer.

## Red Flags — you are producing flattery, not quality

| Signal | What it means |
|---|---|
| Every dimension scores 8 or 9 on the first pass | You wrote the rubric to fit the work. Re-derive the bar from the comparator. |
| The score went up but the artifact barely changed | You rescored your feelings. Diff the artifact — no diff, no lift. |
| Gaps are adjectives ("clearer", "punchier", "more engaging") | Not gaps. Rewrite as closable deltas with a named fix. |
| You awarded a 10 | Almost always wrong. A 10 must survive a named expert reading it cold. |
| No comparator named | The rating is uncalibrated. It means nothing. |
| You cited an expert you can't ground | Fabricated attribution. Drop the name, keep the question. |
| The lens came from a list rather than the field | Force-fitting. Cialdini on a surgical checklist finds nothing. Derive from the artifact. |
| The scorecard is longer than the artifact | Wrong mode. You owed them Quick. |
| You offered Expert Panel again | Once per conversation, both gates, or not at all. |
| The artifact shouldn't exist and you said so at the end | Line one, or it doesn't count. |
| The fix list grew every round | Scope creep wearing a quality costume. Apply Rule 9. |
| You claimed "fixed" without running/reading it | Rule 6. Go verify. |
| Round 4+ | You blew the stop condition. Ship it and name what's left. |

## Common Mistakes

- **Rating the process instead of the artifact.** "I researched thoroughly, 9/10." Nobody is buying your research. Rate the thing.
- **Averaging away a fatal flaw.** Four 9s and a 3 is not an 8. It's a 4 (Rule 4).
- **Confusing complete with excellent.** Complete = 7. Excellent starts above it.
- **Improving the easy dimension.** You polish prose because it's pleasant, while the offer underneath is the 4.
- **Sandbagging to look rigorous.** Scoring your own work a 3 so the "improvement" looks big is the same dishonesty as inflating. Score it where it is.
- **Silent scope expansion.** Adding features under the banner of quality.
- **Burying the honest answer.** If the artifact is fundamentally the wrong thing, say that in line one. That *is* the world-class response.

## References

- `references/rubric.md` — dimension libraries by artifact type, weighting
- `references/calibration.md` — the 1–10 ladder, anti-inflation rules, evidence standard
- `references/lenses.md` — how to derive the right lenses for any field, plus worked examples
- `references/verification.md` — ground-truth checks by artifact type
- `references/plain-output.md` — presenting a pass to a non-technical reader
- `examples/worked-example.md` — a full pass, start to finish
- `tests/scenarios.md` — pressure scenarios for validating this skill
