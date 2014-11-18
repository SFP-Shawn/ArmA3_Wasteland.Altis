// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: briefing.sqf

if (!hasInterface) exitWith {};

waitUntil {!isNull player};

player createDiarySubject ["infos", "Infos et Aide"];
player createDiarySubject ["changelog", "Changelog"];
player createDiarySubject ["credits", "Remerciements"];

player createDiaryRecord
	["changelog",
		[
			"v1.1 By Shawn",
				"
					<br/><br/>
					<img image='Wasteland.paa'/><br/>
					<br/><br/>
					Mise à jour au 18/11/2014 :<br/>
					<br/>
					*[Traduction] De l'aide <br/>
					*[Traduction] De l'amélioration <br/>
					*[Traduction] De l'info de mission <br/>
					*[Traduction] Des Scripts missions contre IA (à refaire)<br/>
					*[Traduction] Des Menus<br/>
					*[Ajout] Addon Arma Serveur Monitor<br/> 
					*[Correction] Menu molette<br/>
					*[Ajout] Panneau d'admin<br/>
					*[Traduction] De 30% des message du serveur<br/>
					*[Traduction] De 30% de la mission<br/>
					*[Correction] scripts divers<br/>
					*[Ajout] Addon Méteo + réglages <br/>
					*[Ajout] De la possibilité de denoncer un tueur d'equipe<br/>
					*[Ajout] De la fatigue + boisson energisante <br/>
					*[Ajout] Creation du logo wasteland par JP et Will! Merci<br/>
					*[Ajout] Addon R3F Armes 3.2 (exclusivité grace à Ludo)<br/>
					*[Ajout] Addon R3F Uniformes 3.2 (exclusivité grace à Ludo)<br/>
					*[Ajout] Addon TaskForceRadio 0.9.2<br/>
					*[Ajout] Addon Femal3<br/>
					*[Ajout] Addon female<br/>
					*[Ajout] Addon Ivory mig 29<br/>
					*[Ajout] Addon R3F AIComtarget<br/>
					*[Correction] Script de saut (Bigjump)<br/>
					*[Correction] Script tueur d'équipe<br/>
					*[Correction] Sac à dos radio qui se remplacé<br/>
					*[Correction] Les Chargeur de l'inventaire ne sont pas supprimés lors de la vente d'armes<br/>
					*[Correction] Erreurs aléatoires dans fn_LSgetBuildingstospawnLoot.sqf<br/>
					*[Correction] Correction d'un problème avec des fusées éclairantes pour certains hélicos<br/>
					*[Ajout] Addon F/A-18 Super Hornet<br/>
					*[Ajout] Addon JackFrench (Skin des vehicules armée française)
					*[A venir] L'achat des addons ajouter apres les tests en debug ;)<br/>
				<br/>	
				<br/>
				"
		]
	];

player createDiaryRecord 	["changelog",
[
"v1.0b",
"
<br/> [Added] Helicopters DLC content
<br/> [Added] Revamped respawn menu
<br/> [Added] 250m altitude limit for territory capture
<br/> [Added] HALO insertion on spawn beacons
<br/> [Added] New vehicle store textures
<br/> [Changed] Increased damage done to planes by 50%
<br/> [Changed] Plane engines shutdown when above 90% damage
<br/> [Changed] Player names can also be toggled with Home key
<br/> [Changed] Increased ATGM UAV price
<br/> [Changed] Increased prices from thermal scopes again
<br/> [Changed] Minor edits to spawn loadouts
<br/> [Fixed] FPS drop that began in v0.9h
<br/> [Fixed] Saved UAVs not being connectable
<br/> [Fixed] Indies unable to get in UGVs
<br/> [Fixed] Blinking fog
<br/> [Fixed] Clipped numbers on scoreboard
<br/> [Fixed] Minor other optimizations and fixes
"
]
							];

player createDiaryRecord ["changelog",
[
"v1.0",
"
<br/> [Added] Custom scoreboard
<br/> [Added] Mission and store vehicle saving
<br/> [Added] Player markers on GPS and UAV Terminal
<br/> [Added] Holster actions
<br/> [Changed] Full rewrite of side mission system
<br/> [Changed] Windows key toggles player marker names too
<br/> [Changed] New loading picture by Gameaholic.se
<br/> [Fixed] Weapon sometimes disppearing when moving objects
<br/> [Fixed] More money duping exploits
<br/> [Fixed] Store menu sizes on smaller aspect ratios
<br/> [Fixed] Hunger and thirst reset on rejoin
<br/> [Fixed] Other minor optimizations and fixes
"
]];

