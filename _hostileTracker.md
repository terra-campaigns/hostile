
```dataview
table without ID link(file.link, name) AS "name", game_date AS "date", pcs, rank, xp, meta.sector as "sector", meta.system as "system", meta.world as "world", meta.location as "location"
from "hostile/chapters"
sort file.name asc
```

