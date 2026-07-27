# World Class Results

Self-contained instruction file for agents that read `AGENTS.md` (OpenAI Codex, Cursor, Amp, Jules, and others). Canonical spec: [`skills/world-class-results/SKILL.md`](skills/world-class-results/SKILL.md).

Drop this at the root of a repo, or merge the section below into an existing `AGENTS.md`.

---

## When to run the World Class pass

Run it when the user says *rate this out of 10*, *find the gaps*, *push it to 10*, *make it world class / best-in-class / top 1%*, *what's missing?* — and unprompted whenever you are about to hand over a substantial deliverable that is correct but unremarkable, or that goes public, to a client, or carries money or reputation.

Skip it for quick factual answers, one-line edits, mechanical chores, explicit rough drafts, and work not yet produced.

## The problem it solves

Finished AI output lands at **7/10**: correct, complete, forgettable. Nothing in the normal loop pushes higher, because there is no bar, no judge, and no cost to shipping competent work.

**You cannot rate something without a standard, and you cannot invent the standard after seeing your own work.**

## The loop

**0 · Frame** — three lines, always:
- **Artifact:** what exactly is being rated
- **Judge:** who decides it's good, named specifically ("a CFO skimming on a phone", not "users")
- **Bar:** what 10/10 means to that judge + a **named real-world comparator**

No comparator = uncalibrated rating = meaningless. If you can't name one, say so.

**1 · Score** — 4–6 weighted dimensions (weights sum to 1.0), each scored 1–10 with a **cited observable** from the artifact.

**2 · Gaps** — write each as a closable delta with a named fix, never an adjective. Rank by points gained ÷ effort.

**3 · Kill shot** — find the hardest question this artifact can be asked, steel-manned, and answer it. **Derive the question, don't reach for a famous name** — a lens is a question, not a person. In priority order: from the **comparator** (what did whoever made it decide, or leave out, that we didn't?), from the **field** (name it narrowly, then find who or what sets the standard there — a published standard beats a personality), or from the **user** (ask whose work to measure against). *Grounding rule:* never cite a name you can't ground, and never invent a framework — drop the name, keep the question. Then the **subtraction pass**: what improves by deletion?

**4 · Fix** — apply the fixes. Edit the artifact. Don't just list them.

**5 · Verify** — observe the new state. Run it, render it, recompute it, re-read it cold.

**6 · Rescore & stop** — same rubric, same weights. Report residual gaps honestly.

## Iron rules

1. Bar before score.
2. No score without a cited observable.
3. Never award your own first draft a 9 or 10.
4. **Overall ≤ lowest dimension + 1.** An average hides the thing that kills you.
5. Fix, don't propose — unless it needs a decision, asset, or access you lack; then name what you need and from whom.
6. No verification, no "fixed".
7. Scores move down as readily as up.
8. Declare and honour a stop condition.
9. Scope guard: *this thing better*, not a bigger thing.
10. The last point is a decision, not more effort — a cut, a stance, a reframe, a specific, a finish detail.

## The ladder

**10** best in the world · **9** top 1%, only stylistic objections remain · **8** top 5%, one real weakness · **7** competent and forgettable — *this is where finished output lands by default* · **6** meets the literal ask, misses the intent · **5** serviceable draft · **3–4** needs a rewrite · **1–2** doesn't do the job.

Ceiling of 7 on anything you have not verified end to end.

## Stop conditions

Stop when any fires — then report what's left:
- Overall ≥ target (default 9) and no open gap worth ≥ 1 point
- Two consecutive rounds gained < 0.5 — you're polishing, not improving
- The remaining gap needs something you don't have → stop and name the ask
- Round 3 reached

## Output

The improved artifact is the deliverable; the scorecard is the receipt. Keep it under 20 lines.

```
WORLD CLASS PASS — <artifact>
Judge: <who> · Bar: <what 10 means> · Comparator: <named>

DIMENSION        W   BEFORE → AFTER   EVIDENCE
<name>          .3      6  →  9       <one line, specific>
OVERALL                 5  →  8.6     (capped by <weakest dim>)

Kill shot: <objection> → <answer, or not>
Cut: <what was removed>
Open: <gap> — needs <what> from <who>
Stopped: <condition>
```

## Depth modes

- **Quick** (small artifacts): score + one cited reason, biggest gap, fix. Inline, no scorecard.
- **Standard** (default): the loop above.
- **Expert Panel** (opt-in only): derive 3–5 lenses for the artifact's actual field — 2–3 home-field plus at least one deliberately foreign, which is where the non-obvious gaps live. See [`skills/world-class-results/references/lenses.md`](skills/world-class-results/references/lenses.md). Offer in one line for high-stakes work only; default to Standard if unanswered.

## Red flags — you are flattering, not improving

Everything scored 8+ on the first pass · the score rose but the artifact barely changed (diff it — no diff, no lift) · gaps are adjectives ("punchier", "clearer") · you awarded a 10 · no comparator named · you cited an expert you can't ground · the lens came from a list instead of the field · the fix list grew every round · you claimed "fixed" without checking · you're on round 4.

## Reference files

Under `skills/world-class-results/`: `references/rubric.md` (dimensions by artifact type) · `references/calibration.md` (ladder + anti-inflation rules) · `references/lenses.md` (deriving lenses for any field) · `references/verification.md` (what "fixed" requires) · `examples/worked-example.md`.
