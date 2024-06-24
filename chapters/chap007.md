---
name: Chaos in Brightside
game_date: 2225-12-30
pcs: "Olaf, Oni, Oliver, Danny, Sabaka"
levels: 13
heat: 

meta:
  category: chapter
  campaign: Hostile
  sector: "[Near Earth Zone](https://sectorswithoutnumber.com/sector/E9FKrPjS8tsRmoryYMpe)"
  system: "[Perdurabo](https://sectorswithoutnumber.com/sector/E9FKrPjS8tsRmoryYMpe/system/PWrHAjd6P64k61Ga1PfQ)"
  world: ""
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
> - [x] Update oracle
> - [x] Draw two tarot cards to inform prep
> - [x] Evaluate Faction turn
> - [x] Review Abridged
> - [x] Define at least one consequence in the world of the actions of the PCs on the previous session, record it in notion file and change one faction's attribute (+/-)
> - [x] Think about characters, write motivations & hooks
> - [x] Evaluate new game date
> - [x] Review and organise Notions
> - [x] Detail strong start
> - [x] Outline situations:
> 	- [ ] Draft locations 
> 	- [ ] Draft NPCs
> 	- [ ] Prepare random encounters table
> 	- [ ] Prepare Owlbear, if applicable
> - [x] Review and order/highlight information pool.
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
> - **Olaf**: Make money and find advanced life. Don't lose another crewmember.
> - **Oni**: Do something meaningful, that's helpful to societies that are underprivileged and exploited. Learn if the alien corpse found poses any threat to humanity.
> - **Danny**: Lay low and avoid earth. Make some cash when possible.
> - **Sabaka**: Find proof of Aliens similar to the one that attacked their family
> - **Oliver**: Have a life outside earth

> [!quote] Factions 
> ```dataview
> table without ID link(file.link, name) AS "Faction", stats[0].cunning + stats[1].force + stats[2].wealth as "Level", meta.die as "Die", stats[0].cunning as "C", stats[1].force as "F", stats[2].wealth as "W"
> from "hostile/factions"
> WHERE contains(meta.category, "faction")=true
> sort id asc
> ```
> 
> **Turn: force**
> - Makita Genetics Solomons: 1, Lebkuchen Defiance: 3
> - Book of the Sky Solomons: 2, Tharsis Mining American: 3, Haruna Biolabs Solomons: 2, ICO American Sector: 3
> 

> [!warning] Intro
> - Tom has +1 SS min.
> - How much ice did you mine?
> - GM: remember that **Space is Hostile**.
>  
> **Tarot cards**
> - Forgetfulness
> - Future

> [!example] Situations 

**Arrival of Sabaka**
- The banker transport arrives and, while they wait and prepare to disembark, a burnt escape pod also arrives in the station.
- Inside the pod is [Sabaka](../pcs/Sabaka.md), unconscious. There is also a significant amount of transparent and reflective goo.
- A technician takes the goo to the station laboratory for study.
- Sakaba is taken to the infirmary, where they are evaluated. [Oliver](../pcs/Oliver.md) Bennet helps Dr [SuyinIndrani](../npcs/SuyinIndrani.md) and finds a metallic object inside Sabaka's anus. Sabaka wakes up as the object is being removed.
- [Olaf](../pcs/Olaf.md) and [Oni](../pcs/Oni.md) go to the [Frostbreaker](../objects/Frostbreaker.md) to study the egg like metallic object.
- Bennet stays in the infirmary with Sabaka and [Danny](../pcs/Danny.md), who were recovering from the [PopperSwarm](../statblocks/PopperSwarm.md) attack.

