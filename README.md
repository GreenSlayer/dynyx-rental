# dynyx-rental
Advanced QBCore Vehicle Rental Script

| Join my discord server [here](https://discord.gg/A4gVRjnvaE) |
| ------------------------------------------------------------ |

## Preview: https://streamable.com/it5fck

## How to Install
1. Drag dynyx-rental into your resources folder then ensure dynyx-rental in your cfg file.
2. Go to qb-core/shared/items.lua and paste this
```lua
--Dynyx-Rentals
["rentalpapers"]				 = {["name"] = "rentalpapers", 					["label"] = "Rental Papers", 			["weight"] = 0, 		["type"] = "item", 		["image"] = "rentalpapers.png", 		["unique"] = true, 		["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Yessir I rented this!"},

```
3. Go to qb-inventory or lj-inventory / html / images and add in the images I put in that images folder.
4. Go to qb-inventory or lj-inventory / html / js / app.js and under line 546 paste this
```lua
        } else if (itemData.name == "rentalpapers") {
            $(".item-info-title").html('<p>'+itemData.label+'</p>')
            $(".item-info-description").html('<p>'+itemData.description+'</p><p>Name: '+itemData.info.name+'</p><p>Vehicle: '+itemData.info.veh+'</p>');
```            


# Configuration

If you want to change the prices I made a config.lua where you can change all that or the location of the Rental or the ped.


## Dependencies
# QBCore - https://github.com/qbcore-framework/qb-core
# qb-target - https://github.com/qbcore-framework/qb-target
