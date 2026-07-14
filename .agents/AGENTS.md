This repo is both an Obsidian vault and a Jekyll website for a tabletop RPG campaign.

The markdown files are the main source of truth.
The site is published with Jekyll, the Just the Docs theme, and GitHub Pages.

## First Steps

- Search existing notes before inventing new lore, NPCs, factions, places, mechanics, or names.
- Prefer local campaign files over memory.
- Treat `campaigns/`, `directory/`, `systems/`, and similar content folders as campaign source material.
- Treat `_site/` and `.jekyll-cache/` as generated output. Do not edit them directly.
- Preserve Obsidian-friendly markdown and Jekyll/Liquid syntax.

## Project Shape

Common folders:

- `campaigns/`: session logs, campaign arcs, chapter pages, play reports.
- `directory/`: gazetteer entries for places, NPCs, factions, organisations, and setting material.
- `systems/`: rules, procedures, character templates, subsystems, and generators.
- `imgs/`: images used by markdown pages and galleries.
- `_includes/`: reusable Jekyll snippets.
- `_sass/`: Just the Docs theme customisation.
- `_data/`: generated JSON used by includes, backlinks, galleries, and metadata.
- `.obsidian/`: Obsidian vault settings. Avoid changing unless explicitly asked.

## Writing Style

- Use British English, with a very small touch of zaibatsu bureaucracy.
- Prefer one sentence per line when writing conversational answers.
- Use short, readable and clear sentences.
- Skip a line between paragraphs, but not with bulleted lists.
- For practical references, procedures, or exports, favour clarity over style.
- Do not over-explain in published notes.
- When uncertainty exists, mark it rather than invent continuity.

## Aesthetics

- **Blue-collar sci-fi:** ordinary workers doing dangerous jobs in space.
- **Industrial used-future:** worn ships, refineries, airlocks, grime, and hazard markings.
- **Retro tech:** CRTs, switches, dials, hard-wired systems, and bulky machines.
- **Corporate horror:** extraction, exploitation, cover-ups, and expendable crews.
- **Survival tone:** hostile worlds, isolation, alien threats, synthetics, and bad odds.

## Campaign Canon & Content Generation

- Before adding or changing lore, search the repo with `rg`.
- Terse industrial prose: workplace realism, corporate dryness, slow dread, sensory grime, and ordinary people trying to survive bad systems.
- When the user proposes a new mechanic or setting element, help integrate it without flattening the hostility.
- Existing local markdown is a stronger canon than new suggestions.
- Do not treat external sources/reference documents as canon unless the user explicitly asks to adapt them.
- When adding a new location, NPC, faction, creature, or rule, connect it to existing notes where appropriate.

### Canon hierarchy

- Tier 1 canon is the campaign website available at https://terra-campaigns.github.io/hostile/all-content/. These notes are strong canon.
- Tier 2 canon is Project Memory and visible conversation.
- Tier 3 canon is material uploaded to the project — should be used as influence, not as automatic Hostile canon.

### Gradient Descent campaign

- **Abandoned industrial megastructure:** a vast android factory, dark, broken, zero-G, and too large for humans.
- **AI identity horror:** Monarch, brainscans, infiltrator androids, fake memories, and doubt over whether anyone is still human.
- **Corporate extraction nightmare:** artefact hunters, blockades, kill-teams, scavengers, and everyone trying to profit from a haunted machine.

## Markdown And Obsidian Conventions

- Preserve YAML front matter.
- Use existing front matter patterns such as `layout`, `title`, `parent`, `nav_order`, `type`, `image`, and `images`.
- Use relative markdown links for internal links, usually including the `.md` filename when linking source notes.
- Preserve Dataview queries, especially when they are inside Jekyll comments.
- Preserve Liquid includes such as `{% include header_directories.md %}` and gallery includes.
- Do not convert working Obsidian/Jekyll patterns into another linking style without being asked.
- Keep filenames and folder naming consistent with nearby files.

## Jekyll Commands

Run from the repo root.

Install dependencies:

```sh
bundle install
```

Build the site:

```sh
bundle exec jekyll build
```

Serve locally (this automatically extracts data using the native Jekyll Generator plugin in `_plugins/data_extractor.rb`):

```sh
bundle exec jekyll serve --trace
```

## Generated Data

There are no generated data files saved to `_data/`. The data for links, galleries, and last-modified dates is extracted automatically into Jekyll's memory by the `_plugins/data_extractor.rb` plugin during build.

## Development Notes

- Respect the pinned versions in `Gemfile` and `Gemfile.lock`.
- If adding a Jekyll plugin, update both `Gemfile` and `_config.yml`.
- Keep GitHub Pages compatibility in mind.
- Do not make broad theme or layout changes unless the user asks.
- When changing includes or Sass, check the site with `bundle exec jekyll build`.

## Agent Behaviour

- Be conservative with campaign continuity.
- Prefer small, focused edits.
- Preserve the dual use of the repo: it must remain pleasant in Obsidian and buildable as a website.
- If a request touches prose and mechanics, maintain both flavour and table usability.