player createDiaryRecord ["changelog",
[
"0.9h",
"
<br/> [Added] Custom revive system based on Farooq's Revive
<br/> [Added] Territory payroll at regular intervals
<br/> [Added] Emergency eject and free parachutes (jump key)
<br/> [Added] Player names toggled with Windows key
<br/> [Added] Increased missile damage against tanks and helis
<br/> [Added] Ability to stash money in weapon crates
<br/> [Added] Ability to sell vehicle inventory at stores
<br/> [Added] More money shipment mission variants
<br/> [Added] Reduced wheel damage from collisions
<br/> [Added] Wreck salvaging
<br/> [Added] Selling bin in stores
<br/> [Added] Karts DLC content in stores
<br/> [Added] Camo sniper rifles in gunstore
<br/> [Added] Repair Offroad in vehicle store
<br/> [Added] Team players on map as server option
<br/> [Added] Unlimited stamina server option
<br/> [Added] Static weapon saving server option
<br/> [Added] More push vehicle actions
<br/> [Added] Paradrop option for airlifted vehicles
<br/> [Added] Preload checkbox on respawn menu
<br/> [Added] Remote explosives store distance restriction
<br/> [Added] Server time multipliers for day and night
<br/> [Added] Addon-less profileNamespace server persistence
<br/> [Added] Linux server compatibility
<br/> [Added] Basic support for headless client
<br/> [Changed] Independent territory capture is now group-based
<br/> [Changed] Towns blocked if more enemies than friendlies
<br/> [Changed] Increased ammo/fuel/repair cargo for resupply trucks
<br/> [Changed] Increased territory capture rewards for Altis
<br/> [Changed] Increased money mission rewards
<br/> [Changed] Weapon loot in buildings now disabled by default
<br/> [Changed] Mission crates loot was made more random
<br/> [Changed] Thermal imaging is now available on UAVs
<br/> [Changed] Increased vehicle store prices
<br/> [Changed] Increased prices for thermal optics
<br/> [Changed] Increased player icons up to 2000m
<br/> [Changed] Improved antihack
<br/> [Changed] Improved FPS
<br/> [Fixed] Vehicle store purchase errors due to server lag
<br/> [Fixed] Corpse created when leaving with player saving
<br/> [Fixed] Custom vehicle damage handling not working
<br/> [Fixed] Indie-indie spawn beacon stealing
<br/> [Fixed] Repair kit and jerrycan distance limit
<br/> [Fixed] Spawn beacon packing and stealing restrictions
<br/> [Fixed] Not able to lock static weapons
<br/> [Fixed] Unbreakable store windows
<br/> [Fixed] Stratis airbase gunstore desk glitches
<br/> [Fixed] Missions sometimes completing instantaneously
<br/> [Fixed] Object ammo/fuel/repair cargo not saving
<br/> [Fixed] Respawn menu aspect ratio on some resolutions
<br/> [Fixed] Minor bugs with group system
<br/> [Fixed] Minor bugs with player items
<br/> [Fixed] Various other minor bugfixes and optimizations
"
]];

player createDiaryRecord ["changelog",
[
"0.9g",
"
<br/> [Added] - Vehicle stores
<br/> [Added] - New lootspawner by Na_Palm, stuff in ALL buildings
<br/> [Added] - New jets and truck added in A3 v1.14
<br/> [Added] - New AAF vehicles added in A3 v1.08
<br/> [Added] - New camos for Mk20 and MX in gunstores
<br/> [Added] - Ability to push plane backwards
<br/> [Added] - Ability to sell quadbike contents like crates
<br/> [Added] - Abort delay during combat when player saving on
<br/> [Changed] - Improved respawn menu
<br/> [Changed] - Respawn now longer to preload destination
<br/> [Changed] - Optimized player icons
<br/> [Changed] - Optimized FPS fix
<br/> [Changed] - Improved server persistence (requires iniDBI v1.4+)
<br/> [Changed] - Improved player saving (server-specific)
<br/> [Changed] - Improved base saving (server-specific)
<br/> [Changed] - Reduced starting gear
<br/> [Changed] - Modified some store prices
<br/> [Changed] - Reduced initial fuel in cars and helis
<br/> [Changed] - Removed Buzzard jet from too short runways
<br/> [Changed] - Removed Kavala castle territory for use as base
<br/> [Changed] - Increased vehicle repair time to 20 sec.
<br/> [Changed] - Increased owner unlocking time to 10 sec.
<br/> [Changed] - Toggling spawn beacon perms is now instant
<br/> [Changed] - Improved Take option for player items
<br/> [Changed] - Added option to cancel towing selection
<br/> [Changed] - Added machine gunner to main mission NPCs
<br/> [Changed] - Added grenadier to side mission NPCs
<br/> [Fixed] - Error messages in various menus
<br/> [Fixed] - Crash when toggling spawn beacon perms
<br/> [Fixed] - Error when hacking warchests
<br/> [Fixed] - Vehicle towing and lifting positions
<br/> [Fixed] - Repair Vehicle option showing for brand new vehicles
<br/> [Fixed] - Vest purchase price
<br/> [Fixed] - Vest and helmet armor value
<br/> [Fixed] - NPC leader now has launcher ammo
"
]];

