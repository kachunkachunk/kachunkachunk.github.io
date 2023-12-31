---
layout: post
title: "Frogheim Plus' First Major Config Pass"
date: 2023-07-28 16:40:00 -0700
categories: games valheim
tags: games valheim
img_path: /assets/img
---
Okay, our first major pass through the config file is done!

Below you will find a summary of the changes I put into place, after observing folks' struggles (as well as being aware of my own, sure).

## Valheim Plus changes:

- Global Server and Client Improvements
  - Enabled First Person mode - toggle it on/off with F10.
- Game Rules, Difficulty, and Scaling
  - Slightly reduced enemy difficulty scaling while around other players.
  - Increased all experience/XP gains by 15%.
  - Increased food effect duration by 15%.
  - Increased armor item protection by 15%.
  - Increased weapon item durability by 20%.
  - Increased tool item durability (hammers, cultivators, hoes) by 300%.
  - Increased player maximum carry weight by 25%.
  - Increased auto-pickup range to 3 meters from 2.
  - Enabled feature to prevent accidental (and undesired) crop spacing overlap.
  - Decreased Guardian Buff cooldown to 600 seconds from 1200.
  - Disabled auto-unequip upon entering deep water (or swimming).
  - Reduced fall damage by 15%.
  - Increased block rating by 30%.
  - Increased stamina recovery per second by 15%
  - Reduced stamina drain while running, jumping, and encumbered by 30%.
  - Reduced stamina drain while sneaking by 100%.
  - Reduced stamina drain while swinging weapons by 20%.
  - Reduced stamina drain while cultivating and fishing by 30%.
- Building Mode
  - Allowed building/crafting in mystical areas.
  - Slightly increased comfort radius.
  - Actually enabled area/AoE repair (this was missed last time).
  - Enabled optional Grid Alignment function for building. Toggle it with F7 and hold Alt to align to grid.
- Inventory Management and Looting
  - Slightly increased inventory slot counts for carts and boats to match certain chest capacities.
  - Upon reclaiming your grave (and items), item stacks will attempt to merge, to save space.
  - Teleportation restrictions are removed (you could not previously carry metal ore/bars through, among other things).
  - **Base item weights globally reduced by 20%.**
  - **Max item stack sizes doubled.**
  - Dropped/lost items now float in water and are now retrievable.
  - Drop chances for non-guaranteed drop sources (such as scrap piles in dungeons) are doubled.
  - Slight increases in yields for some materials while chopping, mining, and picking.
  - Moderate increases in yields for copper and tin.
  - Wagon weight/capacity benefits improved by 20%.
- Crafting
  - Slightly increased allowed workbench improvement placement range.
- Production Structures
  - Bee hives produce twice as much honey per day.
  - **All production structures, including bee hives, now auto-deposit and auto-fuel with nearby chests up to 5m away.**
  - Fermenters produce twice the amount they used to.
  - Some production structures now show progress and time-to-produce figures on-screen.

## New Configuration

As an experiment, I've reordered the complete file into more manageable sections. It isn't perfectly grouped, probably, but I think it's an improvment. Disabled sections are pushed to the bottom of each respective section. If you want anything enabled or changed, please call it out in our Steam group chat, in-game, or on Signal. Changes require a quick game server restart.

