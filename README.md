---
title: Home
layout: home
nav_order: 1
permalink: /

footer_content: Hostile is adapted from the <a href="https://www.paulelliottbooks.com/hostile.html">Hostile</a> setting books by Paul Elliott from Zozer Games, for private use only.

---

# Hostile

![](imgs/hostile.png)

**Hostile** is a tabletop RPG set in a universe that combines elements of gritty science fiction, horror, and political intrigue. It is heavily inspired by the aesthetics and themes of classic 1970s and 1980s sci-fi movies such as "Alien," "Blade Runner," and "Outland." The game is designed to evoke a sense of being on the edge of known space, where human life is cheap, corporate interests dominate, and the unknown looms at every corner.

Space is a hostile environment, not just because of its physical dangers but also due to the socio-political landscape. The game emphasises themes of corporate greed, the expendability of human life in the pursuit of profit, and the struggle of the working class against oppressive systems. Political intrigue plays a significant role, with factions within and between corporations, as well as other groups with their agendas, vying for power and influence.

A list of books published is available on [Zozer Games Website](https://www.paulelliottbooks.com/hostile.html).

## Themes

- **Gritty sci-fi**: Characters are blue collar spacers, working dangerous jobs in the hostility of space. Every hazard is trying to kill characters all the time. Everything in the world that isn’t an active corporate interest is run down, decaying, and stained. Earth is a traditional cyberpunk setting, but in space there is much less "street violence", and cybernetics are generally not reliable. *List of hazards: lack of oxygen, vacuum, radiation, excessive cold, excessive heat, aliens, alien infections, poisonous atmosphere, high pressure atmosphere, high decompression rate and high gravity acceleration in large bodies.*
- **Horror & fear**: A cynical world, filled with everyday people going about their jobs is a common starting point for good horror stories. Humans are not alone in the universe. Alien predators have been found in multiple worlds, and sometimes even in asteroids. Advanced alien societies had their remnants found by earth explorers, but intelligent life is still to be observed. Some theorists say they have been found, and are among us. And none knows when and where aliens will be found.
- **Political intrigue & treachery**: Several factions with their own motives and goals. Everyone is out for their own interests, and they’re trustworthy only so long as their interests align with yours. Everyone assumes that deals will be kept only so long as they’re mutually profitable and relationships will only continue as long as they offer benefits to all parties. Factions are classified in 3 groups:
	- **Technology & resourceful factions**: the strongest group, mostly formed by Mega Corporations and their subsidiaries.
	- **Belief factions**: their Influence is subtle and ideological, mostly formed by religions and conspiracy theorists
	- **Rising authoritative supra-government**: early years of an attempt of Earth governments to regain control from the Mega Corporations hands - the Terran Mandate.

*More detail on the Hostile Setting, pages 9-10.*

## Aesthetic

The aesthetic of **Hostile** is defined by its gritty, realistic approach to science fiction. Technology is not clean and advanced but rather functional, often run-down, and always with a practical purpose. Cybernetics are unreliable, and life in space is hazardous, with threats such as lack of oxygen, radiation, and alien infections being commonplace. The setting is designed to feel lived-in, with every location showing signs of wear and decay, reflecting the hard life of those who dwell in space.

## Timeline

<!-- QueryToSerialize: LIST without ID timestamp + ", " + sector + ": " + "["+ title + "](https://terra-campaigns.github.io/"+ regexreplace(file.path, ".md", "") + ") (" + parent + ")" FROM "hostile/chapters" SORT timestamp, nav_order asc -->
<!-- SerializedQuery: LIST without ID timestamp + ", " + sector + ": " + "["+ title + "](https://terra-campaigns.github.io/"+ regexreplace(file.path, ".md", "") + ") (" + parent + ")" FROM "hostile/chapters" SORT timestamp, nav_order asc -->
- September 12, 2223, FSZ: [Poems](https://terra-campaigns.github.io/hostile/chapters/950.20) (Anthology)
- October 27, 2225, NEZ: [The Frostbreaker](https://terra-campaigns.github.io/hostile/chapters/chap001) (mRNA Probe)
- October 29, 2225, NEZ: [The Cold tomb](https://terra-campaigns.github.io/hostile/chapters/chap002) (mRNA Probe)
- November 04, 2225, NEZ: [Defiance and back](https://terra-campaigns.github.io/hostile/chapters/chap003) (mRNA Probe)
- November 23, 2225, NEZ: [MadSpark perishes](https://terra-campaigns.github.io/hostile/chapters/chap004) (mRNA Probe)
- December 07, 2225, NEZ: [The Boxer's box](https://terra-campaigns.github.io/hostile/chapters/chap005) (mRNA Probe)
- December 10, 2225, NEZ: [Start of Dutta's fall](https://terra-campaigns.github.io/hostile/chapters/chap006) (mRNA Probe)
- December 30, 2225, NEZ: [Chaos in Brigthside](https://terra-campaigns.github.io/hostile/chapters/chap007) (mRNA Probe)
- January 10, 2226, NEZ: [Hitchhiker](https://terra-campaigns.github.io/hostile/chapters/chap008) (mRNA Probe)
- February 18, 2226, NEZ: [Clues](https://terra-campaigns.github.io/hostile/chapters/chap009) (mRNA Probe)
<!-- SerializedQuery END -->

---
# GM content

Beyond any official Hostile books, a few others are used for procedural content generation.


- **Stars Without Number**, to assist on random procedural generation for locations, NPCs, encounters - sci-fi aesthetics
- **Cities Without Number**, to assist on random procedural generation for locations, NPCs, encounters - cyberpunk aesthetics

---
# This Repository

This repository contains all necessary game documents.
It is also from this Repository that this website is published.

## Contribute

Feel free to suggest edits on any files on this repo through Pull Requests.
Merged Pull Requests automatically builds the website.

If you want to localhost the website for testing purposes, you need to install jekyll ([instructions for macOS](https://jekyllrb.com/docs/installation/macos/)). After doing so, navigate to the repository folder and execute the following commands;

```
echo '3.1.3' >> .ruby-version
gem install bundler jekyll
bundle install
```

You are now able to localhost the website.
You can do so by:

```
bundle exec jekyll serve
```

and then browse to http://localhost:4000.

You can make real time changes in the files, and see result live on your browser.
