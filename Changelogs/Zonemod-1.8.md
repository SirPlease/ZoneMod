# **Zonemod v1.8**
> **This Changelog is from 1.7.1 to 1.8**.  
> 1.7.2 and onwards have had buggy and unsatisfactory releases, which is why we're moving straight to a polished 1.8.

---

### **[Bug Fixes]:**

---

* **Boss Voting:**
  * Fixed the vote for Setting Tank displaying a vote failure when the vote actually passed.
  * Fixed setting the Witch to **0%** breaking the vote.

* **Slots Vote:**
  * Fixed a derp in the chat print out.
  
---

### **[Survivors]:**

---

* **Sounds:**
  * Added Support for L4D1 Survivors melee grunting.
  * Fixed a few issues that would break melee grunts entirely.
  
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
  * Tank Speed has been increased to match the Survivors speed. (**10%** Speed Increase)
  * Tank HP has been increased.
    * *(4v4)*: **6750**
    * *(3v3)*: **5025**
    * *(2v2)*: **3480**
  * Tank Slowdown has been re-added and modified.
    * Ranked in order of most slowdown per shot:
      * *Shotgun*
      * *Uzi*
      * *Pistols*
  * The LOS/Rage Gaining mechanism that was introduced in 1.7.1 has been removed.
    * Feedback has been clear, and testing/experience has proven it not to be of good use in a Competitive Environment.

* **Charger:**
  * Chargers punch damage has been increased from **6** to **8**.
 
* **Hunter:**
  * Hunter Limit has been increased to **2**. 
  * Hunter Scratch damage has been reset to **6**. 
  * Hunters can wallkick again in 4v4, 3v3 and 2v2.
 
* **Spitter:**
  * Spitter Acid now does a consistent **3** damage per Tick.
    * A much requested buff to the Spitter.

* **Jockey:**
  * Improved upon the bacteria sound playing for Jockeys.
    * Fixed the Sound playing when a player that had a Jockey in ghostmode became the Tank or went to Spec.
    * **NOTE:** You need Music Volume on to hear the bacteria sound. (Even low volume works)

---

### **[Weapons]:**

---

* **Melee:**
  * The Melee Limit has been removed.
  * Your Melee weapon will now be dropped when hit by a Tank, instead of switching to your primary weapon.
    * The previous method had a few very annoying bugs and it was rather annoying to keep switching to your melee after being hit, let alone that it was still bypassable.
    * While this method isn't ideal and still feels unnatural, trying out a new mechanic beats playing with a method that can break games entirely.
  * Melee Weapons do **300** damage per hit on Tanks again.
  * The weapon limits on melees have been removed.
    * This has been done because it simply feels very unnatural and the other nerfs so far seem sufficient already.

* **Shotguns:**
  * Shotguns have received powerful and enjoyable buffs to their range and damage on Tank.
    * These changes have been very OP in the past, lets see how they balance out against a much stronger Infected Side. 