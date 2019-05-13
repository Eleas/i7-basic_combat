Version 1 of Basic Combat by B David Paulsen begins here.

"A basic hit-point based combat system in the style of table-top role playing games."


Volume - Checklist

Volume - Weapons, improvised or bespoke

A thing can be weaponizable.
A weapon is a kind of thing. A weapon is usually weaponizable.


Part - Drawing and sheathing

Equipping is an action applying to one thing. Understand "equip [something]" as equipping. Understand the command "brandish" or "draw" or "ready" or "wield" as "equip".
Unequipping is an action applying to one thing. Understand "unequip [something]" as unequipping. Understand the command "sheathe" as "unequip".
Wielding relates a person to one thing. The verb to wield implies the wielding relation. 

When play begins (this is the if you wield it you hold it rule):
	repeat with actor running through people:
		if the actor wields a weaponizable thing (called the item), now the actor holds the item.

To equip is a verb. To sheathe is a verb.
Check an actor equipping something not weaponizable (this is the block wielding a non-weapon rule): 
	say "[The noun] [can't be] used as a weapon." (A) instead.
Check equipping something wielded by the player (this is the wielding twice doesn't double effectiveness rule): 
	say "[We]['re] already wielding [the noun]!" (A) instead.
Check unequipping something not wielded by the player (this is the don't sheathe what's not wielded rule): 
	say "[We]['re] not wielding [the noun] at the moment." (A) instead.
Carry out an actor equipping:
	now the actor wields the noun.
Carry out an actor unequipping: 
	now the actor does not wield the noun.
Report an actor equipping (this is the standard report equipping rule): 
	say "[The actor] [equip] [the noun]." (A).
Report an actor unequipping (this is the standard report unequipping rule): 
	say "[The actor] [sheathe] [the noun]." (A).
Check an actor equipping something not enclosed by a person (this is the actor must take before equipping rule): 
	try the actor taking the noun.
Check player equipping something not enclosed by a person (this is the player must take before equipping rule): 
	say "(first taking [the noun])" (A);
	silently try taking the noun.

Carry out dropping something wielded by the player (this is the stop wielding something after dropping rule): 
	now the noun is not wielded by anyone.
Carry out inserting something wielded by the player into (this is the stop wielding something after inserting rule): 
	now the noun is not wielded by anyone.
Carry out putting something wielded by the player on (this is the stop wielding something after putting rule): 
	now the noun is not wielded by anyone.
Carry out giving something wielded by the player to (this is the stop wielding something after giving rule): 
	now the noun is not wielded by anyone.
Carry out eating something wielded by the player (this is the stop wielding something after eating rule): 
	now the noun is not wielded by anyone.

To hold is a verb.
Report examining someone who is wielding something (called weapon)(this is the standard see what they're packing rule): 
	say "[The noun] [hold] [a weapon] at the ready." (A).
After printing the name of a thing which is wielded by someone while taking inventory (this is the standard inventory-printing a ready weapon rule): 
	say " (drawn and ready)" (A).


Part - Damage

Chapter - Hit point definition

Hit points is a kind of value. 99 HP specifies hit points. 
A thing has some hit points called health. 
A thing has some hit points called maximum health.

First when play begins (this is the basic setting the health of actors rule):
	repeat with item running through things:
		now the maximum health of the item is the health of the item.

Die roll is a kind of value. 99D999 specifies die roll with parts dice and die type.

To decide which number is the health in percent of (x - a thing):
	let s be the health of the x;
	let t be the maximum health of x;
	if t is 0 HP and s is at least 0 HP, decide on 0;
	if t is 0 HP and s is less than 0 HP, decide on 100;
	decide on (100 * s) / t.


Chapter - Damage definition

To decide which text is pretty-printed (d - a die roll):
	let p be the die type part of d;
	decide on "roll of [dice part of d]D[p]:". 

To decide which hit points is a roll of (pool - a die roll):
	let sum be 0 HP;
	repeat with d running from 1 to dice part of the pool:
		let sum be sum + (a random number from 1 to the die type part of the pool * 1 HP);
	decide on sum.

A thing has a die roll called damage potential. The damage potential of a thing is usually 3D6.

Chapter - Printing out health status

To decide which text is the printed health of (x - a thing):
	repeat through the Table of Health Level in reverse order:
		if the health limit entry is at least the health in percent of x, decide on the text entry.

Table of Health Level
health limit (a number)	text (a text)
100	"in perfect health"
80	"slightly hurt"
60	"hurt"
40	"severely wounded"
20	"near death"

Report examining a targetable person (this is the display health level rule):
	say "[regarding the noun][They] [are] [printed health of the noun]." (A).


Part - Redirecting attack to specific attack action

Attacking is violence.

A thing can be targetable. A person is usually targetable.
A thing can be sharp. A thing can be blunt. A thing can be ranged. A thing can be throwable.

A blade is a kind of sharp weapon. A club is a kind of blunt weapon. A shooter is a kind of ranged weapon. A projectile is a kind of throwable weapon.

["attack/break/smash/hit/fight/torture/wreck/crack/destroy/murder/kill/punch/thump [something]"]

Understand the command "smash" or "thump" or "punch" as something new.
Understand the command "strike" as "attack".

The block attacking rule does nothing if the noun is targetable.

Instead of an actor attacking (this is the insufficient means of hurting rule), say "[The actor] [can't] hurt [regarding the noun][them]." (A)

Instead of the player attacking the player (this is the block general self-harm rule), say "Hurting [ourselves] would accomplish little." (A)

Instead of an actor attacking when the actor encloses a sharp weaponizable thing: try the actor cutting the noun; rule succeeds.
Instead of an actor attacking when the actor encloses a blunt weaponizable thing: try the actor smashing the noun; rule succeeds.
Instead of an actor attacking when the actor encloses a ranged weaponizable thing: try the actor shooting the noun; rule succeeds.
Instead of an actor attacking when the actor encloses a throwable weaponizable thing (called the projectile): try the actor throwing the projectile at the noun; rule succeeds.

Chapter - Sanity-check (not for release)

When play begins:
	let L be a list of objects;
	repeat with item running through weaponizable things:
		if the item is not sharp and the item is not blunt and the item is not ranged and the item is not throwable, add the item to L;
	let n be the number of entries in L;
	if n is not 0, say "[bold type][The L][roman type] [if the n is 1]is a weapon[otherwise]are weapons[end if] without damaging mechanism (sharp, blunt, ranged or throwable). Unless you assign one or more damaging properties, the item[if n is greater than 1]s[otherwise] won't do any damage."

Chapter - Cutting

Cutting is violence.

The block cutting rule does nothing if the noun is targetable.

The cutting action has an object called the cutter used (matched as "with").
The cutting action has a hit points called the cutting damage dealt (matched as "for").
Setting action variables for cutting when the actor wields a sharp weaponizable thing (called the blade): 
	now the cutter used is the blade;
	now the cutting damage dealt is a roll of the damage potential of the blade.

Check an actor cutting when the noun is not targetable (this is the second block cutting rule): say "Cutting [regarding the noun][it] up would accomplish little." instead.

Check someone cutting when the actor does not enclose a sharp weaponizable thing (this is the actor lacks suitable cutting weapon rule): 
	stop the action.
Check the player cutting when the player does not enclose a sharp weaponizable thing (this is the player lacks suitable cutting weapon rule): 
	say "[We] [have] nothing suitable for cutting." (A) instead.

Check an actor cutting with nothing when the actor encloses a sharp weaponizable thing (called the alternative) (this is the swap to sharp weapon rule): 
	now the cutter used is the alternative;
	now the cutting damage dealt is a roll of the damage potential of the alternative;
	if the actor is the player, say "(first drawing [the cutter used])" (A);
	silently try the actor equipping the cutter used.

Carry out an actor cutting (this is the standard sharp weapon damage roll rule): 
	now the health of the noun is the health of the noun - cutting damage dealt .

To cut is a verb.
Last carry out an actor cutting (this is the standard report cutting rule): 
	say "([pretty-printed damage potential of the cutter used] [cutting damage dealt])[line break]" (A);
	say "[The actor] [cut] at [if the noun is the player][us][otherwise][the noun][end if] with [the cutter used]." (B).


Chapter - Smashing

Smashing is an action applying to one thing. Understand "smash [something]" as smashing. Understand the command "thump" or "punch" as "smash".
Understand the command "beat" or "whack" or "club" or "pound" or "bludgeon" as "smash".
Smashing is violence.

The smashing action has an object called the bludgeon used (matched as "with").
The smashing action has a hit points called the crushing damage dealt (matched as "for").
Setting action variables for smashing when the actor wields a blunt weaponizable thing (called the club): 
	now the bludgeon used is the club;
	now the crushing damage dealt is a roll of the damage potential of the bludgeon used.

Check an actor smashing when the noun is not targetable (this is the block smashing rule): say "Smashing [regarding the noun][it] up would accomplish little." instead.

Check someone smashing when the actor does not enclose a blunt weaponizable thing (this is the actor lacks suitable bludgeoning weapon rule): 
	stop the action.
Check the player smashing when the player does not enclose a blunt weaponizable thing (this is the player lacks suitable bludgeoning weapon rule): 
	say "[We] [have] nothing suitable for smashing." (A) instead.

Check an actor smashing with nothing when the actor encloses a blunt weaponizable thing (called the alternative) (this is the swap to blunt weapon rule): 
	now the bludgeon used is the alternative;
	now the crushing damage dealt is a roll of the damage potential of the alternative;
	if the actor is the player, say "(first drawing [the bludgeon used])" (A);
	silently try the actor equipping the bludgeon used.

Carry out an actor smashing (this is the standard blunt weapon damage roll rule): 
	now the health of the noun is the health of the noun - crushing damage dealt.

To strike is a verb.
Last carry out an actor smashing (this is the standard report smashing rule): 
	say "([pretty-printed damage potential of the bludgeon used] [crushing damage dealt])[line break]" (A);
	say "[The actor] [strike] at [if the noun is the player][us][otherwise][the noun][end if] with [the bludgeon used]." (B).


Chapter - Shooting

Shooting is an action applying to one thing. Understand "shoot at/-- [something]" as shooting. Understand "fire at [something]" as shooting.
Shooting is violence.

The shooting action has an object called the ranged-weapon used (matched as "with").
The shooting action has a hit points called the shooting damage dealt (matched as "for").
Setting action variables for shooting when the actor wields a ranged weaponizable thing (called the shooter): 
	now the ranged-weapon used is the shooter;
	now the shooting damage dealt is a roll of the damage potential of the shooter.

Check an actor shooting when the noun is not targetable (this is the block shooting rule): say "Shooting [regarding the noun][it] up would accomplish little." instead.

Check someone shooting when the actor does not enclose a ranged weaponizable thing (this is the actor lacks suitable ranged weapon rule): 
	stop the action.
Check the player shooting when the player does not enclose a ranged weaponizable thing (this is the player lacks suitable ranged weapon rule): 
	say "[We] [have] nothing suitable for shooting." (A) instead.

Check an actor shooting with nothing when the actor encloses a ranged weaponizable thing (called the alternative) (this is the swap to ranged weapon rule): 
	now the ranged-weapon used is the alternative;
	now the shooting damage dealt is a roll of the damage potential of the alternative;
	if the actor is the player, say "(first drawing [the ranged-weapon used])" (A);
	silently try the actor equipping the ranged-weapon used.

Carry out an actor shooting (this is the standard ranged weapon damage roll rule): 
	now the health of the noun is the health of the noun - shooting damage dealt.

To fire is a verb.
Last carry out an actor shooting (this is the standard report shooting rule): 
	say "([pretty-printed damage potential of the ranged-weapon used] [shooting damage dealt])[line break]" (A);
	say "[The actor] [fire] at [if the noun is the player][us][otherwise][the noun][end if] with [the ranged-weapon used]." (B).


Chapter - Throwing

[The throwing at action is deprecated until Issue #1966 has been resolved. At present, trying to set action variables for 
throwing at results in a runtime error.]

The throwing it at action has a hit points called the projectile damage dealt.
The block throwing at rule does nothing if the second noun is targetable.
The futile to throw things at inanimate objects rule does nothing if the second noun is targetable.
Throwing something at something is violence.

Setting action variables for throwing something at:
	let n be a roll of the damage potential of the noun;
	now the projectile damage dealt is n.

Check an actor throwing something at when the second noun is not targetable (this is the block throwing it at rule): say "Throwing [regarding the noun][those] at [the second noun] would accomplish little." instead.

Check someone throwing something at when the actor does not hold a throwable thing (this is the actor lacks suitable projectile rule): 
	stop the action.
Check the player throwing something at when the player does not hold a throwable weaponizable thing (this is the player lacks suitable projectile rule): 
	say "[The noun] [are not] suitable for throwing." (A) instead.

Carry out an actor throwing something at (this is the standard thrown weapon consequences rule): 
	now the health of the second noun is the health of the second noun - projectile damage dealt;
	let x be the holder of the second noun;
	if x is a supporter, now the noun is on x;
	otherwise now the noun is in x.

To throw is a verb.
Last carry out an actor throwing something at (this is the standard report thrown weapons rule): 
	say "([pretty-printed damage potential of the noun] [projectile damage dealt])[line break]" (A);
	say "[The actor] [throw] [the noun] at [if the second noun is the player][us][otherwise][the second noun][end if], striking [them]." (B).


Chapter - Actual Fighting

[Invariant: there's only one fight scene happening at any given moment.]
Fighting relates people to each other. The verb to fight means the fighting relation.
Instead of violence when the actor is not fighting the noun and 
	the actor is not dead and 
	the noun is not dead and 
	the noun is a person and
	the actor is not the noun (this is the picking a fight rule):
	now the actor fights the noun.

Battle is a recurring scene. Battle begins when someone is fighting someone. 
Battle ends when the player fights a person who is dead.

When Battle begins: 
	follow the battle setup rules.
	
When Battle ends:
	follow the battle conclusion rulebook;
	now the player does not fight anyone.

The battle setup rules is a rulebook. A battle setup rule (this is the default battle setup rule): say "Let's you and [the noun] FIGHT!" (A).
The battle conclusion rules is a rulebook. A battle conclusion rule (this is the default battle conclusion rule): say "The battle is over; [the just-killed-person] lies slain." (A);

Every turn when Battle is happening and the time since Battle began is at least 1 minute (this is the standard fighting back rule):
	let mook be a random person fighting the player;
	let c be the action name part of the current action;
	if c is not the examining action and c is not the taking inventory action and c is not the looking action:
		if the mook carries a weapon (called arm) and the mook does not wield the arm:
			try the mook equipping the arm;
		otherwise if the mook wields a weapon:
			try the mook attacking the player.


Chapter - Death

Section - The player and other people dying

To topple is a verb.

After violence (this is the general player-based report death rule):
	follow the general report death rule.
After asking someone to try violence (this is the general actor-based report death rule):
	follow the general report death rule.
After actor trying violence (this is the general player-antagonistic report death rule):
	follow the general report death rule.

Killing something is an activity on objects.

Rule for killing the player (this is the death-message rule): end the story saying "You died!" (A).
Rule for killing a person (called the victim) (this is the standard report killing rule): say "[The victim] [topple] to the ground, dead." (A).
Rule for killing a thing (called intended target) when the intended target is not a person (this is the standard report destroying something rule): say "[The intended target] is completely destroyed[if the list of things held by the intended target is not empty], scattering [the list of things held by the intended target] all around[end if]." (A).

After killing a person (called the victim) (this is the standard handle dead bodies rule):
	let the corpse be a random body owned by victim; 
	move the corpse to the location; 
	now everything enclosed by the victim is on the corpse;
	move the victim to the spirit-world;
	now the just-killed-person is the victim.

After killing a thing (called the intended target) when the intended target is not a person (this is the standard scatter the contents of destroyed objects rule):
	now everything held by the intended target is in the holder of the intended target;
	remove the intended target from play.

This is the general report death rule:
	let the intended target be the second noun;
	if the intended target is nothing, let the intended target be the noun;
	if the health of the intended target is less than 1 HP, carry out the killing activity with the intended target.

[A twist on 201 - "Puff of Orange Smoke".]

A body is a kind of supporter. A body is a part of every person. Instead of touching a body (this is the block corpse-fondling rule): say "[The noun] [are] grotesquely inert." (A).
Spirit-possession relates one person to one body. The verb to be owner of means the spirit-possession relation. The verb to be owned by means the reversed spirit-possession relation.

The just-killed-person is a person which varies.

When play begins (this is the corpse preparation rule): 
	repeat with victim running through people: 
		let the corpse be a random body which is part of the victim; 
		now the victim is owner of the corpse;
		now the corpse is off-stage.

Setting action variables when the noun is a body which is part of a person (called owner): 
	now the noun is the owner. 

Setting action variables when the second noun is a body which is part of a person (called owner): 
	now the second noun is the owner. 

The worldview is a privately-named backdrop. It is everywhere. The spirit-world is a privately-named transparent closed unopenable container. It is part of the worldview. 

Definition: a person is dead if he is in the spirit-world. 

Before doing something to a dead person (this is the block situational necrophilia rule): 
	say "[The noun] [are] dead, never to return." (A) instead. 

Understand "corpse" as a body when the item described is not part of a person. 

Basic Combat ends here.


---- DOCUMENTATION ----

Chapter: What this is

Basic Combat is an attempt to provide functionality roughly analogous to David Ratliff's ARMED extension in a way conforming to modern I7 idioms.

The idea of Basic Combat is to support randomized, die-roll based combat. In doing so, it is heavily inspired by table-top role playing and the legacy of roguelike games. As random numbers make testing unpredictable, its examples use a fixed seed; obviously, published stories may find that redundant.

Using the extension is a simple affair. You assign every combat-involved actor, including the player, a number of hit points, and ideally weapons. Each weapon or weapon type can be given a damage value. In a nod to the conventions of table-top role playing, this damage value is given in classical die notation: a NUMBER value, followed by the letter D (which denotes "dice"), then finally the FACING value. 3D6 thus equates to three six-sided dice. (Sadly, for role-playing affecionados, the author has yet to devise a good convention for adding modifiers to the die notation, making constructs like "2D10+1" impossible.) By default, every weapon in the game has damage value of 3D6.

Weapons are subvidided into four different types: blades (which are cutting weapons), clubs (which are smashing weapons), shooters (which are ranged weapons), and projectiles (which are throwable weapons).

Example: * Sashimi -- A bare-bones combat scenario.
	*: "Sashimi"
	
	Include Basic Combat by B David Paulsen.

	When play begins, seed the random-number generator with 1. 

	Tom is a man. The health of Tom is 10 HP.
	The katana is a blade. The player carries the katana.

	There is a room. Tom is here.

	Test me with "wield katana/kill Tom/g/x tom/kill Tom".
	
Chapter: Combat

Current combat is a placeholder for what will hopefully be a more complex system. In its default form, Basic Combat acts out combat in "battle scenes" reminiscent of what we see in JRPGs like Chrono Trigger or the IF old-school pastiche Treasures of a Slaver's Kingdom.

A battle scene pauses the game and isolates the combattants inside a virtual arena. During a battle scene, normal behavior is restricted: we can perform actions, but at the cost of forgoing attacks; we can attempt to escape, but doing so also incurs a free attack. At the end of a combat scene, the game will resume. 

Chapter: Variations

Basic Combat is intended to emphasise flexibility. All rules are named to allow them to be overridden, the responses may be altered, and code is grouped into chapters so as to allow an author to swap out behavior at will.

For instance, if we want to alter the message of the action of cutting something, we need only change the response:

	To swipe is a verb.
	The standard report cutting rule response (B) is "[The actor] [swipe] at [if the noun is the player][us][otherwise][the noun][end if] with [the cutter used]." (B).

As mentioned above, random behavior is based on the concept of die rolls. Die rolls are intuitive to some, but it's possible to dispense with them in favor of other ways of modeling damage. The example below replaces die rolls with fixed damage values. As the printing of die rollresults becomes redundant, those message are absent.

Example: ** Predictable -- Tweaking the extension to use fixed damage.
	*: "Predictable"

	Include Basic Combat by B David Paulsen.

	Chapter - Fixed Damage Definition (in place of Chapter - Damage Definition in Basic Combat by B David Paulsen)

	To decide which text is pretty-printed (h - a hit points):
		decide on "for". 

	To decide which hit points is a roll of (pool - a hit points):
		decide on pool.

	A thing has a hit points called damage potential. The damage potential of a thing is usually 10 HP.

	Part - The rest

	Tom is a man. The health of Tom is 12 HP.
	The katana is a blade. The player carries the katana.

	There is a room. Tom is here.

	Test me with "wield katana/kill Tom/g/x tom/kill Tom".

Although simplistic, this behavior may suffice for some games.

Inanimate objects can also be targeted and destroyed. By default, this is permitted only if the object is tagged as being "targetable" (people are automatically targetable, but if you want to make a person impossible to hurt, you can do that by making them not targetable).

Example: ** Uncivilized -- Attacking inanimate things
	*: "Uncivilized"

	Include Basic Combat by B David Paulsen.
	When play begins, seed the random-number generator with 1. 

	After examining a targetable thing which is not a person (this is the display damage level rule):
		say "[regarding the noun][They] [are] [printed health-level of the noun]." (A).

	To decide which text is the printed health-level of (x - a thing):
		repeat through the Table of Health-Level in reverse order:
			if the health limit entry is at least the health in percent of x:
				decide on the text entry.

	Table of Health-Level
	health limit (a number)	text (a text)
	100	"pristine"
	80	"slightly chipped"
	60	"cracked"
	40	"battered and listing badly"
	20	"hanging together by a thread"


	The target is targetable. The health of the target is 18 HP.
	Some wreckage is a thing.

	After violence when the noun is not a person:
		let x be the holder of the noun;
		follow the general report death rule;
		now the wreckage is in x.

	There is a room. The target is here. The player carries a club called the maul.

	Test me with "smash target/x it/smash it/x it/smash it/look".

Basic Combat allows for adding more sophisticated behavior, such as exploding dice. Since the actual roll ratio here is interesting, it stores the die roll result and displays it at the conclusion of the attack.

For the curious, exploding dice are a useful, but somewhat obscure table-top convention. This is a method of rolling dice: by that method, any maximum result for any single die results in replacing that die with two new dice and rolling those. This is done until no six is rolled. Thus, exploding dice are theoretically limitless, but follow a bell curve. This mimicks a more organic spread of values than the regular die roll method, with a potential for uncertainty that rises with the number of dice. They are suitable for more realistic games in which combat is always potentially deadly.

Example: *** Explosive -- Using dice with potentially infinite rerolls

	*: "Explosive"

	Include Basic Combat by B David Paulsen.

	When play begins, seed the random-number generator with 1.

	Chapter - Exploding Damage Definition (in place of Chapter - Damage Definition in Basic Combat by B David Paulsen)

	Die roll is a kind of value. In99D999 specifies die roll with parts dice and die type.

	The last attack roll is a text that varies.

	To decide which text is pretty-printed (d - a die roll):
		let p be the die type part of d;
		decide on "roll of In[dice part of d]D[p]: [the last attack roll] = ".

	To decide which hit points is a roll of (pool - a die roll):
		let sum be 0 HP;
		let die count be dice part of the pool;
		let current die be 1;
		let t be text;
		let more than one be false;
		while current die is not greater than the die count:
			if more than one is true:
				let t be "[t]+ ";
			let roll be (a random number from 1 to the die type part of the pool);
			if roll - die type part of the pool is not 0:
				let t be "[t][roll] ";
				let sum be sum + (roll * 1 HP);
			otherwise:
				let die count be die count + 2;
				let t be "[t]([roll]) ";
			increment current die;
			let more than one be true;
		now the last attack roll is the substituted form of "[t]";
		decide on sum.

	A thing has a die roll called damage potential. The damage potential of a thing is usually In3D6.

	Part - The rest

	Tom is a man. The health of Tom is 40 HP.
	The atomic blaster is a shooter. The player carries the atomic blaster. The damage potential of the atomic blaster is In6D6.

	There is a room. Tom is here.

	Test me with "draw blaster/kill Tom/x tom/kill Tom/kill tom".
