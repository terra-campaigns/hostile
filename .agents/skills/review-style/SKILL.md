---
name: review-style
description: Review and polish a campaign file for the Hostile setting voice. Use when a markdown file in campaigns/, directory/, systems/, or statblocks/ needs its prose brought into line with the industrial used-future, corporate horror, and terse survival tone. Takes one file path as argument.
argument-hint: path to the markdown file to review (relative to repo root)
---

# Review Style

Apply the Hostile setting voice to a campaign content file.
The goal is **minimal surgical edits that maximise flavour** — not a rewrite.

## Before editing: ask two questions

When invoked, **always ask the user these two questions** before doing any work. Use a multi-choice prompt.

### 1. Depth

> How deep should this review go?

- **Quick** — Use `.agents/AGENTS.md` and nearby repo files only. Fast, good for routine polish.
- **Deep** — Also read reference PDFs from the Google Drive campaign folder to calibrate tone and lore against source material. Slower, better for important or lore-heavy files.

If **Deep** is selected, read the most relevant PDF(s) from:
`/Users/efsa/Library/CloudStorage/GoogleDrive-estevao.alvarenga@gmail.com/My Drive/RPG/campaigns/hostile/`

Priority order for tone calibration:
1. `Hostile` core rules — primary setting voice (corporate dread, blue-collar sci-fi).
2. `Gradient Descent` — AI identity horror, abandoned industrial megastructure tone.
3. Any 24XX modules related to the current mechanics.

Read enough to absorb voice. Treat PDF content as Tier 3 canon: influence for tone and texture, not automatic Hostile canon.

### 2. Scope

> How broad should the review be?

- **Single file** — Review only the target file.
- **Vicinity** — Review the target file, then also review files it links to directly and sibling files in the same folder. Edit each file that needs it.
- **Broad** — Review the target file's entire content area (e.g. all of `campaigns/gradient-descent/` or all of `directory/`). Edit each file that needs it.

## Files to read before editing

**Always required to be in context:**
- `.agents/AGENTS.md` — for the canonical style rules, tone, and aesthetics.
- The target file itself.

**Also read for cross-reference (do not edit unless scope includes them):**
- Nearby files in the same folder or parent folder, to absorb local naming conventions, existing tone, and linked content.

## What to change

1. **Prose voice.** Sharpen sentences toward the Hostile register:
   - Terse industrial prose: workplace realism, corporate dryness, slow dread, sensory grime, and ordinary people trying to survive bad systems.
   - Blue-collar sci-fi, industrial used-future (worn ships, CRTs, grime), corporate horror, and survival against bad odds.
   - British English, with a very small touch of zaibatsu bureaucracy.
   - Short, readable sentences. One sentence per line when practical.
   - Do not over-flourish. A light, dry hand is better than purple prose.

2. **Mechanical text.** Polish for readability, but never alter values, stats, dice, costs, or game meaning. If a hook or stat block reads flatly, you may tighten the wording — but the information must be identical.

3. **Formatting.** Follow existing conventions:
   - Skip a line between paragraphs, not within bulleted lists.
   - Preserve YAML front matter exactly as-is (keys, values, order).
   - Preserve all Liquid includes, Dataview queries, and Jekyll comment blocks verbatim.
   - Preserve all internal links exactly as they are (relative paths, `.md` extensions).
   - Preserve image references and gallery entries exactly.

## What NOT to change

- YAML front matter values (title, parent, nav_order, type, hooks, images, etc.).
- Liquid tags (`{% include ... %}`, `{% comment %}...{% endcomment %}`).
- Dataview code blocks.
- Internal link paths or link text that serves as a proper noun or canonical name.
- Game-mechanical values: dice, costs, hit points, inventory, stat lines.
- Content that is already in good voice — do not edit for the sake of editing.

## Procedure

1. **Ask** the two questions (Depth and Scope).
2. Read `.agents/AGENTS.md` for the full style and tone reference.
3. If **Deep**: read reference PDFs as described above.
4. Read the target file.
5. Read 2–3 nearby files in the same folder (siblings or parent index) to calibrate local tone and naming.
6. If **Vicinity** or **Broad** scope: identify the full set of files to review based on the selected scope.
7. For each file in scope, identify passages where the prose is flat, generic, overly modern, or out-of-voice. Focus on:
   - Descriptions that lack texture (sensory grime, corporate bureaucracy, or mechanical grit).
   - Sentences that are too long or too explanatory.
   - Mechanical text that is awkward but could be tightened without changing meaning.
8. Edit each file directly. The user will review changes line-by-line in the IDE.
9. If a file is already well-voiced, say so and skip it.

## Calibration examples

These are illustrative, not prescriptive. Use them to calibrate intensity.

**Too flat:**
> The space station is dark. The android is standing there looking at you. It wants to kill you.

**Too purple:**
> The stygian void of the colossal orbital platform wept tears of oxidized blood as the synthetic abomination, eyes glowing with the malice of a thousand dying suns, prepared to unleash its cosmic wrath upon your fragile mortal forms.

**In voice:**
> The sector 4 airlock cycles with a grinding thud. Backup lighting flickers across the bulkheads, catching the reflective sheen on the infiltrator unit's faceplate. It raises a rivet gun, wordless.

**Too flat:**
> You find a datapad. It says the corporation knew about the alien virus but didn't tell the workers because it would cost too much money to fix.

**In voice:**
> A cracked datapad logs the quarterly risk assessment. The biological contaminant was noted six months ago. Operations deemed the mortality rate an acceptable loss compared to the cost of a quarantine shutdown.

## Rules

- Never invent new lore, names, NPCs, locations, or continuity.
- Never remove content. If something reads poorly, improve it — do not delete it.
- When in doubt, leave it alone. The lightest edit that brings a passage into voice is the best edit.
- If the file is already well-voiced, say so and make no changes.