<details>
<summary>Valheim Plus (Global Server and Client Improvements)</summary>
<div markdown="1">
```ini
[ValheimPlus]
; Section enabled: true|false
enabled = true
; Display the Valheim Plus logo in the main menu
mainMenuLogo = true
; Display the advertisement of the server hosting partner on the server browser menu
serverBrowserAdvertisement = false

[Server]
; Section enabled: true|false
enabled = true
maxPlayers = 16
disableServerPassword = false
; This setting adds a version control check to make sure that people that try to join your game or 
; the server you try to join has V+ installed. WE HEAVILY RECOMMEND TO NEVER DISABLE THIS!
enforceMod = true
; Changes whether the server will force its configuration file on clients that connect. Only 
; affects servers. WE HEAVILY RECOMMEND TO NEVER DISABLE THIS!
serverSyncsConfig = true
; If false, allows you to keep your own defined hotkeys instead of synchronizing the ones declared 
; for the server. Sections need to be enabled in your local configuration to load hotkeys.
; This is a client-side setting and not affected by server settings.
serverSyncHotkeys = false

[FirstPerson]
; Section enabled: true|false
enabled = true
; hotkey for toggling first-person view
hotkey = F10
; Default Field of View for first-person view
defaultFOV = 65.0
; hotkeys for changing FoV in first-person view
raiseFOVHotkey = PageUp
lowerFOVHotkey = PageDown

[Hud]
; Section enabled: true|false
enabled = true
; Shows the required amount of items AND the amount of items in your inventory in build mode, and 
; while crafting. This is automatically enabled when the CraftFromChest section is enabled.
showRequiredItems = true
; Shows small notifications about all skill experienced gained, in the top-left corner.
experienceGainedNotifications = true
; Set to true to remove the red screen flash overlay when the player takes damage.
removeDamageFlash = false
; If a bow is in hotbar, display current ammo & total ammo under the hotbar icon:
; never (0), when equipped (1), or always (2).
displayBowAmmoCounts = 1

[Chat]
; Section enabled: true|false
enabled = true
; If the player is outside of this range in meters from the creator of the shout, you will not see 
; the message on the map, or in chat. If this is set to 0, it's disabled.
shoutDistance = 0
; With this option enabled you will see the shout message in your chat window even if you are 
; outside of shoutDistance.
outOfRangeShoutsDisplayInChatWindow = true
; If the player is outside of this range in meters from the creator of the ping, you will not see 
; the ping on the map. If this is set to 0, it's disabled.
pingDistance = 0
; Disable the forced upper and lower case conversions for in-game text messages of all types.
forcedCase = true
; This value determines the range in meters that you can see whisper text messages by default.
defaultWhisperDistance = 5
; This value determines the range in meters that you can see normal text messages by default.
defaultNormalDistance = 32767
; This value determines the range in meters that you can see shout text messages by default.
defaultShoutDistance = 70

[Map]
; Section enabled: true|false
enabled = true
; With shareMapProgression enabled, you will receive the same exploration progression as other 
; players on the server. This will also enable the option for the server to sync everyone's 
; exploration progression on connecting to the server.
shareMapProgression = true
; The radius of the map that you explore, when moving.
exploreRadius = 100
; Prevents you and other people on the server from turning off their location sharing option.
preventPlayerFromTurningOffPublicPosition = true
; This option automatically shares created pins with everyone playing on the server.
shareAllPins = true
; Display carts and boats on the map
displayCartsAndBoats = true

[Brightness]
; Section enabled: true|false
enabled = false
; Changes how bright it looks at night. A value between 5 and 10 will result in nearly double the
; brightness at night.
nightBrightnessMultiplier = 0

[Camera]
; Section enabled: true|false
enabled = false
; The maximum zoom distance to your character in-game. Default is 6.
cameraMaximumZoomDistance = 6
; The maximum zoom distance to your character when in a boat. Default is 6.
cameraBoatMaximumZoomDistance = 6
; The in-game camera FOV. Default is 65.
cameraFOV = 65

[GameClock]
; Section enabled: true|false
enabled = false
; Change time formatting from 24hr to AM-PM.
useAMPM = false
; Change font size of time text.
textFontSize = 34
; Change how red the time text is (51/255).
textRedChannel = 248
; Change how green the time text is (51/255).
textGreenChannel = 105
; Change how blue the time text is (51/255).
textBlueChannel = 0
; Change how transparent the time text is (255 is solid with no transparency).
textTransparencyChannel = 255

[Hotkeys]
; Section enabled: true|false
; https://docs.unity3d.com/ScriptReference/KeyCode.html <- a list of keycodes
enabled = false
; Roll forwards on hotkey press.
rollForwards = F9
; Roll backwards on hotkey press.
rollBackwards = F10
```
{: .nolineno }
</div>
</details>

