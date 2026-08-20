# Calibration — the 1–10 ladder and the anti-inflation rules

The whole skill collapses if the scores are made up. This file is the defence.

## The ladder

Scores are **absolute against the field**, not relative to your effort or to the time you had.

| Score | Meaning | Test |
|---|---|---|
| **10** | Best in the world at this specific thing. A named expert would ship it under their own name. Nothing can be added that doesn't subtract. | Could you show it to the comparator and have them ask who made it? |
| **9** | Top 1%. A hostile expert's objections are all stylistic preference. | Every remaining criticism starts with "I'd have..." rather than "this is wrong/missing". |
| **8** | Top 5%. Visibly professional. Exactly one real weakness left. | You can name the weakness in one sentence. |
| **7** | Good. Does the job. Competent, unremarkable, seams visible. | **This is where finished AI output lands by default.** |
| **6** | Adequate. Meets the literal ask, misses the intent. | A reasonable person would accept it and not remember it. |
| **5** | Serviceable draft. Obvious gaps a reader will notice. | You'd send it with a "rough version" caveat. |
| **3–4** | Incomplete or wrong in places. | It would need a rewrite, not an edit. |
| **1–2** | Does not do the job. | Wrong artifact, wrong audience, or broken. |

**Anchor point to memorise: complete and correct is a 7.** Everything above 7 is earned by something beyond correctness.

## Anti-inflation rules

**1. Evidence or delete.**
Every score cites a specific observable — a line, a section, a measurement, a behaviour. No citation, no score.
- ✅ `Clarity: 6 — the second paragraph defines "activation" but the term is used three times before it.`
- ❌ `Clarity: 8 — well written and easy to follow.`

**2. First-pass ceiling of 7 on anything unverified.**
You may not score above 7 on a dimension you have not actually checked end to end. Not read it fully? Not run it? Ceiling of 7.

*Partly verified counts as unverified.* If any part of what the dimension rests on is unchecked — one untested query string, one unexecuted migration, one screen you didn't open — the ceiling applies to the whole dimension. Then say which part is unchecked and what would close it. The alternative is a score that quietly averages "proven" with "assumed", which is exactly what Rule 4 exists to prevent one level up.

**3. Never a 9 or 10 on your own first draft.** No exceptions. The first draft has not yet met a hostile reader.

**4. A 9 or 10 requires a named comparator.**
"9/10" is meaningless alone. "9/10 — matches the structure discipline of a Stripe docs page, one weaker example" is a claim you can defend.

**5. Scores move in both directions.**
If a rescore reveals something the first pass missed, the score goes *down*. A monotonically increasing scorecard is a broken instrument.

**6. Weakest-link cap: `overall ≤ min(dimension) + 1`.**
Then take the lower of that and the weighted average. World class is not an average — one broken dimension is what people remember.

*Worked:* dimensions 9, 9, 8, 3 (equal weight). Weighted average = 7.25. Weakest-link cap = 3 + 1 = 4. **Overall = 4.** Correct: nobody calls something world class when one quarter of it is broken.

**7. No sandbagging.**
Deliberately scoring low to make the improvement look dramatic is the same dishonesty as inflating, pointed the other way. Score where it actually is.

**8. Same rubric on rescore.**
Same dimensions, same weights, same ladder. Changing the rubric mid-pass to produce a higher number is score fraud. If the rubric was genuinely wrong, say so explicitly, then re-score the *before* state under the new rubric too.

## The hostile reader test

Before awarding anything 9+, run this concretely:

> A named expert in this domain has 30 seconds, no goodwill, and a reason to be unimpressed. What is the first thing they say?

If you don't have an answer, you haven't looked hard enough. If the answer is a real problem, you're not at 9.

## The 8 → 10 rule

The distance from 8 to 10 is almost never *more*. It is one of these:

- **A cut** — removing the section, feature, caveat, or adjective that was diluting it
- **A stance** — replacing balanced hedging with a defensible opinion
- **A reframe** — the same content addressed to a sharper judge
- **A specific** — one real number, name, date, or detail where there was a generality
- **A finish detail** — the thing nobody else bothers with (the empty state, the last sentence, the alt text, the error message)

If your plan to reach 10 is "add more", you have misdiagnosed. Go back to the gaps.

## Calibration self-check

You are inflating if:
- Nothing scored below 7 on the first pass
- Your improvements are all in the dimension you enjoy most
- The rescore rose by more than 2 points in a single round without a substantial diff
- You cannot state, in one sentence, what would make it a 10 that it isn't