player createDiaryRecord ["changelog",
[
"0.9f",
"
<br/> [Added] - Money missions
<br/> [Added] - Sell Crate Items option at stores when moving crate
<br/> [Changed] - Reorganized loots for crates and trucks
<br/> [Fixed] - Broken Warchest menu
<br/> [Fixed] - Spawn beacons not working for Independent groups
<br/> [Fixed] - Player icons position inside buildings
<br/> [Fixed] - MRAPs and quadbikes not spawning
<br/> [Fixed] - Broken money rewards for territories
"
]];

player createDiaryRecord ["changelog",
[
"0.9e",
"
<br/> [Added] - Territory system
<br/> [Added] - Jumping option (step over while running)
<br/> [Added] - New weapons from v1.04 update
<br/> [Changed] - Water and food now use water bottles and baked beans
<br/> [Fixed] - Store object purchases not operating as intended
<br/> [Fixed] - Objects purchased from stores not saving properly
<br/> [Fixed] - Minor server-side memory leak
"
]];

player createDiaryRecord ["changelog",
[
"0.9d",
"
<br/> [Added] - Store object purchases
<br/> [Changed] - New UI by KoS
"
]];

player createDiaryRecord ["changelog",
[
"0.9c",
"
<br/> [Changed] - Instant money pickup and drop
<br/> [Changed] - Increased plane and heli spawning odds
<br/> [Fixed] - FPS fix improvements
<br/> [Fixed] - Vehicles disappearing when untowed or airdropped
"
]];

player createDiaryRecord ["changelog",
[
"0.9b",
"
<br/> [Initial release] - Welcome to Altis!
"
]];


player createDiaryRecord ["credits",
[
"Remerciements",
"

<br/><br/>
<img image='Wasteland.paa'/><br/>
<br/><br/>

<br/><font size='16' color='#BBBBBB'>Developpement par l'equipe SFP:</font>
<br/>	* [SFP] Shawn
<br/>
<br/><font size='16' color='#BBBBBB'>Developed by A3Wasteland.com:</font>
<br/>	* AgentRev (TeamPlayerGaming)
<br/>	* JoSchaap (GoT/Tweakers.net)
<br/>	* MercyfulFate
<br/>	* His_Shadow (KoS/KillonSight)
<br/>	* Bewilderbeest (KoS/KillonSight)
<br/>	* Torndeco
<br/>	* Del1te (404Games)
<br/>
<br/><font size='16' color='#BBBBBB'>Original Arma 2 Wasteland missions by:</font>
<br/>	* Tonic
<br/>	* Sa-Matra
<br/>	* MarKeR
<br/>
<br/><font size='16' color='#BBBBBB'>Improved and ported to Arma 3 by 404Games:</font>
<br/>	* Deadbeat
<br/>	* Costlyy
<br/>	* Pulse
<br/>	* Domuk
<br/>
<br/><font size='16' color='#BBBBBB'>Other contributors:</font>
<br/>	* 82ndab-Bravo17 (GitHub)
<br/>	* afroVoodo (Armaholic)
<br/>	* Austerror (GitHub)
<br/>	* AWA (OpenDayZ)
<br/>	* bodybag (Gameaholic.se)
<br/>	* code34 (iniDBI)
<br/>	* Das Attorney (Jump MF)
<br/>	* Ed! (404Games forums)
<br/>	* Farooq (GitHub)
<br/>	* HatchetHarry (GitHub)
<br/>	* Hub (TeamPlayerGaming)
<br/>	* k4n30 (GitHub)
<br/>	* Krunch (GitHub)
<br/>	* madbull (R3F)
<br/>	* Mainfrezzer (Magnon)
<br/>	* meat147 (GitHub)
<br/>	* Na_Palm (BIS forums)
<br/>	* red281gt (GitHub)
<br/>	* RockHound (BierAG)
<br/>	* s3kShUn61 (GitHub)
<br/>	* Sa-Matra (BIS forums)
<br/>	* Sanjo (GitHub)
<br/>	* SCETheFuzz (GitHub)
<br/>	* Shockwave (A3W forums)
<br/>	* SicSemperTyrannis (iniDB)
<br/>	* SPJESTER (404Games forums)
<br/>	* spunFIN (BIS forums)
<br/>	* Tonic (BIS forums)
<br/>	* wiking.at (A3W forums)
<br/>
<br/><font size='16'>Merci a tous pour le devellopement, l'inspiration ainsi que l'aide!</font>
"
]];


