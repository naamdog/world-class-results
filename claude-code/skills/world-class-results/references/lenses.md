# Lenses — finding the right ones for *this* artifact

**A lens is a question, not a person.** The name is provenance. The question is the payload.

That distinction is the whole of this file. A fixed list of famous names is the wrong tool, for three reasons:

1. **Coverage.** Your artifact might be a veterinary anaesthesia protocol, a Hebrew liturgical translation, a structural load calculation, or a school safeguarding policy. No list of ten domains covers the field you're actually in.
2. **Force-fitting.** Given a list, a model reaches for the nearest listed name rather than admit the list doesn't apply — and you get Cialdini's principles applied to a surgical checklist. That is worse than no lens at all.
3. **Fabrication.** A model asked to "name five experts in X" will produce five confident names, some of whom did not write the thing attributed to them. A misattributed framework is a worse failure than a missing one.

So: **derive the panel from the artifact. Don't recite it.**

---

## The three sources, in priority order

### 1. Reverse-engineer from the comparator — always available, no lookup, no names

You already named a real-world comparator in step 0 of the loop. Interrogate it:

- What did whoever made this **decide** that we didn't even notice was a decision?
- What did they **leave out** that we put in?
- What does it do in the first five seconds / first screen / first paragraph that ours doesn't?
- What would it cost them, in reputation, to do it our way?

This is the strongest source and the most under-used. No expert needed, no search, no risk of fabrication — the exemplar is concrete and sitting in front of you. **If you run only one lens, run this one.**

### 2. Derive from the field — name the field precisely, then find who sets the standard

Name the artifact's **actual field**, as narrowly as you honestly can:

- ❌ "medicine" → ✅ "post-operative pain monitoring in small-animal practice"
- ❌ "marketing" → ✅ "B2B SaaS pricing-page design"
- ❌ "writing" → ✅ "regulatory submission summaries"

Then find the standard-setters *in that field*:

- **Web search, when you have it.** Look for the field's canonical texts, standards bodies, professional guidelines, established critiques.
- **Published standards beat personalities.** A standard (WCAG, ISO, a royal college guideline, a style manual, an RFC, a statutory code) is often a *better* lens than a person — explicit, checkable, and maintained by someone accountable. "Does this meet WCAG 2.2 AA?" is sharper than "what would a design expert say?"
- **Your own knowledge**, subject to the grounding rule below.
- **The artifact's own lineage:** whose work does it already cite, build on, or react against?

### 3. Ask the user — highest quality, cheapest, most skipped

One question, asked once:

> Whose work — or which standard — should I be measuring this against?

Practitioners carry a short list of people whose criticism would actually sting. That list beats anything derived. Ask when the artifact is high-stakes and the field is specialised.

---

## The grounding rule (non-negotiable)

> **You may not cite a name you cannot ground.** If you cannot state what they actually did — the specific work, book, paper, standard, or practice — drop the name and keep the question.

An unattributed sharp question is worth more than a confidently misattributed one.

- If names will be **shown to a third party**, verify them before they ship. Search, or cut them.
- If you're **uncertain but the question is good**, ask it without the name: *"A hard question from the reliability tradition: how many independent things must fail before this hurts someone?"* Same bite, no fabrication.
- **Never invent a framework name.** If you can't name the framework, describe the idea.
- The lens's authority comes from whether the question **finds something**, not from whose name is attached.

## What makes something a valid lens

| Test | Why |
|---|---|
| **Reduces to one question** | If you can't compress it to a question, it's a reading list, not a lens. |
| **Answerable with evidence from the artifact** | "Is this elegant?" isn't a lens. "What can be removed with no loss?" is. |
| **Can return a bad answer** | A lens that always passes is decoration. It must be able to fail the work. |
| **Recognised by practitioners in the field** | If nobody in the field would accept it as a standard, it's your taste wearing a costume. |
| **Not already covered** | Three lenses asking the same question in different accents is one lens. |

## How many, and which mix

**Three to five. Not ten.** Ten lenses on one artifact produces a shallow sweep; four sharp ones produce findings.

- 2–3 from the artifact's **home field** — these catch the competence failures
- **At least 1 deliberately foreign** — these catch the failures nobody in the field is looking for

| Artifact | Foreign lens that usually finds something |
|---|---|
| Landing page | *Evidence*: is a single one of these proof claims actually checkable? |
| Code | *Teaching*: could a competent newcomer learn this API without asking anyone? |
| Strategy doc | *Editorial*: is the argument legible, or is the reasoning buried under the conclusion? |
| Report | *Persuasion*: will the decision-maker act, or file it? |
| Product design | *Operations*: what happens to this on the worst day of the year? |
| Ops process | *Teaching*: can a new hire run it unaided on day one? |
| Anything technical | *Safety*: how many independent things must fail before someone gets hurt? |

## Running the panel

1. Derive 3–5 lenses. **State where each came from** — comparator, field, standard, or the user.
2. Ask each lens's question against the artifact. Answer with evidence. One question, one answer — not a summary of a framework.
3. Score each lens 1–10 on the ladder in `calibration.md`.
4. Take the **two lowest**. Those are your gaps.
5. Rejoin the main loop at Fix → Verify → Rescore.

---

# Appendix: worked examples of the reduction

