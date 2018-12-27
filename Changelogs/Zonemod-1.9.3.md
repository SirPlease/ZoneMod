# **Zonemod v1.9.3**

### **[Bugs/Exploits]:**

---

* **Fixes:**
  * Fixed a lagspike that occurs when switching to the other team when a round ends, this resolves invisible players on the first hit.
  * Fixed an Exploit that allowed you to duplicate Survivors and or ruin entire games by simply picking a character that was already taken with a console command.
  * Fixed an issue that could cause damage inconsistency when loading the config right after playing Campaign on a difficulty other than Normal.
  * Fixed other SI being able to freeze the Charger mid-charge by attacking the same target.
  * Fixed other SI being able to target a Survivor that is about to get pummeled after a Charge.
  * Fixed a Valve Bug where you could see Shadows from Infected (Common and SI) through Walls, Floors and Ceilings.

* **Deathcam:**
  * Players that try to bypass the Death Cam by spectating and switching back will be prevented from joining back for a few seconds.
     * These players will be moved back onto the team automatically.

* **Godframe Exploit:**
  * Players that use an exploit to prevent taking damage when pinned by Special Infected will now receive 25 damage instantly when attempting to abuse this.
> **Developer Comment:** I feel like I've let this one slide for too long, so now I've added direct punishment for this kind of chilidsh behaviour.

---

### **[Campaigns/Maps]:**

---

* **All Maps:**
  * Cleaned up the Maps from Junk Props that you could get stuck on, allowing for smoother movement.

* **Dark Carnival Remix:**
  * All Maps:
    * Added full support for the integrated Tank spawn selection system.
    * Info for Witch and Shortcuts will no longer be printed as the default commands will work.
    * Disabled VoteBoss for this Campaign as it is not supported.
    * Fixed Cvar Changes after switching sides every map.

* **Dark Carnival:**
  * Map 4:
    * Added an invisible block above angled food carts. (Thanks **NF**)

* **Dead Air:**
  * Map 3:
    * Fixed Players getting stuck on the infamous "Klorain" Bottle after the Crescendo Event.  

* **Death Toll:**
  * Fixed a few errors within the Stripper:Source file.
  * Added a block for an "Under the Map" Exploit. (Thanks **Midnight**)

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
  
> **Developer Comment:** A few requested Custom Campaign fixes and changes along with much needed changes to the config to smoothly work with Dark Carnival Remix's integrated system.

* Common Infected Hordes in **1v1** and **2v2** have been **reduced** on maps where Events were limited in horde size.

> **Developer Comment:** A much needed change to allow Survivors to decide to hold out in 1v1 and 2v2 as well. (Even if you push through this change should make it more fair)

---

### **[Sound]:**

---

* **Survivor Grunting:**
  * Removed the constant Survivor Grunting with every common infected kill.
    * You’ll still shout out your mighty roar when killing a Special Infected with your Melee.
  * Blocked a Bunch of Survivor Quotes:
    * Friendly Fire callout.
    * “World” (Stories between Survivors).
    * Laughter.
    * Look (This doesn’t prevent you from calling out Pills).
    * Clutter/ETC.
  * Heartbeat Sound is now also blocked in 4v4, 3v3 and 2v2.

---

### **[Survivors]:**

---

* **Shoves/M2:**
  * Survivors now get fatigued after **3** Shoves. (was **5**)
  * Shoving a Jockey/Smoker will add a penalty of **1**. (Meaning a Shove against SI counts as **2** Shoves)

---

### **[Infected]:**

---

* **General:**
  * Spawn Timers have been set to **15**. (was **13**)
  * When a spawned Infected Player disconnects or becomes Tank the SI will instantly get kicked unless it’s a Boomer or has someone capped. 

* **Hunter:**
  * Hunters can no longer Wallkick in **2v2**.

* **Smoker:**
  * Tongue will now recharge within **13** seconds after a successful hit (was **15**)

* **Jockey:**
  * Reduced Shove FOV.
    * This simply means that your Shove needs to be more precise to actually deadstop a Jockey.
> **Developer Comment:** While Jockeys are definitely the buggiest SI around, this is no excuse for sloppy and inaccurate shoves deadstopping Jockeys. 
> However, you will have to keep in mind that the Jockey's hitboxes will continue to be a buggy mess, which can result into some "wtf" moments.
> 

* **Charger:**
  * Reduced Melee damage to Chargers to **325**. (was **350**)  

* **Tank:**
  * Tank HP has been reverted to **6000** in **4v4**.
  * Slowdown has been removed.
  * Tank Speed has been set to **205**. (was **220**)
  * When a Tank punches a Hittable it adds a Glow to the hittable which only the Tank can see, allowing the Tank to see where his hittable is at all times.
  * It now tells everyone who the Tank will be, instead of just the Infected.
    * This has proven to be crucial information, especially when you’re up against a team with higher latencies or very varying skill levels.
    * Treat it as a hint for the Survivors, allowing them to prepare for the Tank that they’re up against.

---

### **[Items/Weapons]:**

---

* **Pills:**
  * Temp health will be given over time instead of instantly, this lovely gem of a feature is back from the dead.
> **Developer Comment:** This prevents players from getting a cheap getaway or stalling during Tank.

* **Uzi:**
  * Slightly Nerfed the Spread.

* **Silenced Uzi:**
  * Increased the Damage drop-off slightly.
  * Decreased the Nerf on the Spread slightly.
> **Developer Comment:** With a lot of changes being made during the Private updates beyond 1.8, we've finally come to a reasonable balance after the last update. We've finalized the changes and we've come out with the following:

1. > **Regular Uzi:** Less damage drop-off and less Spread.
2. > **Silenced Uzi:** Higher Damage and better for your Ears. 

* **Pump Shotgun:**
  * Decreased amount of Bullets per shot to **14** (was **20**)
  * Increased Damage per Bullet to **21** (was **15**).
    * If all your bullets manage to land you deal **294** damage. (was **300**) 
  * Slightly decreased Spread.
  * Reverted damage drop-off to Vanilla values. (which is a **Nerf**)
  * Removed damage multiplier on Tanks.

* **Chrome Shotgun:**
  * Increased amount of Bullets per shot to **17** (was **16**) 
  * Increased Damage per bullet to **16** (was **32**)
    * If all your bullets manage to land you deal **272** damage. (was **256**) 
  * Reverted damage drop-off to Vanilla values. (which is a **Nerf**)
  * Removed damage multiplier on Tanks.

> **Developer Comment:** While the Shotguns have always been in a reasonable spot, the need to somewhat make them more attractive to pick up has always been there. However, the changes we added in Zonemod 1.8 were a bit silly to say the least.

* **Melee Weapons:**
  * Increased Melee damage to Tanks to **240**. (was **210**)
  * Removed all Melee Weapon Spawns.
  * A fixed amount of Fireaxes will be spawned in the Saferoom.
    * **1v1** & **2v2**: ***1 Fireaxe***.
    * **3v3** & **4v4**: ***2 Fireaxes***. 
> **Developer Comment:** This tackles a bunch of issues with Melee weapons right now:
* >  **Issue 1:** Survivors being ***too*** vulnerable up until the point where they start finding melee weapons, also very dependent on the map's spawns.
* >  **Issue 2:** Survivors having ***too*** many melee weapons, making Boomers nearly useless and Tanks a breeze to kill.
* >  **Issue 3:** Melee Weapon attack speeds and swing rays are too different and appear random between different melee weapons.

