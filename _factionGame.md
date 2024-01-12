# Overview
***Faction turns on days `01` and `21` on `odd` months, and `11` on `even` months***

The faction / corporation presence below is only relevant on the American sector of NEZ. For other regions of space (or Earth) a new table must be made.

```dataview
table without ID link(file.link, name) AS "Faction", id AS "ID", stats[1].force as "Force", stats[0].cunning as "Cunning", stats[2].wealth as "Wealth"
from "hostile/factions"
WHERE contains(meta.category, "faction")=true
sort id asc
```

```dataview
table without ID link(file.link, name) AS "Faction", id AS "ID", power AS "Power", features AS "Feat", trouble AS "Trbl", cohesion AS "Cohs", dominion as "Domn", interest.glasrath AS "I1", interest.ffkaEast AS "I2", interest.rurkinar AS "I3", interest.mercians AS "I4", interest.turnskull as "I5", interest.acrisae as "I6"
from "hostile/factions"
WHERE contains(type, "faction")=true
sort id asc
```

# Next turn on 2225-11-21

Try faction system with one roll dice pool on small tray. Run by writing. Use tarot for ideas if necessary (until I find random tables - GB has some?)

1. **Balance**: 
2. **Goal**: 
3. **Action**: 

# 2225-11-01

**Haruna**
1. **Balance**: done
2. **Goal**: New - Blood the enemy (Makita) - Inflict 9 dmg. XP = 2
3. **Action**: Buy asset - Cyberninjas

**Makita**
1. **Balance**: done
2. **Goal**: New - Intelligence Coup - Destroy 3 cunning assets. XP = 2
3. **Action**: Buy asset - Cyberninjas

**Tharsis**
1. **Balance**: done
2. **Goal**: New - Intelligence Coup - Destroy 5 cunning assets. XP = 3
3. **Action**: Attack
	1. Mercenaries x ICO's Informers at The Solomons - success: 6 dmg - informers are destroyed {1 of 5 of goal reached}
	2. Zealots x ICO's Postech Industry at The Solomons - fail, no counter.

**ICO**
1. **Balance**: done
2. **Goal**: New - Wealth of Worlds - Spend 12 FacCreds. XP = 2
3. **Action**: Buy asset - Vanguard Cadre in the Solomons


## Factions

## Background actors
***wwn334***

# Turns log

## 2225-10-11

Creation.
