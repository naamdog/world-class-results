# Verification — how to earn the word "fixed"

Rule 6 of the skill: **verify before you claim.** This file says what verification means per artifact type. If you cannot run the check, say the check was not run — do not soften it into a claim.

## The standard

A claim is verified when you have **observed the new state**, not when you have made the edit that should have produced it.

| Not verification | Verification |
|---|---|
| "I updated the function to handle null." | You ran it with null and saw the result. |
| "The copy is clearer now." | You re-read it cold, from the top, in the reader's context. |
| "Fixed the layout on mobile." | You looked at it at 375px. |
| "The numbers now add up." | You recomputed the total. |
| "Added the citation." | You opened the source and confirmed it says that. |

## By artifact type

### Code
- Build passes / typecheck clean
- Tests run — and at least one test that would have caught the specific bug you just fixed
- The actual path exercised once by hand (not just the happy path)
- Empty, null, huge, concurrent, offline: pick the two most likely for this change and try them
- If you changed behaviour, the diff is read once more before claiming done

### Web page / UI
- Rendered and viewed, not just written
- 375px and desktop width
- Keyboard tab path reaches the primary action
- Colour contrast on the smallest text
- Empty / loading / error states seen, not assumed
- Console clean

### Copy / marketing
- Read from the top, cold, at reading speed — not scanned as an editor
- Every number, name, date, price and claim traced to a source you can point at
- The five-second test: what is it, who for, why now — answerable from the top of the page alone
- Read the first line alone. Does it earn the second?

### Document / report / proposal
- The conclusion is findable in the first 10% of the document
- Every load-bearing claim has support, and the support is stronger than the claim
- Section headings read alone as a coherent argument
- One pass for words doing no work

### Data / analysis
- Recompute the headline number by a second method — if they disagree, you learned something
- Sample size and base rate stated
- One alternative explanation for the finding, addressed
- Look at the raw rows, not only the aggregate
- State what would falsify the conclusion

### Plan / strategy
- The first step is concrete enough to start tomorrow
- Something is explicitly *not* being done
- The premortem is written: it's six months on, this failed — why?
- Someone owns each step, or you name that nobody does

## When you cannot verify

Say so plainly, in the scorecard, in this shape:

> **Unverified:** the payment path — no test key available. Needs a sandbox key from <who> before this can be called done.

Three things that are never acceptable:
- Claiming verification you didn't do
- Silently dropping the dimension you couldn't check
- Scoring above 7 on an unverified dimension (calibration Rule 2)
