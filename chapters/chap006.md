---
name: Start of Dutta's fall
game_date: 2225-12-10
pcs: "[Olaf](../pcs/Olaf.md), [Oni](../pcs/Oni.md), [Oliver](../pcs/Oliver.md), [Danny](../pcs/Danny.md)"
levels: 7
heat: 

meta:
  category: chapter
  campaign: Hostile
  sector: "[Near Earth Zone](https://sectorswithoutnumber.com/sector/E9FKrPjS8tsRmoryYMpe)"
  system: "[Teegarden Star](https://sectorswithoutnumber.com/sector/E9FKrPjS8tsRmoryYMpe/system/EK7eZhRuSaUmzSTEwm7a) and [Perdurabo](https://sectorswithoutnumber.com/sector/E9FKrPjS8tsRmoryYMpe/system/PWrHAjd6P64k61Ga1PfQ)"
  world: "[Defiance](../locations/Defiance.md)"
  realm: 
  region: 
  location: "[BrightsideStation](../locations/BrightsideStation.md)"
tags: 
---

> [!todo]- Planning checklist & tracker
> - [x] Abridge previous chapter and distribute XP
> - [x] Commit next chapter draft and check metadata
> - [x] Clean up previous chapter files, update tags and name, make final commit
> - [x] Update (battle)maps, if applicable
> - [x] Define at least one consequence in the world of the actions of the PCs on the previous session, record it in notion file and change one faction's attribute (+/-)
> - [x] Think about characters, write motivations & hooks
> - [x] Take two Kult tarot cards to inform prep
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
> 
>> [!done]- Tracker 
>> ```dataview
>> table without ID link(file.link, name) AS "Chapter", game_date AS "Date", pcs as "PCs", levels as "Rank", meta.sector as "Sector", meta.system as "System", meta.world as "World", meta.location as "Location"
>> from "hostile/chapters"
>> sort file.name asc
>> ```

> [!abstract] Doomborgs crew members motivation & inspiration
> - **Olaf**: Make money and find advanced life
> - **Oni**: Do something meaningful, that's helpful to societies that are underprivileged and exploited. Learn if the alien corpse found poses any threat to humanity.
> - **Danny**: Lay low and avoid earth. Make some cash when possible.
> - **Sabaka**: Find proof of Aliens similar to the one that attacked their family
> - **Oliver**: Have a life outside earth
> 
> **Kult tarot**: Sathariel and 4 hourglass 

> [!quote] Factions 
> ```dataview
> table without ID link(file.link, name) AS "Faction", stats[0].cunning + stats[1].force + stats[2].wealth as "Level", meta.die as "Die", stats[0].cunning as "C", stats[1].force as "F", stats[2].wealth as "W"
> from "hostile/factions"
> WHERE contains(meta.category, "faction")=true
> sort id asc
> ```
> 
> **Cunning round**
> - Makita 4 Vs 1 Lebkuchen: Makita's spies are aware of the Lebkuchen activist [CassianVireo](../npcs/CassianVireo.md) in Defiance.
> - Haruna harassing Makita
> 

> [!warning] Intro
> - Previously: Abridged [link](https://github.com/efsalvarenga/terraCampaigns_published/blob/main/hostile/abridged.md#chapter-02-the-cold-tomb)
> - Paid the 600 for Harry?
> - Who is the engineer and Comms now?
> - GM: remember that **Space is Hostile**.

> [!example] Situations 

- The Doomborgs receive a **new contract** that voids the exploration framework of the previous contract, but maintain taking down the directorship of [BrightsideStation](../locations/BrightsideStation.md)
	- The crew will be paid C5k for each Hull cargo space full of unrefined mRNA-rich ice. This value is doubled if the ice is refined.
- The Doomborgs try to find a mobile extractor micro refinery to install on their ship, but that was too difficult in a planet like [Defiance](../locations/Defiance.md). Oni sends a message to her friend in [TheSolomons](../locations/TheSolomons.md) and asks her to buy one and bring it to Brightside. The message ends with '*Don't rip me off*'.
- While trying to find an extractor, Danny inadvertently tells Harry Tungla that there was someone inside the box his trucker carried to the farm.
- They crew then decides to take [CassianVireo](../npcs/CassianVireo.md) with them to Brightside, for what she pays C2k.
- Flying off defiance is delayed in 4 days, due to weather. But even when the weather improves the [Frostbreaker](../objects/Frostbreaker.md) barely does it, with its fusion reactor shutting down due to load as the ship gains orbit.
- They dock the ship in a refuelling station in high orbit and get a new drone, and from there depart to Perdurabo

![](https://i.imgur.com/8iAc2zM.png)

- Upon arriving in Brightside, the Doomborgs learn that Dutta has fallen ill, and [RolandLomax](../npcs/RolandLomax.md) is now in charge. It became useful that the crew had a night drinking with Lomax when they first arrived in Perdurabo.

![](https://i.imgur.com/0PTNdEm.png)

- Lomax asks them to offboard the Frostbreaker and explains that in about 6 days a large [haruna](../factions/haruna.md) bank transport will arrive to carry the Novium ingots. A bank auditor will be on this ship, and Lomax intends to share the information he has about Dutta's embezzlement. 
- Lomax asks the Doomborgs to be around when this happens, to show strength against [YashDutta](../npcs/YashDutta.md)'s faction on the station.
- Lomax also mentions that another [tharsisMining](../factions/tharsisMining.md) ship recently refuelled in Brigthside, and the crew updates him that they also work for Tharsis. '*Why is Tharsis Mining involved in finding alien artefacts?*'.

![|400](https://i.imgur.com/dyogS6G.png)

- The crew goes back to the [ColdTomb](../locations/ColdTomb.md) to mine the mRNA-rich ice around the construction (that is now destroyed).
- Mining was a dangerous endeavour, where one drone and many ice cargoes were lost.
- Incidentally, the crab infestation in the ship attacks Danny while he is piloting, in one of the most critical moments: Olaf and Oni are on an EVA, while Bennet is monitoring the harness. Danny is alone in the bridge and tries to fight off the crabs. He was unsuccessful and falls with a mortal face wound when one of the crabs lands on his face.

![](https://i.imgur.com/U3rM5gA.png)

- The other crew members rush back when they notice Danny screaming, and Olaf in a heroic save fends off multiple crabs while grappling an unconscious Danny.
- The Doomborgs are able to seal the crabs in the bridge and Bennet with his laser sharp medic skills is able to stabilize Danny - who looked already dead.
- After this accident, the crew decides to go back to Brightside with a partial load. They would come back later with someone skilled in piloting the drones.
- Upon arrival on Brightside, Danny is rushed into the infirmary. Olaf speaks with the doctor, [SuyinIndrani](../npcs/SuyinIndrani.md), who supports Dutta and thinks Lomax has poisoned the director. She also shares that Lomax is not liked by his own employees.
- The personnel on the station start to go about quickly now, as the bank's transport is arriving. Lomax is ready to share what he knows.

> [!info]- Information pool
> ![_hostileInformationPool](../_hostileInformationPool.md)

> [!tip] Interaction table 
> 
> ```dataview
> TABLE without ID link(file.link, name) as Entity, file.folder as Type, file.outlinks as "Further interactions"
> FROM outgoing([[]]) 
> SORT file.folder ASC
> WHERE contains(file.folder, "hostile/")
> ```

