# Changelog: #

* **v1.4**
  * Fixed ZoneMod 1v1 "instakilling" Survivors (Plugin Error)
  * Added specrates.smx to reduce server load from within the config.
  * Alarm Cars that were hit by other Tank Hittables will now have their Alarms disabled.
  * Removed the chance of Common Infected sitting or lying down.
  * Removed the chance of Common Infected attacking eachother.
  * Wallkicks are disabled on 1v1
  * Fixed up Specrates not being loaded properly due to a dependency.
  * Modified Specrates to reset rates back to the maximum rates, rather than the minimum to prevent issues.
  
* **v1.5**
  * Fixed an issue causing the Tank being kicked/moved to spec every now and then.
  * Fixed Tank sometimes not spawning for the 2nd team on No Mercy Map 3.
  * Fixed not being able to go back on the choke on Dead Center 3 because of the chair you'd clip through.
  
* **v1.5.1**
  * Rewrote and structured NoDeathCamSkip
    * There's no way to skip the Death Cam now by pressing buttons and such.
	* During testing it showed that you could bypass the old deathcamskip with other keypresses as well (Zoom, Use, Duck, etc)
	
  * Map Exploit Fixed:
  	* **Hard Rain Map 2 and 3:** Blocked Shortcut up the pipe to skip Ramp Choke.