![|400](https://i.imgur.com/7c4MxZ1.png)

**Research the metallic egg and the alien language filmed.**
- Oni and Olaf are in the Frostbreaker, and start researching the alien bas relief from the cold tomb, recorded on film month ago.
- **Metallic egg**
	- Oni researches the egg. It is made of some unknown metal, with hardness 6.5 (slightly harder than a steel alloy)
	- The egg does not crush when hit repeatedly with a hammer, but no further destructive tests were conducted.

![](https://i.imgur.com/gCdfOrE.png)

- **Film**
	- Bas relief is ritualistic in nature
	- On the right side, multiple species are shown to be linked somehow. This can be an evolutionary link, a carrier link, some kind of multi symbiosis or maybe some hive mind. They do remind Earth animals somehow.
	- On the left side, a technological insect humanoid species seems to control the other civilisation. They are clearly aliens to the beings on the right side.
	- It seems that the approach taken by the insectoids is to swarm a civilisation and conquer. They are shown with weapons.

![|400](https://i.imgur.com/8Q6BYmV.png)

- As they look at the video, Olaf becomes very interested in the insectoid aliens and his mind is suddenly taken by the memories and emotions of his abduction decades ago. His mind rebuilds a perfect image of these aliens as Olaf starts to become anxious.

![|400](https://i.imgur.com/8D39rQN.png)

- Half a second later a flash of light is seen from one of the windows of the Frosbreaker, Olaf curls himself in the floor, repeating some kind of mantra. Oni looks at the windows and sees that some kind of explosion has happened on the high deck of Brigthside.

**Bombs in Brightside**
- For those in Brigthside, a tremor is felt, and the alarm goes off first, then lights turn off, while emergency lights turn on.
- Bennet and Danny come down from the infirmary carrying Sabaka, to meet Olaf and Oni again on the cargo bay.
- The banker transport is preparing to depart, to avoid any kind of terrorist act that seems to be taking place in the station. As the belly of the ship is exposed, Olaf and Oni immediately notice some kind of explosive attached to the ship.
- Olaf rapidly informs this on open channel to the banker transport and 20 seconds later a escape pod leaves the ship. A second escape pod leaves a minute later. The transport does not explode, yet.

**Investigate Dutta's documents**
- Olaf speaks with [RolandLomax](../npcs/RolandLomax.md) and take the documentations that would expose Dutta from Roland's hands. Roland is ok with it, feeling it is the best route of action.
- Oni quickly parse these documents and finds:
	- Embezzlement of [YashDutta](../npcs/YashDutta.md), who stole money during the construction of Brightside, alonside the son of one of the private minor investors.
	- Purchase orders from **Recombination Group** ([logo](https://i.imgur.com/1ouPtfu.png)) for shipment of Novium - which might explain the fact the the station was not meeting Haruna's production quotas.
	- MoU with [makita](../factions/makita.md)'s subsidiary for ice mining rights - although the two companies are competitors and such an extraction agreement would not be allowed in the new space law from the [ico](../factions/ico.md).

![](https://i.imgur.com/xE2V8yO.png)

**Repairs on the fusion reactor**
- Oni and Bennet go to the high deck to help repair the fusion reactor. The core is not damaged, but most auxiliary systems are destroyed. It will take weeks, if not months, for a complete fix. A crew of technicians start the work.

**The Haruna Banker**
- [ElianaMurovec](../npcs/ElianaMurovec.md) and her bodyguard leave the transport
- Olaf softly tells her of the documents the crew has in their possession.
- Eliana agrees to a private conversation inside her pod where Olaf shares what he knows, and the documentation that proves it.
- Eliana is flabbergast, and after thinking of her options, she offers to pay Olaf to take her back to [TheSolomons](../locations/TheSolomons.md).
- Olaf explains he needs to discuss it with his crew first, and leaves the pod.

![](https://i.imgur.com/q6m1Pir.png)

**Conversation with [CassianVireo](../npcs/CassianVireo.md)**
- Bennet finds Cassian again, in the midst of turmoil in the station.
- Cassian explain she has been working in the Midnight Sun bar, and wishes to go back and leave Brightside, as she is afraid of what is happening.
- Bennet promises to contact her again before they depart.

**Decisions**
- The crew meets again in the cargo bay, and decide they will take the banker.
- Before they leave, Bennet, Danny and Sabaka go to the Midnight Sun bar and speak with [MarionHardlee](../npcs/MarionHardlee.md). Marion confirms Cassian was never an employee on the bar. The crew decides to leave her behind, and it would be too risky to confront her now.
- Bennet decides to inform the risk of Cassian to Roland, who becomes very unpleased. Roland demands that the Frosbreaker crew take Cassian back, if there is a risk she is the bomber. It was the Frostbreaker who brought Cassian to the station in the first place.
- The conversation does not go well, and it turns to violence. Bennet quickly stab Roland twice before Roland decides to give up this fight. Roland covers his wound, and decide to go to the infirmary.
- The crew discusses and decide it is best to leave Roland alive.
- They board Eliana in the Frostbreaker and depart the station.

**Leaving Perdurabo, and...**
- The Frostbreaker scoops hydrogen fuel from the penumbra of The Beast and are ready to go.
- Around two days later, close to the edge of the Perdurabo system, something hard and heavy hits the Frostbreaker.
- Alarms go off:
	- Mass centre of the ship has chanced, something is attached to the Frostbreaker...
	- There is an attempt to breach the hull...
	- Nothing is seen, but the hull is cut open cold...
	- A flap of the hull is pulled to the outside, opening a hole...
- The crew quickly move to the citadel of the ship once more. They take the metallic egg, inside a Faraday cage, with them. The rest of the ship looses pressure to space.
- It will be an uncomfortable week travelling to [Defiance](../locations/Defiance.md), packed inside the citadel, with 2 additional people, and maybe *something* outside...

> [!bug] Random encounters

1. **Malfunctioning Airlock** (Ship Malfunction): The ship's primary airlock randomly opens and closes due to a faulty circuit, risking decompression.
2. **Derelict Research Vessel** (Other Spaceships): A seemingly abandoned research vessel emits a distress signal, hiding secrets and potential danger.
3. **Black Market Deal Gone Wrong** (Humans in Starports): A routine supply run at a remote starport turns tense when a black market deal nearby goes south.
4. **Colony Under Siege** (Space Colony): A mining colony on a nearby moon sends out a distress call, under attack by unknown forces.
5. **Nest of Space Leeches** (Alien Creatures): While refueling near a gas giant, the ship becomes infested with space leeches that drain power from the hull.
6. **Meteor Shower** (Panic Events): A sudden meteor shower forces the crew to navigate through perilous debris or take significant hull damage.
7. **Solar Flare Surge** (Environment Effects): A powerful solar flare from the red giant star disrupts electronic systems and increases radiation levels.
8. **Emergency Drill Confusion** (Starship Training Drill Alarm): A routine emergency drill causes confusion and panic when it's mistakenly believed to be a real emergency.
9. **Ghost Ship Encounter** (Non-Obvious Space Hostility): The crew encounters a ship that appears and disappears erratically, hinting at possible cloaking technology or supernatural phenomena.
10. **Hyperspace encounter** (Non-Obvious Space Hostility): Repellent Hostile scenario.
11. **Oxygen Garden Sabotage** (Ship Malfunction): The ship's oxygen garden starts failing after a crew member discovers signs of sabotage, threatening life support.
12. **Fusion reactor of Frostbreaker breaks** (Ship Malfunction)

|  id | prompt                  |
| --: | :---------------------- |
|   1 | `encounter: 3 l5h2e1w2` |
|   2 | `encounter: 2 l7h2e3w2` |
|   3 | `encounter: 4 l3h1e1w1` |
|   4 | `encounter: 5 l2h1e1w0` |
|   5 | `encounter: 5 l2h0e1w1` |
|   6 | `encounter: 2 l4h2e2w0` |
|   7 | `encounter: 4 l2h1e0w1` |
|   8 | Effect only             |
|   9 | `encounter: 6 l0h0e0w0` |
|  10 | `encounter: 4 l0h0e0w0` |

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

