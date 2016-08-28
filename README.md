# ZoneMod #
This config is based upon the [Acemod V4 Release](http://imgur.com/a/8Ptck) and will have changes from there.
But.. it's not just simply an Acemod/EQ Alteration, it's much more than that and will continue to grow alongside AceMod.

### Server Admins! ###
To make it easy for Server Admins that have their own versions of certain Plugins and to make it less likely for Admins to mess up with the Installation, I've seperated all the Plugins.
This means that you can safely drag and drop the cfg and addon folders to your servers without having to overwrite your modified versions of the plugins, you can from there on out adjust the plugins loaded to your own modified ones.
If there's a significant change to a plugin, you can modify the .sp file and compile it with your own changes to it.

* Admin simplicity:
 * To make sure none of your precious plugins get overwritten, all plugins have their seperate folder (optional/zonemod)
     * If you have a prefered edition of a Plugin, you are able to simply replace the file in optional/zonemod.
	 * Make sure the Plugin your overwriting doesn't have a feature added that's required for proper ZoneMod play!
 * To make it easy for personal configuration for certain plugins, there's an added "server_preference.cfg" in the cfg/cfgogl/zonemod folder.
     * This is to prevent Admins from messing with crucial variables, feel free to modify these cvars though!
	 * Keep in mind that this is a shared cfg, so currently the cfg is empty and the customizable cvars right now will have to be adjusted per config (zm1v1.cfg, zm2v2.cfg, etc)
	 * These cfgs are still useful for Admins wanting to load certain plugins on top of the Config.

* Admin Tips:
 * l4d2_playstats needs to be loaded after readyup or it won't function properly, in many matchmodes this plugin is loaded before readyup which breaks the Rank System.
 * The previously distributed l4d2_weapon_attributes doesn't reset values after config unload, to fix this in other configs simply copy the version used in this config (optional/zonemod/l4d2_weapon_attributes) to your optional folder.

- - - -
### Bug / Exploit Fixes ###
* Fixed Players being able to exploit switching team to get earlier Spawns.
* Fixed Players being unable to Punch/Jump when they get Tank right after dying as SI.
* Fixed Players being able to FF eachother with the Shotgun when they're in too close-range.
 * Seeing as this was introduced without notice, I considered this a bug and resolved it.
* Fixed Tank Rocks getting stuck on Common Infected, they will now successfully pass through them (still killing them). 
 * [Video](https://www.youtube.com/watch?v=FFQLJBYca1U)
* Fixed Players being able to Pause/Ready-up by switching to Spec and spamming Pause at the same time.
* Fixed Players being able to Pause after the round had ended.
* Fixed Players being able shoot without reloading when incapacitated.
* Fixed Weapon Changes (Spread, Clipsize, etc) sticking after Config unload.
* Blocked the infamous Coaster Skip!

- - - -
### Map Changes ###
* Parish Map 2: The Park
 * Added a small Hedge to the right side of the Park, this can work in both Survivors and Infected favor. (Infected Mostly)
 * Added a Tree on the left side of the park to allow more spawns and LOS

Allow a bit more spawns for Infected and LOS Spots for Survivors.

* Map 3: Cemetery
 * Changed the Routing, [Video](https://www.youtube.com/watch?v=SdHp28zt-E0) 

The Cemetery has always been a breeze, very easy to shutdown Infected.
This change allows for more and better Infected Spawns.
- - - -
### Gameplay / Balance Changes ###
* Anti-baiting Timer decreased from Acemod's 60s to 30s.

Baiting is a valid tactic, but nobody wants to fall asleep during very lengthy baiting sessions.
This change means that the timer once triggered is 30s, so don't worry about it being too short.

* Special Infected
 * Witch
     * The Witch has been fully removed.
	 * The First config to actually take this step, this magnificent creature is simply too glitchy and random to accept in a competitive environment.
 * Smoker
	 * Survivors are now pulled through common infected. ([Video](https://www.youtube.com/watch?v=PC4k0aKvOlY))
	 * Godframes have been Removed.
 * Jockey
	 * Godframes have been Removed.
 * Hunter
	 * Claw damage decreased to 5.
 * Charger
	 * Punch damage decreased to 6.
	 
* Survivors
 * Friendly Fire Godframes have been set to 0.3 seconds.
 
This will get rid of instant Friendly Fire incidents after clears.

* Weapon Adjustments:
 * Reload Speed:
	 * Uzi: 1.70 (Acemod: 1.75)
     * Silenced Uzi: 1.76 (Acemod: 1.8)
 * Spread:
	 * Uzi: Moving 2.05 / Still 0.24 (Acemod: 1.65 / 0.20)
     * Silenced Uzi: Moving 2.25 / Still 0.30 (Acemod: 1.75 / 0.26)
 * Ammo
	 * SMG: 50/700 (Acemod: 50/800)
	 * Shotgun Ammo decreased to 8/80 (Acemod 8/96).

As we've noticed in Acemod V4, the Uzis were completely taking over and shredding everything.
In the first release of ZoneMod, I want to test out these middle grounds, whilst trying to making the regular Uzi more attractive.
The Shotguns have a minor change to their max ammo, let's see how much of an effect something so small has.
- - - -
### Miscellaneous ###
* Removed !spawns functionally while the Game is Live.
* Cleaned up the Chat by blocking useless prints caused by cvar changes and the like.
* Consistency Checker is loaded by the Config by default, it'll actually use the whitelist.
* Added !voteboss, this will allow players to vote for Boss spawns if needed.