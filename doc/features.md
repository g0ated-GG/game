# List of features

This list contains features I want to implement.
All of them are extremely difficult, but I will try.

## Core features
* Drawing things. This feature is similar to Spore editor. You can make your own models based on existing details.
  * Clothes and hair editor.
  * Weapons editor.
* Clan wars. We have a crew of different characters. We can invite or kick out any of them.
* Fast-regenerable parameter instead of health points. It's an interesting idea I had a long time ago. Instead of gradually decreasing health, we try to win by damage per minute. This principle has some problems, but I think it's a feature that encourages active combat.
* Character relationship system. Each character have list of parameters (traits) which affects on decisions and combat efficiency.
  * If we say something or do something, it affects on these parameters.
    * Ability to check what actions affects on each parameter.
* Environment transform during fight. Phases of boss affects not only himself but terrain too.
## QoL
* Crew command system. We can give orders during fight.
* Standard save system.
* Mods. I expect conflict cases here because of Godot scene replacing mechanism (if you load a different version of scene, it completely overrides the current version. What if we have two mods replacing one scene???)
## PoC
* Dialogue generation.
* Procedural city generation. We have several parts of the city we can use as a puzzle details. This is the most difficult thing to implement: each result of generation must be correct and playable.
  * Building generation on demand. If we enter any building, it will be generated as we move in it.
* NPC generation. Each NPC has its own list of traits, but this system is simpler than the characters in crew.
* Game version control system. You can disable features and fixes of each patch as if they were mods.
* Rewind feature. It's a hierarchical save system which make possible to see every moment of game process and start from any position.