<details>
<summary>Game Rules, Difficulty, and Scaling</summary>
<div markdown="1">
```ini
[Game]
; Section enabled: true|false
; Change false to true to enable this section.
enabled = true
; The games damage multiplier per person nearby in difficultyScaleRange(m) radius.
; Default is 4% monster damage increase per player in radius.
gameDifficultyDamageScale = 2
; The games health multiplier per person nearby in difficultyScaleRange(m) radius.
; Default is 30% monster health increase per player in radius.
gameDifficultyHealthScale = 10
; Adds additional players to the difficulty calculation in multiplayer unrelated to the actual 
; amount. This option is disabled if set to 0.
extraPlayerCountNearby = 0
; Sets the nearby player count always to this value + extraPlayerCountNearby. This option is 
; disabled if set to 0.
setFixedPlayerCountTo = 0
; The range in meters at which other players count towards nearby players for the difficulty scale.
difficultyScaleRange = 200
; If you set this to true, all portals will be disabled.
disablePortals = false
; If you set this to true the console will be force disabled in-game.
disableConsole = false
;If you set this to true, portal names will be displayed in big text in center of screen.
bigPortalNames = false
;Remove dense fog from the game.
disableFog = false

[Experience]
; Section enabled: true|false
enabled = true
; Modifiers below are increases and reductions in percent, declared by 50, or -50.
; The value 50 will increase experience gained by 50%, -50 will reduce experience gained by 50%.
swords = 15
knives = 15
clubs = 15
polearms = 15
spears = 15
blocking = 15
axes = 15
bows = 15
fireMagic = 15
frostMagic = 15
unarmed = 15
pickaxes = 15
woodCutting = 15
jump = 15
sneak = 15
run = 15
swim = 15
ride = 15

[Food]
; Section enabled: true|false
enabled = true
; Increase or reduce the time that food lasts by %. The value 50 would cause food to run out 50% 
; slower, -50% would cause the food to run out 50% faster.
foodDurationMultiplier = 15
; This option prevents food degrading over time - in other words, it retains its maximum benefit 
; until it runs out, instead of reducing its effect over time.
disableFoodDegradation = false

[Armor]
; Section enabled: true|false
enabled = true
; Modifiers below are increases and reductions in percent, declared by 50, or -50.
; Each of these values increase or reduce the armor of the specific item type by percentage.
; The value 50 increases armor from 14 to 21. -50 will reduce the armor from 14 to 7.
helmets = 15
chests = 15
legs = 15
capes = 15

[Durability]
; Section enabled: true|false
enabled = true
; Modifiers below are increases and reductions in percent, declared by 50, or -50.
; Each of these values increase or reduce the armor of the specific item type by percentage.
; The value 50 increases durability from 100 to 150. -50 will reduce durability from 100 to 50.
axes = 20
pickaxes = 20
hammer = 300
cultivator = 300
hoe = 300
weapons = 20
armor = 20
bows = 20
shields = 20
torch = 20

[Player]
; Section enabled: true|false
enabled = true
; The base amount of carry weight of your character.
baseMaximumWeight = 400
; Increase the buff you receive to your carry weight from Megingjord's girdle.
baseMegingjordBuff = 300
; Increase auto-pickup range of all items.
baseAutoPickUpRange = 3
; Disable all types of camera shake.
disableCameraShake = false
; The base unarmed damage multiplied by your skill level. 120 will result in a maximum of up to 12 
; damage when you have a skill level of 10.
baseUnarmedDamage = 70
; When changed to true, you will not be permitted to place a crop within the grow radius of 
; another crop.
cropNotifier = true
; How many seconds each comfort level contributes to the rested bonus.
restSecondsPerComfortLevel = 60
; Change the death penalty in percentage, where higher will increase the death penalty and lower 
; will reduce it. This is a modifier value. 50 will increase it by 50%, -50 will reduce it by 50%.
deathPenaltyMultiplier = 0
; If set to true, this option will automatically repair your equipment when you interact with the 
; appropriate workbench.
autoRepair = false
; Boss-attained buff duration (seconds)
guardianBuffDuration = 300
; Boss-attained buff cooldown (seconds)
guardianBuffCooldown = 600
; Disable the Guardian Buff animation
disableGuardianBuffAnimation = false
; If set to true, when equipping a one-handed weapon, the best shield from your inventory is 
; automatically equipped. (Best is determined by highest block power)
autoEquipShield = false
; When un-equipping a one-handed weapon also un-equip shield from inventory.
autoUnequipShield = false
; If set to true, weapon switches requested mid-attack will be carried out when the current attack 
; is finished instead of being ignored.
queueWeaponChanges = false
; If set to true, you will always skip the intro of the game.
skipIntro = false
; If set to false, disables the "I have arrived!" message on player spawn.
iHaveArrivedOnSpawn = true
; If set to true, you will not put away / un-equip your items when swimming.
dontUnequipItemsWhenSwimming = true
; If set to true, items will be re-equipped when you exit water after swimming (if they were 
; hidden automatically)
reequipItemsAfterSwimming = true
; This modifier represents how much fall damage should be scaled in +/- %. 50 would result in 50% 
; increased fall damage, and -50 would result in 50% reduced fall damage.
fallDamageScalePercent = -15
; Max fall damage. Game default is 100 (so with enough health, falls can't kill).
maxFallDamage = 100
; If set to true, all tutorials will skip from now on. You can turn this config off and reset the 
; tutorial (in the settings) at any time.
skipTutorials = false
; Disable the encumbered state when you carry too many items (overweight).
disableEncumbered = false
; Allow auto pickup of items when encumbered (overweight).
autoPickUpWhenEncumbered = false
; Shortens the teleport time as much as much as possible.
disableEightSecondTeleport = false

[Shields]
; Section enabled: true|false
enabled = true
; Increase or decrease the block value on all shields in %. -50 would be 50% less block rating, 50 
; would be 50% more block rating.
blockRating = 30

[Stamina]
; Section enabled: true|false
enabled = true
; Modifiers are increases and reductions by percent, declared by 50, or -50.
; Changes the amount of stamina cost of using the dodge roll by %
dodgeStaminaUsage = -30
; Changes the stamina drain while over-encumbered by %
encumberedStaminaDrain = -30
; Changes the stamina cost of jumping by %
jumpStaminaDrain = -30
; Changes the stamina cost of running by %
runStaminaDrain = -30
; Changes the stamina drain by sneaking by %
sneakStaminaDrain = -100
; Changes the total amount of stamina recovered per second by %
staminaRegen = 15
; Changes the delay until stamina regeneration sets in by %
staminaRegenDelay = 0
; Changes the stamina drain of swimming by %
swimStaminaDrain = -30

[StaminaUsage]
; Section enabled: true|false
enabled = true
; Modifiers are increases and reductions by percent, declared by 50, or -50.
; Each of these values change the respective tool's stamina usage
axes = -20
blocking = -20
bows = -20
clubs = -20
knives = -20
pickaxes = -20
polearms = -20
spears = -20
swords = -20
unarmed = -20
hammer = -20
hoe = -30
cultivator = -30
fishing = -30

[Bed]
; Section enabled: true|false
enabled = false
; Change sleepWithoutSpawn to true to enable sleeping without setting bed as spawn.
; When hovering over a bed you will be presented with a Hot-Key 'LShift+E'. This Hot-Key will 
; allow for you to sleep on any bed without having to set a spawn point.
sleepWithoutSpawn = false
; Change false to true to enable sleeping on only unclaimed beds without setting bed as spawn.
; With this option enabled only beds that are not claimed by other players can be slept on without 
; setting spawn point using 'Shift+E'
unclaimedBedsOnly = false

[FireSource]
; Section enabled: true|false
enabled = false
; If set to true, torch fire sources will stay at max fuel level, once filled.
; Applies to: wood torches, iron torches, green torches, sconces and brazier.
torches = false
; If set to true, non torch-type fire sources will stay at max fuel level once filled.
fires = false
; Automatically pull wood from nearby chests to be placed inside the Fire as soon as it's empty.
autoFuel = false
; This option prevents the Fire to pull items from warded areas if it isn't placed inside of it.
; For convenience, we recommend this to be set to true.
ignorePrivateAreaCheck = true
; The range of the chest detection for the auto fuel features. Maximum is 50.
autoRange = 10

[PlayerProjectile]
; Section enabled: true|false
enabled = false
; Value of 50 would increase the minimum charge velocity from 2 to 3.
playerMinChargeVelocityMultiplier = 0
; Value of 50 would increase the maximum charge velocity (of Finewood bow) from 50 to 75.
playerMaxChargeVelocityMultiplier = 0
; Value of (+)50 increase in accuracy will change the variance of arrows 20 degree to 10 degree at 
; the point of minimum charge release.
playerMinChargeAccuracyMultiplier = 0
; Value of (+)50 increase in accuracy will change the variance of arrows 1 degree to 0.5 degree at 
; the point of maximum charge release.
playerMaxChargeAccuracyMultiplier = 0
; Enabling this option will linearly scale by skill level from the base values of the weapon to 
; the modified values (according to multipliers above).
enableScaleWithSkillLevel = false

[MonsterProjectile]
; Section enabled: true|false
enabled = false
; Value of 10 would increase the projectile velocity from 50 to 55.
monsterMaxChargeVelocityMultiplier = 0
; Value of (+)10 increase in accuracy will change the variance of projectile 1 degree to 0.9 
; degree at the point of projectile release.
monsterMaxChargeAccuracyMultiplier = 0

[Tameable]
; Section enabled: true|false
enabled = false
; Modify what happens when a tamed creature is attacked.
; 0 = normal, 1 = essential(deadly attacks stun instead of kill, tamed creatures can still die 
; rarely), 2 = immortal.
mortality = 0
; This will circumvent the mortality setting, so even if tamed creatures are immortal, players can 
; still kill them with a butcher knife.
; For this option to work you need to have mortality to set to either essential or immortal.
ownerDamageOverride = true
; How long it takes for a tamed creature to recover if mortality is set to 1(essential) and they 
; are stunned.
stunRecoveryTime = 10
; If the tamed creature is recovering from a stun, then add Stunned to the hover text on mouse 
; over.
stunInformation = false
```
{: .nolineno }
</div>
</details>