player createDiaryRecord ["infos",
[
			"Trucs / Astuces",
			"
			<br/><br/>
			<img image='Wasteland.paa'/><br/>
			<br/><br/>
			SFP Wasteland Revolution
			<br/>
			* Au debut de la mission, dispersez vous et trouvez des reserves avant de vous soucier de trouver une base ou un endroit de rassemblement. Les reserves sont importantes et precieuses.<br/>
			<br/>
			* Pour le choix d'une base, preferez un endroit en dehors et pas evident tel que les aeroports, villes, etc. Souvenez vous que les joueurs apparaissent au hasard, dans et en dehors des villes, et pourraient apparaître sur votre base dans une ville.<br/>
			<br/>
			* Si vous apparaissez dans une zone sans vehicules ou reserves aux alentours, NE cliquez PAS sur le bouton REAPPARITION du menu pause, il y a de fortes chances que vous trouviez quelque chose dans un rayon d'une centaine de metres.<br/>
			<br/>
			* Soyez attentifs aux lunettes de vision nocturne. Elles sont situees dans les caisses de munitions. Il y a aussi qui sont dans quelques vehicules. Vous pouvez egalement en acheter au magasin d'armes. La nuit sans ces lunettes CRAINT, et si vous en avez, vous pouvez mener des attaques furtives en base ennemie sous couverture dans le noir complet.<br/>
			<br/>
			* Lorsque vous etablissez une base, ne laissez jamais vos reserves sans surveillance. Un garde suffit mais 2 gardes sont recommandes, voire 3 en permanence.<br/>
			<br/>
			* L'helicoptere de la mission apparait avec peu de carburant, donc attention au tableau de bord de l'helico sauf si vous etes armes et voulez le proteger, ou ayez du carburant qui peut être trouve dans les stations, ou des bidons fendus autour des villes.<br/>
			<br/>
			* Prenez garde aux personnages AI qui sont tres agressifs et apparaissent avec beaucoup de missions pour lesquelles ils seront pret a tout.<br/>
			<br/>
			"
	]
							];

player createDiaryRecord ["infos",
[
			"A propos de Wasteland",
			"
			<br/>
			Wasteland est une mission ou la survie est a son meilleur niveau! N'oubliez pas que ce jeu est en constante evolution, merci de signaler les bugs a Shawn en MP sur www.sfpteam.fr.<br/>
			<br/>
			"
		]
	];

player createDiaryRecord ["infos",
	[	
			"FAQ",
			"
			<br/>
			Q. Que dois je faire?<br/>
			R. Voir la description ci-dessus<br/>
			<br/>
			Q. Ou puis je acheter une arme?<br/>
			R. Les armes sont disponibles a trois endroits : dans les caisses de munitions qui sont des recompenses de missions, dans ou en dehors de batiments, et deuxiemement, dans l'inventaire des vehicules, qui apparait au hasard sur la carte. Enfin vous pourrez en trouver aux magasins d'armes un peu partout sur la carte. Ou encore sur le corps de joueurs morts pas encore depouilles.<br/>
			<br/>
			Q. Que signifient les cercles gris sur la carte?<br/>
			R. Les cercles representent les frontières des villes. Si des soldats amis sont en ville, vous pouvez apparaitre la a partir du menu re-spawn; toutefois si des ennemis sont presents vous ne pourrez pas y apparaitre.<br/>
			<br/>
			Q. Pourquoi fait-il aussi sombre? Je ne vois rien.<br/>
			R. Le serveur a un cycle jour/nuit comme en vrai, donc la nuit est un facteur dans votre survie. Il est recommande de trouver des sources de lumiere ou d'utiliser les lunettes de vision nocturne.<br/>
			<br/>
			Q. Puis je tirer sur des membres de mon unite?<br/>
			R. Si vous etes membre des unites BLUFOR ou OPFOR, vous NE pouvez PAS tuer, voler des equipements ou vehicules des autres joueurs. Si vous jouez en independant, vous etes libre d'engager qui vous voulez et vous alliez avec qui vous le souhaitez.<br/>
			<br/>
			Q. Qu'est ce que sont les buckets, paniers et grands sacs?<br/>
			R. Cette mission a un système d'eau et de nourriture que vous devez avoir pour pouvoir survivre. Vous pouvez trouver de l'eau et de la nourriture grace aux bidons en plastique, sacs de nourriture, puits, ou des paniers a côte de joueurs morts. De l'eau et de la nourriture apparaissent au hasard sur la carte.<br/>
			<br/>
			Q. J'ai vu quelqu'un enfreindre une regle, que dois je faire?<br/>
			R. Signalez le sur le chat global a un des admins, ou sur www.sfpteam.fr.<br/>
			<br/>
			"
		]
	];
