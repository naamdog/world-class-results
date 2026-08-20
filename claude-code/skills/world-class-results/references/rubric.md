# Rubric — dimensions by artifact type

Pick **4–6** dimensions. Weight them to sum to 1.0. Fewer, well-chosen, weighted dimensions beat a long flat checklist.

## Universal dimensions (use when nothing else fits)

| Dimension | The question it answers |
|---|---|
| **Correctness** | Is it true, working, and free of errors? |
| **Fit to purpose** | Does it do the job the judge actually needs done? |
| **Clarity** | Can the judge understand it at their reading speed, first pass? |
| **Completeness** | Are the edges, failures, and awkward cases handled? |
| **Distinction** | Is there a reason to choose this over the obvious alternative? |
| **Finish** | Do the last 5% of details look deliberate? |

**Weighting heuristic:** weight by *what fails first in the real world*. For a legal doc, correctness is 0.4. For a landing page, correctness is table stakes at 0.1 and persuasion carries 0.35.

## By artifact type

### Software / feature / codebase
`Correctness .25` · `Design & simplicity .2` · `Failure handling .2` · `Readability .15` · `Performance .1` · `Testability .1`
- Does the simplest input path work, and the three ugliest ones?
- Would a new engineer understand the *why* without asking?
- What happens on empty, null, huge, slow, offline, concurrent, malicious?
- Is the abstraction hiding complexity or just relocating it?

### Marketing page / funnel / ad
`Offer clarity .25` · `Hook .2` · `Proof .2` · `Friction .15` · `Design credibility .1` · `Mechanics .1`
- In 5 seconds: what is it, who's it for, why now?
- Does the first line earn the second?
- Is the proof specific (numbers, names, artifacts) or adjectival?
- How many decisions between arrival and action? Can any be removed?

### Written document / report / proposal
`Argument .3` · `Structure .2` · `Evidence .2` · `Prose .15` · `Actionability .15`
- Is the conclusion stated before the reasoning, for a skimmer?
- Does every section earn its place, or is one of them there out of habit?
- Which claims are load-bearing, and are those the best-sourced?

### Analysis / data work
`Question framing .25` · `Method soundness .25` · `Honesty about uncertainty .2` · `Presentation .15` · `So-what .15`
- Is this the question worth answering, or the one that was easy to answer?
- What would have to be true for the conclusion to be wrong?
- Are confounders, sample size, and base rates addressed or ignored?
- Does it change a decision? If not, why does it exist?

### Design / UI
`Hierarchy .25` · `Clarity of action .2` · `Consistency .2` · `Accessibility .2` · `Craft .15`
- Where does the eye land first — is that the most important thing?
- Contrast, focus states, keyboard path, screen reader labels?
- Are the empty, loading, and error states designed, or default?

### Plan / strategy
`Diagnosis .3` · `Focus .25` · `Feasibility .2` · `Sequencing .15` · `Measurability .1`
- Does it name the actual obstacle, or list ambitions?
- What is it choosing *not* to do? (No trade-offs = no strategy.)
- What's the first irreversible step, and what does it cost to be wrong?

### Teaching / explanation / documentation
`Correct mental model .3` · `Cognitive load .25` · `Worked examples .2` · `Ordering .15` · `Retention aids .1`
- Does the learner leave with a model that keeps working on new cases?
- What's assumed that a real beginner doesn't have?
- Is the first example the simplest complete one?

## Writing your own dimensions

A good dimension is:
- **Independently scorable** — you can rate it without rating the others
- **Observable** — you can point at the evidence in the artifact
- **Failure-shaped** — it names a way the artifact can actually die

Bad dimensions: "quality", "professionalism", "polish" — too diffuse to score honestly, so they get an 8 by default.

Cap at 6. Beyond that you're producing a checklist, and checklists average out the very failure the weakest-link rule exists to catch.