<details>
<summary>Building Mode</summary>
<div markdown="1">
```ini
[Building]
; Section enabled: true|false
enabled = true
; Remove some of the Invalid placement messages, most notably provides the ability to place 
; objects into other objects
noInvalidPlacementRestriction = false
; Removes the "Mystical forces" building prevention and allows destruction of build objects in 
; those areas with the hammer.
noMysticalForcesPreventPlacementRestriction = true
; Removes the weather damage from rain and water erosion.
noWeatherDamage = false
; The maximum range in meters that you can place build objects at inside the hammer build mode.
maximumPlacementDistance = 12
; The radius, in meters, in which a piece must be to contribute to the comfort level.
pieceComfortRadius = 20
; When destroying a building piece, setting this to true will ensure it always drops full 
; resources. We recommend to enable this if you use this section.
alwaysDropResources = true
; When destroying a building piece, setting this to true will ensure it always drops pieces that 
; the devs have marked as "do not drop". We recommend to enable this if you use this section.
alwaysDropExcludedResources = true
; Setting this to true will cause repairing with the hammer to repair in a radius instead of a 
; single piece.
enableAreaRepair = true
; Sets the area repair radius of enableAreaRepair. A value of 7.5 would mean your repair radius is 
; 7.5 meters. Requires enableAreaRepair=true
areaRepairRadius = 7.5

[GridAlignment]
; Section enabled: true|false
; This offers a global fixed grid system to make more consistent placements.
enabled = true
; Key to enable grid alignment.
align = LeftAlt
; Key to toggle grid alignment.
alignToggle = F7
; Key to change the default alignment.
changeDefaultAlignment = F6

[AdvancedBuildingMode]
; Section enabled: true|false
; https://docs.unity3d.com/ScriptReference/KeyCode.html <- a list of keycodes
enabled = false
; Enter the advanced building mode with this key when building
enterAdvancedBuildingMode = F1
; Exit the advanced building mode with this key when building
exitAdvancedBuildingMode = F3
; Copy the object rotation of the currently selected object in ABM
copyObjectRotation = Keypad7
; Apply the copied object rotation to the currently selected object in ABM
pasteObjectRotation = Keypad8
; Increases the amount an object rotates and moves. Holding Shift will increase in increments of 
; 10 instead of 1.
increaseScrollSpeed = KeypadPlus
; Decreases the amount an object rotates and moves. Holding Shift will decrease in increments of 
; 10 instead of 1.
decreaseScrollSpeed = KeypadMinus

[AdvancedEditingMode]
; Section enabled: true|false
; https://docs.unity3d.com/ScriptReference/KeyCode.html <- a list of keycodes
enabled = false
; Enter the advanced editing mode with this key
enterAdvancedEditingMode = Keypad0
; Reset the object to its original position and rotation
resetAdvancedEditingMode = F7
; Exit the advanced editing mode with this key and reset the object
abortAndExitAdvancedEditingMode = F8
; Confirm the placement of the object and place it
confirmPlacementOfAdvancedEditingMode = KeypadEnter
; Copy the object rotation of the currently selected object in AEM
copyObjectRotation = Keypad7
; Apply the copied object rotation to the currently selected object in AEM
pasteObjectRotation = Keypad8
; Increases the amount an object rotates and moves. Holding Shift will increase in increments of 
; 10 instead of 1.
increaseScrollSpeed = KeypadPlus
; Decreases the amount an object rotates and moves. Holding Shift will decrease in increments of 
; 10 instead of 1.
decreaseScrollSpeed = KeypadMinus

[FreePlacementRotation]
; Section enabled: true|false
enabled = false
; Rotates placement marker by 1 degree with keep ability to attach to nearly pieces.
rotateY = LeftAlt
rotateX = C
rotateZ = V
; Copy rotation of placement marker from target piece in front of you.
copyRotationParallel = F
; Set rotation to be perpendicular to piece in front of you.
copyRotationPerpendicular = G

[StructuralIntegrity]
; Section enabled: true|false
enabled = false
; Disables the entire structural integrity system and allows for placement in free air, does not 
; prevent building damage.
disableStructuralIntegrity = false
; Disables any damage from anything to all player built structures. Does not prevent damage from 
; structural integrity.
disableDamageToPlayerStructures = false
; Disables any damage from anything to all player built boats.
disableDamageToPlayerBoats = false
; Disables water force damage to all player built boats.
disableWaterDamageToPlayerBoats = false
; Disables any damage from anything to all player built carts.
disableDamageToPlayerCarts = false
; Disables water force damage to all player built carts.
disableWaterDamageToPlayerCarts = false
; Each of these values reduce the loss of structural integrity by distance by % less.
; The value 100 would result in disabled structural integrity over distance, does not allow for 
; placement in free air without disableStructuralIntegrity.
wood = 0
stone = 0
iron = 0
hardWood = 0
marble = 0
```
{: .nolineno }
</div>
</details>

