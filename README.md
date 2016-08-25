# ZoneMod #
This config is based upon the Acemod V4 Release and will have changes from there.
But.. it's not just simply an Acemod/EQ Alteration, it's much more than that and will continue to grow alongside AceMod.

To make it easy for Server Admins that have their own versions of certain Plugins and to make it less likely for Admins to mess up with the Installation, I've seperated all the Plugins.
This means that you can safely drag and drop the cfg and addon folders to your servers without having to overwrite your modified versions of the plugins, you can from there on out adjust the plugins loaded to your own modified ones.
If there's a significant change to a plugin, you can modify the .sp file and compile it with your own changes to it.

### Bug / Exploit Fixes
* Fixed Players being able to exploit switching team to get earlier Spawns.
* Fixed Players being unable to Punch/Jump when they get Tank right after dying as SI.
* Fixed Players being able to FF eachother with the Shotgun when they're in too close-range.
 * Seeing as this was introduced without notice, I considered this a bug and resolved it.
* Fixed Tank Rocks getting stuck on Common Infected, they will now successfully pass through them (still killing them). 
 * Video of This: https://www.youtube.com/watch?v=FFQLJBYca1U
* Fixed Players being able to Pause/Ready-up by switching to Spec and spamming Pause at the same time.

### Map Changes ###
* Parish
 * Map 2: The Park
  * Added a small Hedge to the right side of the Park, this can work in both Survivors and Infected favor. (Infected Mostly)
   * Added a Tree on the left side of the park to allow more spawns and LOS

 * Map 3: Cemetery
  * Changed the Routing, Video for Easy Display: https://www.youtube.com/watch?v=SdHp28zt-E0
  The Cemetery has always been a breeze, very easy to shutdown Infected.
  This change allows for more and better Infected Spawns.
	
### Gameplay / Balance Changes ###
* The Witch has been fully removed.
The First config to actually take this step, this magnificent creature is simply too glitchy and random to accept in a competitive environment.

* Anti-baiting Timer decreased from Acemod's 60s to 30s.
Baiting is a valid tactic, but nobody wants to fall asleep during very lengthy baiting sessions.

* Survivors are no longer blocked by common infected when they're being pulled.
 * Video: https://www.youtube.com/watch?v=PC4k0aKvOlY

Common Infected, much like the Witch are very nasty glitchy creatures.
If they don't intentionally block a successful pull, they get stuck on the Survivor doing nothing.
Time to change that, this can be seen as a buff to the Smoker in certain ways.

* Charger and Hunter Claw/Punch Damage have been set to 5.
 * Charger: The Charger already has a lot of things going for him, dealing 8 damage a punch makes him a way too powerful SI.
  * Hunter: Immune to M2 while jumping and scratching like crazy, while being such a stealthy SI, it feels unfair to give this SI a slight boost.

* SMG Clip + Ammo and Reload Speeds decreased.
 * Uzi: 1.65 (Acemod: 1.75)
  * Silenced Uzi: 1.72 (Acemod: 1.8)
   * Ammo: 40/600 (Acemod: 50/800)

This should balance eachother out.

* Shotgun Ammo decreased to 8/80.
A minor change, let's see how much of an effect something so small has.

