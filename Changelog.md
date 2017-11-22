# **ZoneMod v1.3**

### **[Bugs / Exploits]:**
* Fixed Survivors being able to "self-clear" after being Jockeyed.
* Fixed the Tank freezing up if a player controlling the Tank switched team/disconnected during the Death Animation, which would cause one player on the Infected team to become stuck.

### **[Infected]:**
* Updated Horde Equaliser to allow for "Horde-pausing" on certain maps rather than having to choose between all maps or none.
  * Dead Center Map 4 Horde will pause whilst a Tank is up (this does not affect boomer horde)

### **[Weapons]:**
* **Reload Speed:**
  * **Silenced SMG**: (1.76s) to (1.85s)
  * **Uzi**: (1.70s) to (1.74s)

* **Spread:**
  * **Silenced SMG**: (2.25 / 0.30) to (2.45 / 0.30) [Moving / Standing Still]
  * **Uzi**: (1.80 / 0.20) to (1.95 / 0.22) [Moving / Standing Still]

# **ZoneMod v1.4**
### **[Bugs / Exploits]:**
* Fixed ZoneMod 1v1 "instakilling" Survivors (Plugin Error)

### **[General Feautures]:**
* Added specrates.smx to reduce server load from within the config.
* Alarm Cars that were hit by other Tank Hittables will now have their Alarms disabled.

### **[Infected]:**
* Removed the chance of Common Infected sitting or lying down.
* Removed the chance of Common Infected attacking eachother.
* Wallkicks are disabled on 1v1
  
# **ZoneMod v1.5**
### **[Bugs / Exploits]:**
* Fixed an issue causing the Tank being kicked/moved to spec every now and then.
* Fixed Tank sometimes not spawning for the 2nd team on No Mercy Map 3.
* Fixed not being able to go back on the choke on Dead Center 3 because of the chair you'd clip through.
  
# **ZoneMod v1.5.1**
### **[Bugs / Exploits]:**
* Fixed Cars doing 6 damage a hit rather than 24 on Parish Map 5, caused by an outdated plugin. 
* Rewrote NoDeathCamSkip:
  * There's no way to skip the Death Cam now by pressing buttons and such.
    * During testing it showed that you could bypass the old deathcamskip with other keypresses as well (Zoom, Use, Duck, etc)

### **[Map Changes]:**
* **Hard Rain**:
  * *Map 2*:
    * Blocked Shortcut up the pipe to skip Ramp Choke.
  * *Map 3*: 
    * Blocked Shortcut up the pipe to skip Ramp Choke.
	
# **ZoneMod v1.5.1T**
* Last minute hotfixes to NoDeathCamSkip and l4d2_horde_equaliser.
**Tournament Ready~**

# **ZoneMod v1.6** 
### **[Survivors]:**
* **Scoring:**
  * Damage Bonus has been decreased to a maximum of **20%** *(was 25%)*, meaning Health Bonus is now worth 80% of the total Bonus.

* **Weapon Damage Drop-Off:**
  * **Uzi**: from 0.81 to the Vanilla/Acemod Value of 0.83
  * **Silenced Uzi**: from 0.79 to 0.81

* **Weapon Damage:**
  * **Pump Shotgun**: Increased damage per bullet by 1. (+20 Damage on a full hit.)
	
* **Weapon Spread:**
  * **Uzi**: Moving 1.70 / Still 0.18 **(was 1.95 / 0.22)**
  * **Silenced Uzi**: Moving 2.20 / Still 0.28 **(was 2.45 / 0.30**

### **[Infected]:**
* **General**
  * Spawntimers have been decreased by **1** second. (**15 Seconds now**)
  * The Spawn rotation is now handled by a Plugin.
    * The Spawn rotation: **Smoker**, **Boomer**, **Hunter**, **Spitter**, **Jockey**, **Charger** 
      * The First Infected line-up is unaffected by the Plugin.
    * A minimum of 1 "Support" SI (Boomer/Spitter) has be active at all times with the exception of when the Tank is in play.
    * The Spitter is removed during Tank and the Boomer will follow the sack order as it should.
  * **Known Issues**: If the Tank is passed to AI, the next SI will be pushed back to the end of the Spawn Rotation.  
  * **ADMINS**: For this to work properly you are required to use playermanagement_zone.smx rather than playermanagement.smx  
    * If you land on a server where the rotation is skipping SI, the Admin did not bother to read this changelog.  

* **Spitter:**
  * Added alternate Damage to Spit, Survivors now take 3 damage every second Tick.
	* This increases the total Spit damage per puddle from 40 to 50.
	
* **Charger:**
  * When a Charger hits multiple survivors, the "*impacted*" Survivors will no longer slide away when Hunters/Jockeys pounce a teammate next to them while in their get-up animation.
    * Previously only the Charged/Pounced Survivor would become immune after he was cleared and in his get-up animation. 
  * Removed the Charger's warm-up time of 0.5s
    * This prevents "*Slow Charges*" 
	
* **Jockey:** 
  * Jockeys can no longer be skeeted.
  
* **Hunter:**
  * Hunters can no longer Wallkick.
  * Hunters can no longer be shoved except for when they have a cap.
  	* The shoves on Standing hunters were simply too inconsistent (affected by ping)  

### **[Map Changes]:**
* **Hard Rain:**
  * *Map 1*:
    * The ladder to the roof near the ambulance is now fully functional for Infected.
  * *Map 4*:
    * The ladder to the roof near the ambulance is now fully functional for Infected.

### **[General Features]:**
* Pauses will no longer spawn Players that were holding "*Fire*" right before the Pause.
* Casters will now have the Spechud toggled on for them automatically, even after reconnects and such.

# **ZoneMod v1.7** 
### **[Infected]:** 

* **General:**
  * Spawntimers have been decreased by **1** second. (**14 Seconds now**)

* **Charger:**
  * Punch Damage increased to **8**. (was **6**)
  * The Charger's first Punch will do **5** Damage.
    * As requested, the Charger can now easily bash people to death again.
    * In an attempt to refrain from spawning just to get easy damage in, the first punch will do less damage.

* **Jockey:** 
  * Increased Jockey Ride Speed with **8%**.
    * Buffing the Jockey slightly, allowing him to become a bigger priority in terms of who to clear first. 

* **Tank:**
  * You will now lose Frustration **1.5s** after losing LOS of the Survivors. (was **2s**)
    * A minor tweak. 

### **[Bug Fixes]:**
* **Spawn Rotation**
  * The Spawns are fixed and the rotation will work as intended now.
    * As fun as the Quads were, it was unintended.

### **[General Features]:**

With the introduction of **v1.7** this Config/Github will feature update packs which you can just drag and drop into your Server on top of the previous edition.  
These updates will only contain crucial files, which makes it a lot less likely to mess up your personal adjustments.  
Always make sure to double check though! :smile: 