<details>
<summary>Inventory Management and Looting</summary>
<div markdown="1">
```ini
[Inventory]
; Section enabled: true|false
enabled = true
; Player inventory number of rows. Inventory can be resized up to 6 rows, with higher values
; adding a scrollbar. Default 4, Min 4, Max 20.
playerInventoryRows = 4
; Wood chest number of columns. Default 5, Min 3, Max 8.
woodChestColumns = 5
; Wood chest number of rows. Default 2, Min 2, Max 10. More than 4 rows will add a scrollbar.
woodChestRows = 2
; Personal chest number of columns. Default 3. Min 3, Max 8.
personalChestColumns = 3
; Personal chest number of rows. Default 2. Min 2, Max 20. More than 4 rows will add a scrollbar.
personalChestRows = 2
; Iron chest number of columns. Default 6, min 3, max 8.
ironChestColumns = 6
; Iron chest number of rows. Default 4, Min 3, Max 20. More than 4 rows will add a scrollbar.
ironChestRows = 4
; Blackmetal chests already have 8 (max) columns by default, but now you can lower it down to 3.
blackmetalChestColumns = 8
; Blackmetal number of rows. Default 4, Min 3, Max 20. More than 4 rows will add a scrollbar.
blackmetalChestRows = 4
; Cart inventory number of columns. Default 8, Min 6, Max 8.
cartInventoryColumns = 8
; Cart inventory number of rows. Default 3, Min 3, Max 30. More than 4 rows will add a scrollbar. 
cartInventoryRows = 4
; Karve (small boat) inventory number of columns. Default 2, Min 2, Max 8.
karveInventoryColumns = 5
; Karve (small boat) inventory number of rows. Default 2, Min 2, Max 30. More than 4 rows will add 
; a scrollbar.
karveInventoryRows = 2
; Longboat (large boat) inventory number of columns. Default 8, Min 6, Max 8.
longboatInventoryColumns = 8
; Longboat (large boat) inventory number of rows. Default 3, Min 3, Max 30. More than 4 rows will 
; add a scrollbar.
longboatInventoryRows = 4
; By default tools and weapons go into inventories top-to-bottom, and other materials 
; bottom-to-top. Set to true to make all items go into the inventory top-to-bottom.
inventoryFillTopToBottom = false
; By default items go to their original position when picking up your tombstone.
; Set to true to make all stacks attempt to merge with an existing stack first.
mergeWithExistingStacks = true

[Items]
; Section enabled: true|false
enabled = true
; Removes restrictions from teleporting with ore and other usually-restricted objects.
noTeleportPrevention = true
; Increase or reduce item weight by a modifier in percent. The value -50 will reduce item weight 
; of every object by 50%, 50 will increase the weight of every item by 50%.
baseItemWeightReduction = -20
; Increase or reduce the size of all maximum item stacks by a modifier in percent.
; The value 50 would set a usual item stack of 100 to be 150.
; The value -50 would set a usual item stack of 100 to be 50.
itemStackMultiplier = 100
; Set duration that dropped items stay on the ground before they are despawning. Game default is 
; 3600 seconds.
droppedItemOnGroundDurationInSeconds = 3600
; Items dropped always float in water.
itemsFloatInWater = true

[Gathering]
; Section enabled: true|false
; Modifiers below are increases and reductions in percent, declared by 50, or -50.
enabled = true
; Modify the chance to drop resources from resource nodes affected by this category. This only 
; works on resource nodes that do not have guaranteed drops.
; For example, by default scrap piles in dungeons have a 20% chance to drop a item. If you set 
; this option to 200, it will then have a 60% chance to drop iron.
dropChance = 200
; Each of these values increase or reduce the amounts of produced items when harvesting objects 
; with tools (Stones, Trees, Resource nodes, etc) by %. 50 will increase the dropped wood from 
; trees from 10 to 15. -50 will reduce the amount of dropped wood from 10 to 5.
wood = 10
stone = 0
fineWood = 20
coreWood = 10
elderBark = 10
ironScrap = 50
tinOre = 50
copperOre = 50
silverOre = 20
chitin = 20
feather = 10

[LootDrop]
; Section enabled: true|false
enabled = false
; Change the amount of loot dropped when creatures or monsters are slain. A value of -100 will 
; eliminate all drops, 0 will have no effect, 100 will double drops, 200 will triple, and so on.
lootDropAmountMultiplier = 0
; Change the chance of loot dropping when creatures or monsters are slain. A value of -100 will 
; eliminate all drops, 0 will have no effect, 100 will double the percent of getting a drop, 200 
; will triple it, and so on.
; For example: If a drop has a 40% chance, setting this to 200 will make that chance 80%, and 
; setting it to 300 will make it 100% (120% technically, but anything above 100% acts as 100%)
lootDropChanceMultiplier = 0

[Pickable]
; Section enabled: true|false
; Each value below (in percent) will modify the yield when "picking" items (default key E) such as 
; berries and flowers. A value of 100 will double drops, 200 will triple and so on.
enabled = true
; All berries, all mushrooms, onions and carrots
edibles = 20
; Barley, Flax, Dandelion, Thistle, Carrot Seeds, Turnip Seeds, Turnip, Onion Seeds
flowersAndIngredients = 20
; Bone Fragments, Flint, Stone, Wood (branches on the ground)
materials = 20
; Amber, Amber Pearl, Coins, Ruby
valuables = 10
; Surtling Core only
surtlingCores = 0

[Wagon]
; Section enabled: true|false
enabled = true
; Change the base wagon physical mass of the wagon object. This is essentially the base weight of 
; a cart.
wagonBaseMass = 20
; This value changes the physical weight of wagons by +/- more/less from item weight inside. The 
; value 50 would increase the weight by 50% more. The value -100 would remove the entire extra
; weight.
wagonExtraMassFromItems = -20

[Ward]
; Section enabled: true|false
enabled = false
; The range of wards by meters.
wardRange = 20
; Set the enemy spawn radius around wards in meters. This value equals wardRange if it's set to 0.
wardEnemySpawnRange = 0
```
{: .nolineno }
</div>
</details>