**Demonstrations of the method, not a canon. Do not force-fit them.** If your artifact isn't squarely in one of these fields, derive your own — that is the entire point of the file above.

**Provenance:** these are practitioners and ideas widely cited in their fields, compressed by this author into a single diagnostic question each. The **questions** are the useful part and stand alone. The attributions have **not been individually verified** — treat them as pointers to look up, and apply the grounding rule before repeating any of them to a third party.

What to notice in each row: an entire body of work reduced to one question answerable with evidence from the artifact in front of you. **That compression is the skill.** Do it for your field.

### Engineering & software
- *Deep modules* (Ousterhout) — is the interface much simpler than the implementation, or is complexity pushed onto the caller?
- *Simple vs. easy* (Hickey) — is this actually untangled, or merely familiar?
- *Evolutionary design* (Fowler) — what's the next likely change, and what does it cost here?
- *Observability* — when this breaks at 3am for one user, can anyone tell why from the outside?
- *SLOs* (Google SRE) — what failure rate is acceptable, and is anything measuring it?

### Copywriting & direct response
- *Awareness stages* (Schwartz) — where is this reader on the awareness scale, and does the opening meet them there?
- *Enter the conversation* (Collier) — does this join the conversation already in the reader's head?
- *Headline discipline* (Ogilvy) — if only the headline is read, has anything been communicated?
- *Testability* (Hopkins) — what's claimed here that could actually be proven?
- *Hook / story / offer* (Brunson) — which of the three is weakest? (Usually the offer; usually people fix the hook.)

### Persuasion
- *Seven principles* (Cialdini) — which principle is doing the work, and is it earned or merely asserted?
- *Confirm and justify* (Warren) — whose existing belief does this confirm, whose suspicion does it justify?
- *Name it first* (Voss) — has the objection been said out loud before they have to raise it?
- *Framing* (Kahneman & Tversky) — framed as a gain where the loss frame would be twice as strong?

### Design
- *Less but better* (Rams) — what can be removed with no loss? Now remove it.
- *Affordances and feedback* (Norman) — can you tell what's clickable, and what happened after you clicked?
- *Don't make me think* (Krug) — where does the user pause and work something out?
- *Data-ink* (Tufte) — what proportion of the ink carries information?
- *WCAG 2.2 AA* (a standard, not a person) — contrast, focus order, keyboard path, labels. Checkable.

### Writing & editorial
- *Pyramid principle* (Minto) — is the answer first with support beneath, or is the reader made to wait?
- *Clutter* (Zinsser) — which words do no work? Cut and re-read.
- *Curse of knowledge* (Pinker) — what's assumed that the reader has no way of knowing?
- *Structure* (McPhee) — is this the only possible order, or the first one that occurred to you?

### Strategy
- *Diagnosis, policy, action* (Rumelt) — does it name the actual obstacle, or list ambitions?
- *Trade-offs* (Porter) — what is this explicitly choosing **not** to do? If nothing, there's no strategy.
- *Jobs to be done* (Christensen) — what job is this hired for, and what gets fired to do it?
- *Durability* (Helmer, 7 Powers) — if this works, what stops it being copied in six months?

### Decision-making
- *Base rates* (Kahneman & Tversky) — what normally happens to things like this?
- *Calibration* (Tetlock) — is the confidence numeric, and would you bet at those odds?
- *Premortem* (Klein) — it's six months on and this failed badly. Write the reason.
- *Inversion* (Munger) — what would guarantee failure, and is any of it present?
- *Tail risk* (Taleb) — is the worst case survivable or ruinous?

### Systems, operations & quality
- *System over person* (Deming) — would the fix be a better process, or a blamed individual? Only one works.
- *Five whys* (Toyota Production System) — ask why five times on the main defect. Where does it bottom out?
- *Theory of constraints* (Goldratt) — what's the actual constraint? Improving anything else changes nothing.
- *Leverage points* (Meadows) — intervening at parameters (weak) or at rules and goals (strong)?
- *Defence in depth* (Reason, Swiss cheese) — how many independent things must fail? If one, it's fragile.

### Teaching & explanation
- *The technique* (Feynman) — explain it to a smart 12-year-old. Where do you reach for jargon? That's your gap.
- *Cognitive load* (Sweller) — how many new things must be held at once? Above four, it fails.
- *Retrieval practice* (Make It Stick) — is there retrieval, or only exposure? Exposure feels like learning and isn't.
- *Worked-example effect* — is the first example the simplest **complete** one, or a toy that doesn't generalise?

### Evidence & data
- *Falsifiability* (Popper) — what observation would prove this wrong? If none, it isn't a claim.
- *Fooling yourself* (Feynman) — where is the easiest person to fool being fooled, and are you them?
- *Correlation ≠ causation* (Pearl) — is a causal claim being made from correlational evidence?
- *Look at the data* (Tukey) — has anyone seen the raw rows, or only the summary?
- *Analytic flexibility* (Ioannidis) — small sample, flexible analysis, motivated conclusion: how many apply?

### Safety & risk
- *Systems view of accidents* (Leveson) — does the failure story blame an operator, or the system that made the error likely?
- *Normalisation of deviance* (Vaughan) — which small exception has quietly become the routine?
- *Failure modes* (FMEA, a method not a person) — for each way this can fail: how likely, how bad, how detectable?
