
```dataview
table without ID link(file.link, name) AS "Faction", id AS "ID", tier AS "Tier", features AS "Feat", trouble AS "Trbl", cohesion AS "Cohs", dominion as "Domn", interest.glasrath AS "I1", interest.ffkaEast AS "I2", interest.rurkinar AS "I3", interest.mercians AS "I4", interest.turnskull as "I5", interest.acrisae as "I6"
from "campaign/hostile/factions"
WHERE contains(type, "faction")=true
sort id asc
```
