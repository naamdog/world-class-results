# Worked example — a full pass

Artifact: a pricing page for a B2B scheduling tool. The first draft was complete, correct, and completely unmemorable — a 7 in the wild.

---

## 0. Frame

- **Artifact:** `/pricing` — hero, three plan cards, FAQ
- **Judge:** an ops manager at a 40-person company, comparing three tools in one browsing session on a Tuesday afternoon. Not a founder. Not technical. Has a budget and a boss.
- **Bar:** 10/10 = they can pick a plan in under 30 seconds without opening a competitor tab, and can justify the choice to their boss in one sentence.
- **Comparator:** Linear's pricing page — three tiers, one obvious default, plain-language limits, no asterisks.

## 1. Score

| Dimension | W | Score | Evidence |
|---|---|---|---|
| Offer clarity | .3 | 4 | Three plans, no recommended default. The middle card is styled identically to the others, so the page asks the visitor to do the comparison work itself. |
| Proof | .2 | 3 | "Trusted by growing teams." No names, no numbers, no logos. |
| Friction | .2 | 6 | Both CTAs say "Get started"; neither says whether a card is needed. Two of the six FAQ entries are about billing questions the cards should have answered. |
| Design credibility | .15 | 7 | Clean and consistent. Feature rows misalign across cards at 375px. |
| Mechanics | .15 | 8 | Annual/monthly toggle works. Prices correct. |

Weighted average = 5.15. Weakest link = 3 → cap = 4.
**Overall: 4/10.** The proof dimension is what kills it, and the average was hiding that.

## 2. Gaps, ranked by points ÷ effort

1. **No default plan** (+3 offer clarity, 20 min) — the page makes the buyer do the work. Fix: mark the middle tier "Best for teams of 20–100", visually elevate it.
2. **Proof is adjectival** (+4 proof, 40 min) — "growing teams" is a phrase, not evidence. Fix: three real customer names with team size, one metric.
3. **CTA ambiguity** (+2 friction, 10 min) — Fix: "Start free — no card required".
4. **FAQ doing the cards' job** (+1 friction, 15 min) — Fix: move the two billing answers onto the cards, cut the FAQ entries.
5. **Mobile misalignment** (+1 design, 20 min).

## 3. Kill shot + subtraction

**Lens derived from the comparator** — Linear's pricing page makes one plan obviously the answer and treats the others as edge cases. That's a decision we didn't know we were making. Sharpened into a question from the strategy tradition (Rumelt, *Good Strategy Bad Strategy*): **what is this page choosing not to do?**

The page tries to serve solo users, teams, and enterprise equally. It serves none of them. The Free tier is drawing attention away from the plan the business actually needs to sell.

**Answer:** demote Free to a text link under the cards. Not deleted — de-emphasised. The page now has an opinion.

**Subtraction pass:** cut the feature comparison table entirely (14 rows, of which 11 were identical across all three tiers). It existed to look thorough and its only effect was to make choosing harder.

## 4. Fix

Applied: 1, 2, 3, 4, 5, plus the Free demotion and the table cut.

## 5. Verify

- Rendered at 375px and 1440px — cards align
- Five-second test run cold: plan choice is obvious, "no card required" visible above the fold
- Customer names confirmed against the signed-reference list (two of the three had permission; the third was replaced with one that did)
- Keyboard tab reaches the primary CTA third
- Prices recomputed against the billing config

## 6. Rescore

| Dimension | W | Before → After | Evidence |
|---|---|---|---|
| Offer clarity | .3 | 4 → 9 | One elevated default with a named team-size fit; comparison table removed. |
| Proof | .2 | 3 → 8 | Three named customers with team sizes and one retention figure. Not yet a case study. |
| Friction | .2 | 6 → 9 | "No card required" on the CTA; billing answers moved onto the cards. |
| Design credibility | .15 | 7 → 8 | Mobile alignment fixed. Typographic scale still slightly loose vs. comparator. |
| Mechanics | .15 | 8 → 8 | Unchanged. |

Weighted average = 8.55. Weakest link = 8 → cap = 9.
**Overall: 4 → 8.6.**

**Open:** proof would reach 9–10 with one linked case study — needs a customer interview, which is a request to <owner>, not a page edit.
**Stopped:** target was 8.5; reached. Remaining gap needs an external input.

---

## What to notice

- The overall score started at **4**, not 7, because one dimension was a 3. The weakest-link rule is the whole reason this pass found the real problem.
- The largest single gain came from a **cut**, not an addition.
- The kill shot was a *foreign* lens (strategy, on a copy artifact) and it found the thing the copy lenses missed.
- It stopped at 8.6 and named honestly what it would take to go higher, instead of declaring a 10.