<details>
<summary>Crafting</summary>
<div markdown="1">
```ini
[Workbench]
; Section enabled: true|false
enabled = true
; Set the workbench radius in meters.
workbenchRange = 30
; Set the enemy spawn radius around workbenches in meters
; This value equals workbenchRange if it's set to 0.
workbenchEnemySpawnRange = 0
; Sets the workbench attachment (e.g. anvil) radius.
workbenchAttachmentRange = 8
; Disables the roof and exposure requirement to use a workbench.
disableRoofCheck = false

[CraftFromChest]
; Section enabled: true|false
; This feature allows you to craft from nearby chests when in range.
enabled = false
; Change false to true to disable this feature when using a Cooking Station.
disableCookingStation = false
; If in a workbench area, uses it as reference point when scanning for chests.
checkFromWorkbench = true
; This option prevents crafting from pulling items from warded areas, if the player doesn't have 
; access to it.
ignorePrivateAreaCheck = false
; The range of the chest detection in meters.
range = 20
; The interval in seconds that the feature scans nearby chests. We recommend not going below 3 
; seconds.
lookupInterval = 3
; Allows the system to use and see contents of carts for crafting. Might also allow use of other 
; modded containers or vehicles not accessible otherwise.
allowCraftingFromCarts = false
; Allows the system to use and see contents of ships for crafting. Might also allow use of other 
; modded containers or vehicles not accessible otherwise.
allowCraftingFromShips = false
```
{: .nolineno }
</div>
</details>

