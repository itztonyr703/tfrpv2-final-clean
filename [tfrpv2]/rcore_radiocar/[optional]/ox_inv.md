Alot of people have problem with ox_inv and its back compatability with "ESX.RegisterUsableItems" so its best to switch in config to ox inv.

enable: Config.ox_inv = true

---

Add these to the item list to the ox_inv:
```LUA
['radiocar_dismounter'] = {
    label = 'radiocar_dismounter',
    weight = 250,
    close = true,
    consume = 0,
    client = {},
    server = {
        export = 'rcore_itemradio.radiocar_dismounter',
    },
},
['radiocar'] = {
    label = 'radiocar',
    weight = 250,
    close = true,
    consume = 0,
    client = {},
    server = {
        export = 'rcore_itemradio.radiocar',
    },
},
```
---