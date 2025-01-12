**The map "In Bohemia" is a template designed primarily for map and mod creators.**

In Bohemia 4x4km 4k<br/>
area: 4096x4096 m<br/>
resolution *_weight.png: 4096x4096 px<br/>

ground textures - AS+EU+US (reduced to 65): ✓<br/>
number of crops on the ground - densityMapHeightTypes (128): ✓<br/>
stubble rolling: ✓ (barley, rapeseed, grass, corn, oats, sorghum, soybeans, sunflowers, wheat)<br/>
multiple ground angles (32): ✓<br/>
number of farmlands (255): ✓<br/>
multifruit: ✓<br/>
possibility to draw all surfaces: ✓<br/>
possibility to draw fields (plowing...): ✓<br/>
add. decoFoliage + decoBush from all maps: ✓<br/>
disabled missions for Carrot, Beetroot, Parsnip, Cotton, Sugarcane: ✓<br/>
LUA: Utils.getFilename: # at the beginning redirects the path to the map folder: ✓<br/>
LUA: FruitTypeManager.loadDefaultTypes loads crops only from the map: ✓<br/>
possibility to place custom xml for "preplaced placeable" directly into the map: ✓<br/>

Changelog 1.0.0.1:

- added trainSystem (isPreplaced="true")
- fixes according to testRunner (trees, decoBushEU, ...)

Changelog 1.0.0.2:

- bug fix: "DPU: Frame buffer scaling error(larger than the primary)" Typically happens when doing field work such as plowing or cutting grass.<br/>
  map.xml - ```<weed filename="$data/maps/mapAS/config/weed.xml" /> -> <weed filename="map/config/weed.xml" />```
- added pedestrianSystem.xml and trafficSystem.xml

---

**Mapa "V Čechách" je šablona určená především pro tvůrce map a módů.**

In Bohemia 4x4km 4k<br/>
rozloha: 4096x4096 m<br/>
rozlišení *_weight.png: 4096x4096 px<br/>
 
zemní textury - AS+EU+US (zredukováno na 65): ✓<br/>
počet plodin na zemi - densityMapHeightTypes (128): ✓<br/>
rozjíždění strniště: ✓ (ječmen, řepka, tráva, kukuřice, oves, čirok, sója, slunečnice, pšenice)<br/>
více zemních úhlů (32): ✓<br/>
počet farmlandů (255): ✓<br/>
multifruit: ✓<br/>
možnost kreslit všechny povrchy: ✓<br/>
možnost kreslit pole (orbu...): ✓<br/>
dopl. decoFoliage + decoBush ze všech map: ✓<br/>
vypnuty mise pro Mrkev, Červená řepa, Pastyňák, Bavlna, Cukrová třtina: ✓<br/>
LUA: Utils.getFilename: znak # na začátku přesměruje cestu do složky mapy: ✓<br/>
LUA: FruitTypeManager.loadDefaultTypes načítá plodiny pouze z mapy: ✓<br/>
možnost umístit vlastní xml pro "preplaced placeable" přímo do mapy: ✓<br/>

Seznam změn 1.0.0.1:

- přidán trainSystem (isPreplaced="true")
- opravy dle testRunner (trees, decoBushEU, ...)

Seznam změn 1.0.0.2:

- oprava chyby: "DPU: Frame buffer scaling error(larger than the primary)" Obvykle se vyskytuje při práci na poli, jako je orba nebo sekání trávy.<br/>
  map.xml - ```<weed filename="$data/maps/mapAS/config/weed.xml" /> -> <weed filename="map/config/weed.xml" />```
- přidán pedestrianSystem.xml a trafficSystem.xml

