---
name: 
game_date: 2226-01-01
pcs: 
levels: 
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
> ![_tracker](../_tracker.md)

> [!abstract] Doomborgs crew members motivation
> - **Olaf**: Make money and find advanced life. Don't lose another crewmember.
> - **Oni**: Do something meaningful, that's helpful to societies that are underprivileged and exploited. Learn if the alien corpse found poses any threat to humanity.
> - **Danny**: Lay low and avoid earth. Make some cash when possible.
> - **Sabaka**: Find proof of Aliens similar to the one that attacked their family
> - **Oliver**: Have a life outside earth

> [!quote] Factions 
> 
> ```dataview
> table without ID link(file.link, name) AS "Faction", (h + e + r) as "Challenge", h as "H", e as "E", r as "R"
> from "hostile/factions"
> WHERE contains(meta.category, "faction")=true
> sort id asc
> ```
> 

Encounter: 5, 4, 5, 4, 1, 1
Turn: R
- Makita 6d 16, Tharsis 7d 30: +1 Makita -> Makita signs MOU with Tharsis to operate Perdurabo
- Haruna 3d 10, Lebkuchen 2d 2: -1 Leb
- Sky 3d 10, ICO 4d 10: Draw
- If it was a solo encounter, needs to roll higher than HEW and lower than Ch to gain.

> [!warning] Intro
> - Tom has +1 SS min.
> - How much ice did you mine?
> - GM: remember that **Space is Hostile**.
>  
> **Tarot cards**
> - Forgetfulness
> - Future

> [!danger] Strong start


New year!!

Before metadimensional travel: alarm that the change in mass centre and the hull breach might impact safety.

Metalian investigating the ship and learning from it. Think of very fast invisible movement. Noises!


> [!example] Situations 

During spike drill fusion reactor stops working. They need to leave the capela to repair it. The Metaliano will be very interested, but will avoid violence. But will, unknowingly, terrorise them. Noises and smells!

After arriving in teegarden, Metaliano will depart with his ship. But he has left a tracer in the Frostbreaker.

mRNA in the air:
- Someone that goes crazy with mRNA and sees the construction of Nibiru

![](https://i.imgur.com/GN7cbRo.png)


**Meeting update with [JohnMcLeod](../npcs/JohnMcLeod.md)**
What are the updates on the new contract?
- Payment of 100k for their service (bombing, jeopardising, info, etc)
- Payment of another 50k for vanquishing
- You can receive the Ship as payment if you'd like. As is. Or pay for its damages.


Ship needs repair, but Eliana needs to get to Solomons. Pays 100k for her rescue?

Final payment
**Massive hull repair, and expand the ship for a multi-purpose ship: check hostile ships!** Crew needs to pay for damage.



End. Overview of possible missions.

Join the Aetherium Programme






> [!bug] Random encounters


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

