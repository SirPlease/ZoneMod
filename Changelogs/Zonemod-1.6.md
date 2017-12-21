# **ZoneMod v1.6**

### **[General]:**

---

* Pauses will no longer spawn Players that were holding "*Fire*" right before the Pause.
* Casters will now have the Spechud toggled on for them automatically, even after reconnects and such.
* **Scoring:**
  * Damage Bonus has been decreased to a maximum of **20%** *(was 25%)*, meaning Health Bonus is now worth 80% of the total Bonus.

---

### **[Infected]:**

---

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

---

### **[Weapons]:**

---

* **Weapon Damage Drop-Off:**
  * **Uzi**: from 0.81 to the Vanilla/Acemod Value of 0.83
  * **Silenced Uzi**: from 0.79 to 0.81

* **Weapon Damage:**
  * **Pump Shotgun**: Increased damage per bullet by 1. (+20 Damage on a full hit.)
	
* **Weapon Spread:**
  * **Uzi**: Moving 1.70 / Still 0.18 **(was 1.95 / 0.22)**
  * **Silenced Uzi**: Moving 2.20 / Still 0.28 **(was 2.45 / 0.30**

---

### **[Map Changes]:**

---

* **Hard Rain:**
  * *Map 1*:
    * The ladder to the roof near the ambulance is now fully functional for Infected.
  * *Map 4*:
    * The ladder to the roof near the ambulance is now fully functional for Infected.