<details>
<summary>Production Structures</summary>
<div markdown="1">
```ini
[Beehive]
; Section enabled: true|false
enabled = true
; Configure the speed at which the bees produce honey in seconds, 1200 seconds are 24 in-game 
; hours.
honeyProductionSpeed = 1200
; Configure the maximum amount of honey in beehives.
maximumHoneyPerBeehive = 12
; Instead of dropping the items, they will be placed inside the nearest nearby chests.
autoDeposit = true
; The range of the chest detection for the auto deposit feature. Maximum is 50
autoDepositRange = 10
; Display the minutes and seconds until the beehive produces honey on crosshair hover.
showDuration = true

[Fermenter]
; Section enabled: true|false
enabled = true
; Configure the time that the fermenter takes to produce its product, 2400 seconds are 48 in-game 
; hours.
fermenterDuration = 2400
; Configure the total amount of produced items from a fermenter.
fermenterItemsProduced = 16
; Display the minutes and seconds until the fermenter is done on crosshair hover.
showDuration = true
; Instead of dropping the items, they will be placed inside the nearest nearby chests.
autoDeposit = true
; Automatically pull mead from nearby chests to be placed inside the Fermenter as soon as it's 
; empty.
autoFuel = false
; This option prevents the fermenter to pull items from warded areas if it isn't placed inside of 
; it. For convenience, we recommend this to be set to true.
ignorePrivateAreaCheck = true
; The range of the chest detection for the auto deposit and auto fuel features. Maximum is 50
autoRange = 10

[Kiln]
; Section enabled: true|false
enabled = true
; Maximum amount of wood in a Kiln.
maximumWood = 25
; Change false to true to disable Fine Wood processing.
dontProcessFineWood = true
; Change false to true to disabled Round Log processing.
dontProcessRoundLog = true
; The time it takes for the Kiln to produce a single piece of coal in seconds.
productionSpeed = 15
; Instead of dropping the items, they will be placed inside the nearest nearby chests.
autoDeposit = true
; The Kiln will pull wood from nearby chests to be automatically added to it when it's empty.
; This option respects the dontProcessFineWood and dontProcessRoundLog settings.
autoFuel = true
; Stops autoFuel (looking for fuel) when there is at least this quantity of Coal in nearby chests
; (ignored if set to 0)
stopAutoFuelThreshold = 2000
; This option prevents the Kiln to pull items from warded areas if it isn't placed inside of it.
; For convenience, we recommend this to be set to true.
ignorePrivateAreaCheck = true
; The range of the chest detection for the auto deposit and fuel features. Maximum is 50.
autoRange = 5

[Smelter]
; Section enabled: true|false
enabled = true
; Maximum amount of ore in a Smelter.
maximumOre = 10
; Maximum amount of coal in a Smelter.
maximumCoal = 20
; The total amount of coal used to produce a single smelted ingot.
coalUsedPerProduct = 2
; The time it takes for the Smelter to produce a single ingot in seconds.
productionSpeed = 30
; Instead of dropping the items, they will be placed inside the nearest nearby chests.
autoDeposit = true
; The Smelter will pull coal and raw materials from nearby chests to be automatically added to it 
; when it's empty.
autoFuel = true
; This option prevents the Smelter to pull items from warded areas if it isn't placed inside of it.
; For convenience, we recommend this to be set to true.
ignorePrivateAreaCheck = true
; The range of the chest detection for the auto deposit and auto fuel features. Maximum is 50.
autoRange = 5

[Furnace]
; Section enabled: true|false
enabled = true
; Maximum amount of ore in a Furnace.
maximumOre = 10
; Maximum amount of coal in a Furnace.
maximumCoal = 20
; The total amount of coal used to produce a single smelted ingot.
coalUsedPerProduct = 2
; The time it takes for the Furnace to produce a single ingot in seconds.
productionSpeed = 30
; Instead of dropping the items, they will be placed inside the nearest nearby chests.
autoDeposit = true
; The Furnace will pull coal and raw materials from nearby chests to be automatically added to it 
; when it's empty.
autoFuel = true
; This option prevents the Furnace to pull items from warded areas if it isn't placed inside of it.
; For convenience, we recommend this to be set to true.
ignorePrivateAreaCheck = true
; The range of the chest detection for the auto deposit and auto fuel features. Maximum is 50.
autoRange = 5
; This option allows all 'earlier' ore types in the Furnace.
allowAllOres = true

[Windmill]
; Section enabled: true|false
enabled = true
; Maximum amount of barley in a windmill.
maximumBarley = 50
; The time it takes for the windmill to produce a single ingot in seconds.
productionSpeed = 10
; Ignore wind intensity so it always takes the production speed value to process one barley.
ignoreWindIntensity = false
; Instead of dropping the items, they will be placed inside the nearest nearby chests.
autoDeposit = true
; The Windmill will pull barley from nearby chests to be automatically added to it when it's empty.
autoFuel = true
; This option prevents the Windmill to pull items from warded areas if it isn't placed inside of 
; it. For convenience, we recommend this to be set to true.
ignorePrivateAreaCheck = true
; The range of the chest detection for the auto deposit and auto fuel features. Maximum is 50
autoRange = 5

[SpinningWheel]
; Section enabled: true|false
enabled = true
; Maximum amount of flax in a spinning wheel.
maximumFlax = 50
; The time it takes for the spinning wheel to produce linen thread.
productionSpeed = 30
; Instead of dropping the items, they will be placed inside the nearest nearby chests.
autoDeposit = true
; The Spinning Wheel will pull flax from nearby chests to be automatically added to it when it's 
; empty.
autoFuel = true
; This option prevents the Spinning Wheel to pull items from warded areas if it isn't placed 
; inside of it. For convenience, we recommend this to be set to true.
ignorePrivateAreaCheck = true
; The range of the chest detection for the auto deposit and auto fuel features. Maximum is 50
autoRange = 5

[EitrRefinery]
; Section enabled: true|false
enabled = true
; Maximum amount of sap in an Eitr Refinery.
maximumSap = 20
; Maximum amount of soft tissue in an Eitr Refinery.
maximumSoftTissue = 20
; The time it takes for the Eitr Refinery to produce a single Eitr in seconds.
productionSpeed = 40
; Instead of dropping the items, they will be placed inside the nearest nearby chests.
autoDeposit = true
; The Eitr Refinery will pull sap and soft tissue from nearby chests to be automatically added to 
; it when it's empty.
autoFuel = true
; This option prevents the Eitr Refinery to pull items from warded areas if it isn't placed inside 
; of it. For convenience, we recommend this to be set to true.
ignorePrivateAreaCheck = true
; The range of the chest detection for the auto deposit and auto fuel features. Maximum is 50.
autoRange = 5

[WispSpawner]
; Section enabled: true|false
enabled = true
; This value determines the maximum amount of Wisp per spawner.
maximumWisps = 6
; This value determines if the Wisps can spawn during the day.
onlySpawnAtNight = true
; This value determines the rate at which the Wisps try to spawn. A multiplier of -50 will result 
; in a wisp trying to spawn every 2.5 seconds (5 seconds by default).
wispSpawnIntervalMultiplier = 0
; This value determines the chance of a Wisp to spawn. A multiplier of 200 will result in a 100% 
; wisp spawn chance.
wispSpawnChanceMultiplier = 30
```
{: .nolineno }
</div>
</details>

### Known Caveats

When reducing inventory and stack sizes (say, if we revert such changes), we can lose items in the process. In such cases, we first need to take care to reallocate stacks and inventory usage to conform to the newly-imposed limits. I doubt this will be a likely situation for us, though.

Furthermore, it's always possible some mod features are bugged or not working. The last time I enabled production structures' automatic use of nearby chests, it only worked for one player and not all others, amounting to desynchronization problems. We'll have to see. It's not the end of the world if we have to manually fill production structures ourselves again - but to make up for the manual labor, we can increase yields, speed up the process, etc.

Anyway, the posted changes are already live, so have at it! See many of you on later tonight.