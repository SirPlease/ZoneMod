# ZoneMod #

**LINUX SERVERS ONLY**

This config is based upon the [Acemod V4 Release](http://imgur.com/a/8Ptck) and will have changes from there.
But.. it's not just simply an Acemod/EQ Alteration, it's much more than that and will continue to grow alongside/past AceMod.
ZoneMod's focus is also to make setting things up a lot easier for Server Admins, Casters and Players.
Why make everything difficult when it doesn't have to be? :)

- - - -
### Server Admins! ###

**DISCLAIMER: Using the plugins provided with the download in other configs is at your own Risk as they're designed around ZoneMod and are likely to be unstable in other configs or general usage.**

* Requirements:
  * Clean Servers:
	* [Sourcemod](https://www.sourcemod.net/downloads.php?branch=1.7-dev) (1.6 or 1.7), [Metamod](https://www.metamodsource.net/), [Stripper:Source](http://www.bailopan.net/stripper/#install).
	* [Extensions, Gamedata, Main Competitive Plugins, etc](http://sirpleaseny.site.nfoservers.com/ZoneModRequirements.zip)
	* These simple Steps also setup your Server's base for other configs, so you'll only need the optional plugins that other configs require.
  * Competitive Servers:
	* None, modify your matchmodes file to add the config to the Match menu and you're set. :)

* Admin simplicity:
  * To make sure none of your precious plugins get overwritten, all plugins have their seperate folder (optional/zonemod)
    * If you have a prefered edition of a Plugin, you are able to simply replace the file in optional/zonemod.
	* Make sure the Plugin you're overwriting doesn't have a feature added that's required for proper ZoneMod play!
  * To make it easy for personal configuration for certain plugins, there's an added "server_preference.cfg" in the cfg/cfgogl/zonemod folder.
    * This is to prevent Admins from messing with crucial variables.
	* Keep in mind that this is a shared cfg, so it'll only contain shared cvars.
	* These cfgs are very useful for Admins wanting to load 1v1~4v4 supported plugins on top of the Configs.
  * Server_Namer is added to this package, useful for a clean Hostname.
	* Everything is explained in the Server Preferences.
	* It is not loaded by default, needs uncomments.
	* The .txt file will ask permission for an override, this should be fine.

* Admin Tips:
  * bequiet.smx is a very useful plugin to keep chat clean, if you decide to load it in other configs, make sure it's loaded before other plugins.
	* Keep in mind that it comes with a "Spec-Listening Feature", this might collide with other plugins.
	* Simply unload the other plugin, or set bequiet's "bq_show_player_team_chat_spec" cvar to 0.
  * TickRateFixes now also fixes Slow Doors and Pistol Scripts, useful for use with other configs.
	* Make sure you're not loading l4dpistoldelay if you're using this Plugin.
	* Make sure you don't have any adjustments to prop_rotating and prop_rotating_checkpoint speeds in your cfg/stripper folder.
  * Specrates is a useful plugin to reduce server load causes by spectators.
    * This will send less updates to Spectators whilst maintaining a pleasant viewing experience.

- - - -
### Bug / Exploit Fixes ###
* Fixed Players being able to exploit switching team to get earlier SI Spawns.
* Fixed Players being unable to Punch/Jump when they get Tank right after dying as SI.
* Fixed Players being able to FF eachother with the Shotgun when they're in too close-range.
* Fixed Players being able to Pause/Ready-up by switching to Spec and spamming Pause at the same time.
* Fixed Players being able to Pause after the round had ended.
* Fixed Weapon Changes (Spread, Clipsize, etc) sticking after Config unload.
* Fixed Slow Doors from within the Config (TickrateFixes.smx)
* Fixed Players taking Friendly Fire while jockied or carried by a Charger.
* Fixed a bug/exploit that allowed Survivors to "self-shove" Jockeys off after already being Jockeyed.
* Fixed a lagspike that occurs when switching to the other team when a round ends, this resolves invisible players on the first hit.
* Fixed an Exploit that allowed you to duplicate Survivors and or ruin entire games by simply picking a character that was already taken with a console command.
* Fixed an issue that could cause damage inconsistency when loading the config right after playing Campaign on a difficulty other than Normal.
* Fixed other SI being able to freeze the Charger mid-charge by attacking the same target.
* Fixed other SI being able to target a Survivor that is about to get pummeled after a Charge.
* Fixed a Valve Bug where you could see Shadows from Infected (Common and SI) through Walls, Floors and Ceilings.
* Players that use an exploit to prevent taking damage when pinned by Special Infected will now receive 25 damage instantly when attempting to abuse this.

- - - -
### Map Changes ###

* **General:**
  * All pill cabinets in Valve maps will now have a maximum of 2 pills
  * Cleaned up the Maps from Junk Props that you could get stuck on, allowing for smoother movement.
  * Common Infected Hordes in **1v1** and **2v2** have been **reduced** on maps where Events were limited in horde size.
	
* **Dead Center:**
  * Map 4
	* Event Horde will stop swarming in whilst the Tank is alive.
	
* **Dark Carnival:**
  * Map 2
	* Fixed Survivors getting punched onto wooden supports on the ladder choke rooftop.
	* Added saferoom props from map 3 start to map 2 end for consistency.
  * Map 3
	* Blocked Infected from getting underneath the map near the coaster 
	* Added a few props to saferoom on map 3 to discourage fighting the Tank there
	* Added saferoom props from map 4 start to map 3 end for consistency.
	* Fixed an exploit that allowed Survivors to skip to the end of the coaster near the first ramp
	* Blocked a way to jump up some wood pieces and skip to the end of the coaster
	* Blocked survivors from accessing parts of the coaster tracks that allows them to turn off the event early.
  * Map 4:
    * Added an invisible block above angled food carts.

* **Hard Rain:**
  * Map 1
	* Added a way for infected to get on the tall rooftop near the ambulance.
  * Map 4
	* Added a way for infected to get on the tall rooftop near the ambulance.
  * Finale
	* Removed extra pills.

* **The Parish:**
  * Map 1
	* Fixed players getting stuck on the trashbags at the very start.
  * Map 2
	* Removed yellow concrete block in alleyway.
	* Blocked survivors from getting on a balcony with no nav.
	* Replaced wall in area leading up to alleyway with props that make more aesthetic sense.
  * Map 3
	* Fixed bridge explosion doing damage to infected.
  * Map 4
	* Fixed survivors getting punched out of map in the first alleyway. 
	* Added an ammo pile in the event area for late spawn Tank fights.
	* Fixed Survivors sometimes hanging from the rooftop by the event.

* **No Mercy:**
  * Map 3
	* Readded the forklift to the warehouse.
	* Fixed a stuck spot on the tables next to the pill cabinet.
  * Map 4
	* Removed floodlight props due to exploit potential.

* **Death Toll:**
  * Map 1 
	* Fixed being able to jump across the bridge and skip the ladder choke.
	* Fixed infected being able to get under the map near the ladder choke.
	* Fixed multiple out of map exploits near the start.
  * Map 5
	* Added some spawns near the dock to discourage camping there.

* **Dead Air:**
  * Map 3:
    * Fixed Players getting stuck on the infamous "Klorain" Bottle after the Crescendo Event.  

* **Diescraper Redux:**
  * All Maps:
	* Updated Diescraper Redux Mapinfo and Map Fixes to work on v3.61 (Final)
	* Fixed Static Tanks not working properly on the latest Version.

* **Fatal Freight:**
  * Map 4:
	* Fixed Medkits spawning in the Train cart, replaced them with 2 Sets of Pills.

* **I Hate Mountains 2:**
  * Map 4:
	* Lowered Map Distance to **600**. (was **700**)

* **Detour Ahead:**
  * Map 4:
	* Lowered Map Distance to **700**. (was **800**)

* **Open Road:**
  * Map 1: 
    * Fixed Medkits spawning in the Saferoom. 
	
* **Dark Carnival Remix:**
  * All Maps:
    * Added full support for the integrated Tank spawn selection system.
    * Info for Witch and Shortcuts will no longer be printed as the default commands will work.
    * Disabled VoteBoss for this Campaign as it is not supported.
    * Fixed Cvar Changes after switching sides every map.

- - - -
### Gameplay / Balance Changes ###
* Anti-baiting Timer decreased from Acemod's 60s to 30s.
* Anti-baiting Sensitivity Delay decreased from Acemod's 20s to 15s.
  * Baiting is a valid tactic, but nobody wants to fall asleep during very lengthy baiting sessions.
  * This change means that the timer once triggered is 30s, so don't worry about it being too short.
  
* Damage Bonus: 
  * DB has been increased to **30%** of the total Bonus (was **25%**)
	* This means Solid Health now decides 70% of the Bonus.
  * Pills total worth has been increased to a maximum of 50 Bonus per set.
    * This effectively gives you a higher reward for holding onto pills.
  * Damage Bonus now also takes Friendly Fire and Fall Damage into account.
	* No more getting away with these!

* Special Infected:
  * **General:**
    * Spawntimers have been decreased by **1** seconds. (**15** Seconds now)  
	* Quad Caps are now possible.
	* When a spawned Infected Player disconnects or becomes Tank the SI will instantly get kicked unless it’s a Boomer or has someone capped.
  * **Tanks:**
	* Tank Rocks will no longer get stuck on Common Infected, they will now successfully pass through them (still killing them). 
	* Tank Rocks will no longer get stuck on Incapped Survivors, they will pass through them unless the same Rock incapped them.
	* Fixed a bug that froze the Tank if a player controlling the Tank switched team or disconnected during the Death Animation.
	* Tanks speed increased to **205** (was **200**)
	* When a Tank punches a Hittable it adds a Glow to the hittable which only the Tank can see, allowing the Tank to see where his hittable is at all times.
	* It now tells everyone who the Tank will be, instead of just the Infected.
	* Tank HP has been increased:
	  - *(4v4)*: **6000** (Default)
	  - *(3v3)*: **5025**  
	  - *(2v2)*: **3480**  
  * **Witch:**
    * The Witch has been fully removed.
	  * The First config to actually take this step, this magnificent creature is simply too glitchy and random to accept in a competitive environment.
  * **Smoker:**
    * Smoker's ability will now recharge within **13** seconds after a successful hit (was **15**)
	* Smokers no longer instantly do damage, the first tick of damage is vanilla styled (1s) and deals **3** damage. (After that it's **1** per **0.33s** like in Acemod)
	* Survivors are now pulled through common infected. ([Video](https://www.youtube.com/watch?v=PC4k0aKvOlY))
	* Godframes have been Removed.
  * **Spitter:**
    * Added alternate Damage to Spit, Survivors now take **3** damage every second Tick.
	  * This increases the total Spit damage per puddle from **40** to **50**.
  * **Jockey:**
	* Godframes have been Removed.
	* Jockey can no longer be Skeeted.
	* Jockey Ride speed has been increased by **8%**.
	* Fixed the Sound playing when a player that had a Jockey in ghostmode became the Tank or went to Spec.
  * **Hunter:**
    * Hunter limit has been set to 2.
	* Hunters can wallkick in 3v3 and 4v4.
	* Hunters can be shoved off normally, without requiring silly-ish fov angles.
	* Hunters can't be shoved unless pinning a Survivor.
  * **Charger:**
	* Punch damage set to **8**.
	* Chargers can no longer be fully leveled, a melee strike will do **325** damage per swing.  
	* When a Charger hits multiple survivors, the "*impacted*" Survivors will no longer slide away when Hunters/Jockeys pounce a teammate next to them while in their get-up animation.  
    * Removed the Charger's warm-up time of 0.5s

* Tank Spawns:
  * Dark Carnival Map 3: The Tank can no longer spawn on the Coaster.
  * Tanks have been prevented from spawning before **20%** and after **85%**
    * Done to balance those early tanks and to prevent issues with very late Tanks.

* Survivors:
  * Friendly Fire Godframes have been added and set to 0.8 seconds.
  * Water Slowdown is back, but only outside of Tank Fights.
  * Added Support for L4D1 Survivors melee grunting.
  * Fixed a few issues that would break melee grunts entirely.
  * Blocked a ton of Survivor lines from playing, easier on the ears!
  * Maximum amount of Friendly Fire per Shotgun blast has been increased from **6** to **8**.

* Pills:
  * Temp health will be given over time instead of instantly, this lovely gem of a feature is back from the dead.
 
* Melee Weapons:
  * Removed all Melee Weapon Spawns.
  * A fixed amount of Fireaxes will be spawned in the Saferoom.
    * **1v1** & **2v2**: ***1 Fireaxe***.
    * **3v3** & **4v4**: ***2 Fireaxes***.
  * If you're holding out your Melee when being punched by a Tank you no longer switch to your primary weapon.
    * This "feature" had a game-breaking bug where you'd drop your primary weapon and you'd be unable to pick it back up.
  * Melee Weapons do **240** damage against the Tank per swing (**Vanilla:** 300)

* Weapon Adjustments:
  * Reload Speed:
	* Uzi: 1.74 (**Acemod**: 1.75 - **Vanilla**: 2.23)
    * Silenced Uzi: 1.85 (**Acemod**: 1.8 - **Vanilla**: 2.23)
  * Spread:
	* Uzi: Moving 1.85 / Still 0.26 (**Acemod**: 1.65 / 0.20 - **Vanilla**: 3.00 / 0.69)
    * Silenced Uzi: Moving 2.15 / Still 0.36 (**Acemod**: 1.75 / 0.26 - **Vanilla**: 3.00 / 0.85)
  * Damage:
	* Uzi: 22 (**Acemod** & **Vanilla**: 20)
	* Pump Shotgun: 294 (**Acemod**: 280)
	* Shotgun Bonus Damage Range: 60 (**Acemod**: 75 - **Vanilla**: 100)
  * Damage Drop-off:
	* Silenced Uzi: 0.79 (**Acemod & Vanilla**: 0.83)
  * Ammo:
	* Uzi & Silenced Uzi: 50/650 (**Acemod**: 50/800)

As we've noticed in Acemod V4, the Uzis were completely taking over and shredding everything.
In the first release of ZoneMod, I want to test out these middle grounds, whilst trying to making the regular Uzi more attractive.
The damage-drop off changes will result into the Uzi having a noticable advantage at long-range damage while the silenced uzi will remain dominant in close to medium range damage, as well as SI taking far less damage from medium to long range.
Resetting the ammo back to Vanilla values for Uzis should have an noticable effect on spray and praying.
  
- - - -
### Miscellaneous ###
* Improvents to checking Clients on their Soundfiles.
* Pauses will no longer spawn Players that were holding "*Fire*" right before the Pause.
* Casters will now have the Spechud toggled on for them automatically, even after reconnects and such.
* Updated AutoPause so that it no longers pauses during Ready-up and Round Ends.
* Removed !spawns functionality while the Game is Live.
* Alarm Cars that were hit by other Tank Hittables will now have their Alarms disabled.
* Removed the chance of Common Infected sitting or lying down.
* Removed the chance of Common Infected attacking eachother.
* Survivors no longer switch to Pills automatically when they're being passed pills through M2.
* Survivors can choose whether or not to use the "Vanilla" behaviour when picking up Secondary Weapons when they have something else equipped.
  * You can use !secondary to toggle the behaviour.
	* Vanilla behaviour: Switch instantly to picked up Secondary Weapon.
	* Modified behaviour: Add the item to the inventory, but don't switch to it.
* Cleaned up the Chat by blocking useless prints caused by cvar, clients used by Players, etc.
* Consistency Checker is loaded by the Config by default, it'll actually use the whitelist.
* Added !voteboss, this will allow players to vote for Boss Spawns if needed.
  * Very useful when playing Home/Away in Tournaments!
  * Usage: !voteboss tank witch
* Added !slots, this will allow players to vote for the Maximum amount of slots on the Server during the game.
  * Again, very useful when playing Tournaments.
  * Usage: !slots <number>
* Players are now able to register themselves as Casters.
  * This makes it a lot easier to get Casts setup without the need of an Admin.
  * As a side effect Ready-up will no longer wait for Casters.
* Added !cfg
  * This allows players to see the current status of the config, in-game (Changelog)
* Combined Usage of l4d2_playstats with survivor_mvp.
  * The original didn't work as it should and was a giant wall of code, which made me simply combine the two plugins to get the best out of them.
  * Fully colorized, Rank prints, console info.. Functional!
 
