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
	* [Extensions, Gamedata, Main Competitive Plugins, etc](http://sirftp.com/Left4Dead2/ZoneModRequirements.zip)
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

- - - -
### Map Changes ###

- Big Thanks to **NF** for most of these! :)

* General
  * All pill cabinets in Valve maps will now have a maximum of 2 pills

* Dark Carnival
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

* Hard Rain
  * Map 1
	* Added a way for infected to get on the tall rooftop near the ambulance.
  * Map 4
	* Added a way for infected to get on the tall rooftop near the ambulance.
  * Finale
	* Removed extra pills.

* The Parish
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

* No Mercy
  * Map 3
	* Readded the forklift to the warehouse.
	* Fixed a stuck spot on the tables next to the pill cabinet.
  * Map 4
	* Removed floodlight props due to exploit potential.

* Death Toll
  * Map 1 
	* Fixed being able to jump across the bridge and skip the ladder choke.
	* Fixed infected being able to get under the map near the ladder choke.
	* Fixed multiple out of map exploits near the start.
  * Map 5
	* Added some spawns near the dock to discourage camping there.

- - - -
### Gameplay / Balance Changes ###
* Anti-baiting Timer decreased from Acemod's 60s to 30s.
* Anti-baiting Sensitivity Delay decreased from Acemod's 20s to 15s.
Baiting is a valid tactic, but nobody wants to fall asleep during very lengthy baiting sessions.
This change means that the timer once triggered is 30s, so don't worry about it being too short.

* Damage Bonus now also takes Friendly Fire and Fall Damage into account.
No more getting away with these!

* Special Infected
  * Tanks
	* Tank Rocks will no longer get stuck on Common Infected, they will now successfully pass through them (still killing them). 
	* Tank Rocks will no longer get stuck on Incapped Survivors, they will pass through them unless the same Rock incapped them.
	* Hitting a Punch or will now instantly interrupt the pick-up, preventing a succesful pick-up.
  * Witch
    * The Witch has been fully removed.
	* The First config to actually take this step, this magnificent creature is simply too glitchy and random to accept in a competitive environment.
  * Smoker
	* Smokers no longer instantly do damage, the first tick of damage is vanilla styled (1s) and deals 3 damage. (After that it's 1 per 0.33s like in Acemod)
	* Survivors are now pulled through common infected. ([Video](https://www.youtube.com/watch?v=PC4k0aKvOlY))
	* Godframes have been Removed.
  * Jockey
	* Godframes have been Removed.
  * Hunter
	* Claw damage decreased to 4.
	* Hunters can be shoved off normally, without requiring silly-ish fov angles.
	* Wallkicks have been enabled again.
  * Charger
	* Punch damage decreased to 6.
	* Chargers can no longer be fully leveled, a melee strike will do 350 damage per swing.

* Tank Spawns:
  * Dark Carnival Map 3: The Tank can no longer spawn on the Coaster.

* Survivors
  * Friendly Fire Godframes have been added and set to 0.2 seconds.
  * After being punched, melee weapons will be useless for a bit to ensure "easy-hits" are not possible.
  * Water Slowdown is back, but only outside of Tank Fights.

* Melee Weapons
  * Knife and the Tonfa have been removed from within the Config because of their speed.
  * Hardcoded spawns are now random, this means that for example in Parish 2 start saferoom you might have a cuttable melee instead of a Frying Pan.

* Weapon Adjustments:
  * Reload Speed:
	* Uzi: 1.70 (**Acemod**: 1.75 - **Vanilla**: 2.23)
    * Silenced Uzi: 1.76 (**Acemod**: 1.8 - **Vanilla**: 2.23)
  * Spread:
	* Uzi: Moving 1.80 / Still 0.20 (**Acemod**: 1.65 / 0.20 - **Vanilla**: 3.00 / 0.69)
    * Silenced Uzi: Moving 2.25 / Still 0.30 (**Acemod**: 1.75 / 0.26 - **Vanilla**: 3.00 / 0.85)
  * Damage:
	* Uzi: 21 (**Acemod** & **Vanilla**: 20)
	* Shotgun Bonus Damage Range: 50 (**Acemod**: 75 - **Vanilla**: 100)
  * Damage Drop-off:
	* Uzi: 0.81 (**Acemod & Vanilla**: 0.83)
	* Silenced Uzi: 0.79 (**Acemod & Vanilla**: 0.83)
  * Ammo:
	* Uzi & Silenced Uzi: 50/650 (**Acemod**: 50/800)

As we've noticed in Acemod V4, the Uzis were completely taking over and shredding everything.
In the first release of ZoneMod, I want to test out these middle grounds, whilst trying to making the regular Uzi more attractive.
The damage-drop off changes will result into the Uzi having a noticable advantage at long-range damage while the silenced uzi will remain dominant in close to medium range damage, as well as SI taking far less damage from medium to long range.
Resetting the ammo back to Vanilla values for Uzis should have an noticable effect on spray and praying.
  
- - - -
### Miscellaneous ###
* Removed !spawns functionality while the Game is Live.
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
 