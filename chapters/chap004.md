---
name: name
game_date: 2225-11-23
pcs: Olaf, Oni, Dirk, Sabaka, Oliver
levels: 5
heat: 4

meta:
  category: chapter
  campaign: Hostile
  sector: "[Near Earth Zone](https://sectorswithoutnumber.com/sector/E9FKrPjS8tsRmoryYMpe)"
  system: "[Perdurabo](https://sectorswithoutnumber.com/sector/E9FKrPjS8tsRmoryYMpe/system/PWrHAjd6P64k61Ga1PfQ)"
  world: 
  realm: 
  region: 
  location: ""
tags: 
---

> [!todo]- Planning checklist
> - [x] Abridge previous chapter and distribute XP
> - [x] Commit next chapter draft and check metadata
> - [x] Clean up previous chapter files, update tags and name, make final commit
> - [x] Update (battle)maps, if applicable
> - [x] Define at least one consequence in the world of the actions of the PCs on the previous session, record it in the faction game or notion file
> - [x] Think about characters, write motivations & hooks
> - [x] Evaluate new game date
> - [x] Review Abridged
> - [x] Evaluate Faction turn
> - [x] Review and organise Notions
> - [x] Detail strong start
> - [x] Outline situations:
> 	- [x] Draft locations 
> 	- [x] Draft NPCs
> 	- [x] Prepare random encounters table
> 	- [x] Prepare Owlbear, if applicable
> - [x] Review and order/highlight information pool.
> - [x] Update graph view
> - [x] Update random encounter tables
> - [ ] Print information pool (applicable parts)

> [!abstract] Doomborgs crewmembers motivation
> - [**Olaf**](../pcs/Olaf.md): Make money and find advanced life
> - [**Oni**](../pcs/Oni.md): Do something meaningful, that's helpful to societies that are underprivileged and exploited.
> - [**MadSpark**](../pcs/MadSpark.md): Make money and explode things
> - [**Sabaka**](../pcs/Sabaka.md): Find proof of Aliens similar to the one that attacked their family
> - [**Oliver**](../pcs/Oliver.md): Have a life outside earth

> [!quote]- Factions 
> ```dataview
> table without ID link(file.link, name) AS "Faction", meta.die as "Die"
> from "hostile/factions"
> WHERE contains(meta.category, "faction")=true
> sort id asc
> ```
> 
> ***Chain reaction from Tharsis to Haruna, then to Makita, then to ICO.***
> - [haruna](../factions/haruna.md) figured out that the Doomborgs are working for [tharsisMining](../factions/tharsisMining.md).
> - In the process, [makita](../factions/makita.md) is also made aware because of the scientist ([MariusRochambeau](../npcs/MariusRochambeau.md)) in Perdurabo [BrightsideStation](../locations/BrightsideStation.md) (information leaks)
> - The [ico](../factions/ico.md) traces the reason for the presence of the Doomborgs in [Defiance](../locations/Defiance.md) in Teegarden Star, and now are interested in the Doomborgs as well.

> [!warning] Intro
> - Previously: Abridged [link](https://github.com/efsalvarenga/terraCampaigns_published/blob/main/hostile/abridged.md#chapter-02-the-cold-tomb)
> - Cybereyes rule
> - Level up: what are the new powers of each character and how are they related to your experience so far?
> - MadSpark exploded a ship and killed several people. How does this affect him?
> - GM, remember that **Space is Hostile**.

> [!danger] Strong start

- [TheBoxer](../npcs/TheBoxer.md) is pissed off but also afraid: *Were them send by the [ico](../factions/ico.md)? Are they here to kill us?! Who sent you? Who fucking sent you??!!*
- The Boxer takes [Sabaka](../pcs/Sabaka.md) hostage. Sabaka faints and is unconscious.
- You will steal me another ship! (Players have to figure out how to find one to steal)

> [!example] Situations 

**[Popper](../../_gm/statblocks/Popper.md) continue to propagate through the Frostbreaker.**

**Research on the alien language filmed.**
- Some lore from Hard Light
- The brain species ([TraktorianoPerdurabo](../../_gm/statblocks/TraktorianoPerdurabo.md)) was enslaved by a belligerent species ([Metaliano XX121](../../_gm/statblocks/Metaliano%20XX121.md))
- The corpse found is a Traktoriano that took over another intelligent species

**Continue mining, but much faster now.**
- Need to map the ice and conclude the work **urgently** and **stealthily**.
- How can mining checks be easier (i.e. one single roll)
- How will PCs continue to mine?

**Get info [YashDutta](../npcs/YashDutta.md) down** if the mRNA mapping is successful.

**Encounters**

1. **Asteroid Field Drift:** The ship's navigation systems fail suddenly, leaving it drifting dangerously close to a dense asteroid field.
2. **Solar Flare Surge:** An unexpected solar flare disrupts the ship's electrical systems, causing critical systems to shut down temporarily.
3. **Pirate Ambush in the Nebula:** While navigating through a nebula, the ship is ambushed by pirates hiding within the gas clouds, jamming communications and demanding surrender.
4. **Hull Breach from Space Debris:** High-speed space debris from an old satellite collision punctures the hull, causing a rapid decompression in one of the living quarters.
5. **Alien Parasite Infestation:** The crew discovers an alien parasite [Popper](../../_gm/statblocks/Popper.md) aboard the ship, which begins to interfere with the electrical systems and crew health, spreading through the ventilation system.

| id|prompt                  |
|--:|:-----------------------|
|  1|`encounter: 3 l5h2e1w2` |
|  2|`encounter: 2 l7h2e3w2` |
|  3|`encounter: 4 l3h1e1w1` |
|  4|`encounter: 5 l2h1e1w0` |
|  5|`encounter: 5 l2h0e1w1` |
|  6|`encounter: 2 l4h2e2w0` |
|  7|`encounter: 4 l2h1e0w1` |
|  8|Effect only             |
|  9|`encounter: 6 l0h0e0w0` |
| 10|`encounter: 4 l0h0e0w0` |

> [!info]- Information pool
> ![_informationPool](../_informationPool.md)

> [!tip] Interaction table 
> 
> ```dataview
> TABLE without ID link(file.link, name) as Entity, file.folder as Type, file.outlinks as "Further interactions"
> FROM outgoing([[]]) 
> SORT file.folder ASC
> WHERE contains(file.folder, "hostile/")
> ```

