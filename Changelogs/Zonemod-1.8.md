# **Zonemod v1.8**
> **This Changelog is from 1.7.1 to 1.8**.  
> 1.7.2 and onwards have had buggy and unsatisfactory releases, which is why we're moving straight to a polished 1.8.

---

### **[Bug/Exploit Fixes]:**

---

* **Smoker Drag Damage**
  * Fixed not dealing 3 Damage on the first tick sometimes.

* **Boss Voting:**
  * Fixed the vote for Setting Tank displaying a vote failure when the vote actually passed.
  * Fixed setting the Witch to **0%** breaking the vote.

* **Slots Vote:**
  * Fixed a derp in the chat print out.
  
* **Consistency Fix:**
  * Clients are now also checked on pauses, this prevents players from being able to know when a check is about to happen, making them unable to bypass the whitelist.
	* Depending on the Server's whitelisted sounds, players will suffer from a slight lag on pause, but as nothing is really going on.. You'll be fine.
    * I recommend loading this in all your configs, as well as setting the two cvars in your server.cfg
	* [Source File](http://codepad.org/XdWvjts9)
  
---

### **[Survivors]:**

---

* **Sounds:**
  * Added Support for L4D1 Survivors melee grunting.
  * Fixed a few issues that would break melee grunts entirely.
  * Blocked a ton of Survivor lines from playing, easier on the ears!
  
* **Friendly Fire:**
  * Maximum amount of Friendly Fire per Shotgun blast has been increased from **6** to **8**.

* **Health/Damage Bonus Adjustments:**
  * Damage Bonus now covers **30%** of the total bonus, leaving Health Bonus at **70%** [Was 20%**/**80%].
  * Pills total worth has been increased to a maximum of 50 Bonus per set.
    * This effectively gives you a higher reward for holding onto pills.

---

### **[Infected]:**

---

* **General:**
  * Spawntimers have been decreased by **1** second in 4v4. (**13 Seconds now**)
  * Quad-caps are now possible.
  * The Sack Order Plugin has been disabled due to instability, following regular AI Director methods again.

* **Tank:**
  * Minimum Tank Spawn has been set to 20%. 
  * Maximum Tank Spawn has been set to 85% to prevent issues.
  * Tank Speed has been increased to match the Survivors speed. (**10%** Speed Increase)
  * Tank HP has been increased.
    * *(4v4)*: **6750**
    * *(3v3)*: **5025**
    * *(2v2)*: **3480**
  * Tanks have been prevented from spawning before **20%** and after **85%**
    * Done to balance those early tanks and to prevent issues with very late Tanks.
  * Tank Slowdown has been re-added and modified.
    * Ranked in order of most slowdown per shot:
      * *Shotgun*
      * *Uzi*
      * *Pistols*
  * The LOS/Rage Gaining mechanism that was introduced in 1.7.1 has been removed.
    * Feedback has been clear, and testing/experience has proven it not to be of good use in a Competitive Environment.

* **Spitter:**
  * Alternate Ticks are back, meaning the Spit will do **2** damage normally and **3** damage every **2nd** hit.
    * For those of you who demand 3 damage spit, please keep in mind that this config has a very low spawn timer.

* **Charger:**
  * Chargers punch damage has been increased from **6** to **8**.
 
* **Hunter:**
  * Hunter Limit has been increased to **2**. 
  * Hunter Scratch damage has been reset to **6**. 
  * Hunters can wallkick again in 4v4, 3v3 and 2v2.

* **Jockey:**
  * Improved upon the bacteria sound playing for Jockeys.
    * Fixed the Sound playing when a player that had a Jockey in ghostmode became the Tank or went to Spec.
    * **NOTE:** You need Music Volume on to hear the bacteria sound. (Even low volume works)

---

### **[Weapons]:**

---

* **Melee:**
  * The Melee Limit has been removed.
    * This has been done because it simply feels very unnatural and the other nerfs so far seem sufficient already.
  * If you're holding out your Melee when being punched by a Tank you no longer switch to your primary weapon.
    * This "feature" had a game-breaking bug where you'd drop your primary weapon and you'd be unable to pick it back up.
  * Melee Weapons do **225** damage per hit on Tank.

* **Shotguns:**
  * Shotguns have received powerful and enjoyable buffs to their range and damage on Tank.
    * These changes have been very OP in the past, lets see how they balance out against a much stronger Infected Side and along the Zonemod Uzi.
	
* **Silenced Uzi:**
  * Silenced Uzis have been slightly nerfed in terms of spread per shot.