--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Planet config

local function GetPlanet(planetUtilities, planetID)
	
	local image = LUA_DIRNAME .. "images/planets/swamp02.png"
	
	local planetData = {
		name = "Leopard",
		startingPlanet = false,
		mapDisplay = {
			x = (planetUtilities.planetPositions and planetUtilities.planetPositions[planetID][1]) or 0.55,
			y = (planetUtilities.planetPositions and planetUtilities.planetPositions[planetID][2]) or 0.78,
			image = image,
			size = planetUtilities.PLANET_SIZE_MAP,
		},
		infoDisplay = {
			image = image,
			size = planetUtilities.PLANET_SIZE_INFO,
			backgroundImage = planetUtilities.backgroundImages[math.floor(math.random()*#planetUtilities.backgroundImages) + 1],
			terrainType = "Barren",
			radius = "5870 km",
			primary = "Near Varra",
			primaryType = "K3VI",
			milRating = 1,
			text = [[If you want to control the sea, it's also important to control the air above it. Use Owl scout planes to find underwater units, then Raven precision bombers to destroy those underwater units and any other high-value targets.]]
		},
		tips = {
			{
				image = "unitpics/bomberprec.png",
				text = [[Ravens are designed for destroying valuable buildings and units in focused bombing raids. To hit a mobile target they will dive close to the ground. The bombs of Ravens can hit underwater units.]]
			},
			{
				image = "unitpics/planescout.png",
				text = [[Owls are very good at providing direct line-of-sight for artillery and spotting incoming attacks above and below the water with radar and sonar. They can also be used to scout behind enemy lines, although the faster-moving Swift is better at this.]]
			},
			{
				image = "unitpics/spideraa.png",
				text = [[Keep your bombers away from large concentrations of enemy anti-air units, and pick off lone stragglers when an opportunity is presented.]]
			},
		},
		gameConfig = {
			mapName = "IslandTest",
			playerConfig = {
				startX = 6040,
				startZ = 1158,
				allyTeam = 0,
				facplop = false,
				commanderParameters = {
					facplop = false,
					defeatIfDestroyedObjectiveID = 2,
					victoryAtLocation = {
						x = 1230,
						z = 5930,
						radius = 100,
						objectiveID = 1,
					},
				},
				extraUnlocks = {
					"factoryplane",
					"planecon",
					"planefighter",
					"planescout",
					"bomberprec",
					"staticrearm",
				},
				startUnits = {
					{
						name = "factoryplane",
						x = 6232,
						z = 912,
						facing = 3,
					},
					{
						name = "staticcon",
						x = 6050,
						z = 1000,
						facing = 3,
						selfPatrol = true,
					},
 					{
						name = "staticrearm",
						x = 6056,
						z = 856,
						facing = 3,
					},
					{
						name = "energysolar",
						x = 5800,
						z = 856,
						facing = 3,
					},
					{
						name = "energysolar",
						x = 5700,
						z = 856,
						facing = 3,
					},
					{
						name = "energysolar",
						x = 5600,
						z = 856,
						facing = 3,
					},
 					{
						name = "staticrearm",
						x = 6280,
						z = 1096,
						facing = 3,
					},
					{
						name = "energysolar",
						x = 6280,
						z = 1300,
						facing = 3,
					},
					{
						name = "energysolar",
						x = 6280,
						z = 1400,
						facing = 3,
					},
					{
						name = "energysolar",
						x = 6280,
						z = 1500,
						facing = 3,
					},
 					{
						name = "staticmex",
						x = 6120,
						z = 1032,
						facing = 3,
					},
 					{
						name = "bomberprec",
						x = 6705,
						z = 83,
						facing = 0,
						commands = {
							{cmdID = planetUtilities.COMMAND.RAW_MOVE, pos = {6000, 1200}},
						},
					},
 					{
						name = "bomberprec",
						x = 6852,
						z = 165,
						facing = 0,
						commands = {
							{cmdID = planetUtilities.COMMAND.RAW_MOVE, pos = {6100, 1300}},
						},
					},
 					{
						name = "bomberprec",
						x = 6981,
						z = 247,
						facing = 0,
						commands = {
							{cmdID = planetUtilities.COMMAND.RAW_MOVE, pos = {6200, 1400}},
						},
					},
 					{
						name = "bomberprec",
						x = 7091,
						z = 348,
						facing = 0,
						commands = {
							{cmdID = planetUtilities.COMMAND.RAW_MOVE, pos = {6300, 1500}},
						},
					},
					{
						name = "bomberprec",
						x = 7100,
						z = 500,
						facing = 0,
						commands = {
							{cmdID = planetUtilities.COMMAND.RAW_MOVE, pos = {6400, 1600}},
						},
					},
 					{
						name = "planescout",
						x = 7034,
						z = 105,
						facing = 0,
						commands = {
							{cmdID = planetUtilities.COMMAND.RAW_MOVE, pos = {6400, 1200}},
						},
					},
				}
			},
			aiConfig = {
				{
					aiLib = "Circuit_difficulty_autofill",
					humanName = "Exodon",
					bitDependant = true,
					commanderParameters = {
						facplop = false,
					},
					allyTeam = 0,
					unlocks = {
						"staticmex",
						"energysolar",
						"energywind",
						"turretlaser",
						"turretmissile",
						"staticcon",
						"staticradar",
						"staticstorage",
						"factoryspider",
						"spidercon",
						"spiderscout",
						"spiderassault",
						"spideremp",
						"spiderriot",
						"spiderantiheavy",
						"spiderskirm",
						"spidercrabe",
						"factoryshield",
						"shieldcon",
						"shieldraid",
						"shieldriot",
						"shieldskirm",
						"shieldassault",
						"shieldarty",
						"shieldfelon",
						"shieldaa",
					},
					commander = false,
					startUnits = {
						{
							name = "staticheavyradar",
							x = 5500,
							z = 1650,
							facing = 3,
							terraformHeight = 270,
						},
						{
							name = "staticstorage",
							x = 5688,
							z = 1640,
							facing = 3,
						},
 						{
							name = "staticstorage",
							x = 5496,
							z = 1400,
							facing = 3,
						},
 						{
							name = "turretlaser",
							x = 5040,
							z = 1792,
							facing = 3,
						},
 						{
							name = "staticmex",
							x = 5176,
							z = 1976,
							facing = 0,
						},
 						{
							name = "staticmex",
							x = 4680,
							z = 1608,
							facing = 0,
						},
 						{
							name = "staticmex",
							x = 4872,
							z = 1144,
							facing = 0,
						},
 						{
							name = "staticmex",
							x = 4904,
							z = 792,
							facing = 0,
						},
 						{
							name = "staticmex",
							x = 5624,
							z = 1528,
							facing = 0,
						},
 						{
							name = "staticmex",
							x = 5592,
							z = 2472,
							facing = 3,
						},
 						{
							name = "staticmex",
							x = 6056,
							z = 2280,
							facing = 3,
						},
 						{
							name = "staticmex",
							x = 6392,
							z = 2296,
							facing = 3,
						},
 						{
							name = "energysolar",
							x = 6120,
							z = 2296,
							facing = 0,
						},
 						{
							name = "energysolar",
							x = 6040,
							z = 2344,
							facing = 3,
						},
 						{
							name = "energysolar",
							x = 5992,
							z = 2264,
							facing = 2,
						},
 						{
							name = "energysolar",
							x = 6072,
							z = 2216,
							facing = 1,
						},
 						{
							name = "energysolar",
							x = 5688,
							z = 1544,
							facing = 0,
						},
 						{
							name = "energysolar",
							x = 5608,
							z = 1592,
							facing = 3,
						},
 						{
							name = "energysolar",
							x = 5560,
							z = 1512,
							facing = 2,
						},
 						{
							name = "energysolar",
							x = 5640,
							z = 1464,
							facing = 1,
						},
 						{
							name = "factoryspider",
							x = 5944,
							z = 1656,
							facing = 1,
						},
 						{
							name = "energysolar",
							x = 4936,
							z = 1160,
							facing = 0,
						},
 						{
							name = "energysolar",
							x = 4856,
							z = 1208,
							facing = 3,
						},
 						{
							name = "energysolar",
							x = 4808,
							z = 1128,
							facing = 2,
						},
 						{
							name = "energysolar",
							x = 4888,
							z = 1080,
							facing = 1,
						},
 						{
							name = "factoryshield",
							x = 5568,
							z = 1208,
							facing = 2,
						},
 						{
							name = "staticcon",
							x = 5752,
							z = 1400,
							facing = 2,
						},
 						{
							name = "turrettorp",
							x = 4904,
							z = 520,
							facing = 1,
						},
 						{
							name = "turrettorp",
							x = 6600,
							z = 2200,
							facing = 2,
						},
 						{
							name = "staticmex",
							x = 5832,
							z = 3432,
							facing = 2,
						},
 						{
							name = "staticmex",
							x = 3704,
							z = 1320,
							facing = 2,
						},
 						{
							name = "turretheavylaser",
							x = 3448,
							z = 1304,
							facing = 3,
						},
 						{
							name = "turretriot",
							x = 3896,
							z = 952,
							facing = 3,
						},
 						{
							name = "turretriot",
							x = 6248,
							z = 3096,
							facing = 0,
						},
 						{
							name = "turretheavylaser",
							x = 5864,
							z = 3688,
							facing = 0,
						},
 						{
							name = "turretmissile",
							x = 5200,
							z = 1440,
							facing = 0,
						},
 						{
							name = "turretmissile",
							x = 5392,
							z = 1584,
							facing = 0,
						},
 						{
							name = "turretmissile",
							x = 5600,
							z = 1760,
							facing = 3,
						},
 						{
							name = "turretmissile",
							x = 5776,
							z = 1952,
							facing = 3,
						},
 						{
							name = "energysolar",
							x = 5240,
							z = 1992,
							facing = 0,
						},
 						{
							name = "energysolar",
							x = 5160,
							z = 2040,
							facing = 3,
						},
 						{
							name = "energysolar",
							x = 5112,
							z = 1960,
							facing = 2,
						},
 						{
							name = "energysolar",
							x = 5192,
							z = 1912,
							facing = 1,
						},
 						{
							name = "turretlaser",
							x = 5360,
							z = 2096,
							facing = 0,
						},
 						{
							name = "spideremp",
							x = 3218,
							z = 2455,
							facing = 2,
						},
 						{
							name = "shieldskirm",
							x = 4885,
							z = 2175,
							facing = 1,
							patrolRoute = {
								{4861, 2182},
								{4922, 2159},
							},
						},
 						{
							name = "shieldskirm",
							x = 3238,
							z = 2399,
							facing = 2,
						},
 						{
							name = "spideremp",
							x = 3262,
							z = 2457,
							facing = 2,
						},
 						{
							name = "shieldskirm",
							x = 3224,
							z = 2376,
							facing = 2,
						},
 						{
							name = "spiderassault",
							x = 3569,
							z = 2578,
							facing = 3,
						},
 						{
							name = "shieldriot",
							x = 3278,
							z = 2511,
							facing = 2,
						},
 						{
							name = "spideremp",
							x = 3240,
							z = 2491,
							facing = 2,
						},
 						{
							name = "shieldskirm",
							x = 3302,
							z = 2487,
							facing = 2,
						},
 						{
							name = "spiderskirm",
							x = 5341,
							z = 3583,
							facing = 0,
						},
 						{
							name = "shieldskirm",
							x = 5343,
							z = 3934,
							facing = 0,
						},
 						{
							name = "spiderassault",
							x = 5014,
							z = 2254,
							facing = 3,
							commands = {
								{cmdID = planetUtilities.COMMAND.PATROL, pos = {4863, 2186}, options = {"shift"}},
								{cmdID = planetUtilities.COMMAND.PATROL, pos = {4854, 2123}, options = {"shift"}},
							},
						},
 						{
							name = "shieldskirm",
							x = 5348,
							z = 3890,
							facing = 0,
						},
 						{
							name = "shieldskirm",
							x = 4892,
							z = 2200,
							facing = 3,
							patrolRoute = {
								{4836, 2244},
								{4863, 2186},
							},
						},
 						{
							name = "spiderscout",
							x = 1284,
							z = 1719,
							facing = 0,
						},
 						{
							name = "spiderscout",
							x = 4888,
							z = 3543,
							facing = 0,
						},
 						{
							name = "spiderscout",
							x = 3872,
							z = 3048,
							facing = 2,
						},
 						{
							name = "spiderscout",
							x = 4439,
							z = 3857,
							facing = 0,
						},
 						{
							name = "spiderscout",
							x = 3811,
							z = 3560,
							facing = 0,
						},
 						{
							name = "shieldskirm",
							x = 5338,
							z = 3866,
							facing = 0,
						},
 						{
							name = "spiderskirm",
							x = 4837,
							z = 2145,
							facing = 3,
							patrolRoute = {
								{4822, 2137},
								{4863, 2186},
							},
						},
 						{
							name = "spiderscout",
							x = 5475,
							z = 4831,
							facing = 2,
						},
 						{
							name = "shieldraid",
							x = 5281,
							z = 1736,
							facing = 3,
						},
 						{
							name = "spiderscout",
							x = 3614,
							z = 3838,
							facing = 3,
						},
 						{
							name = "spiderscout",
							x = 3403,
							z = 2533,
							facing = 0,
						},
 						{
							name = "shieldassault",
							x = 4910,
							z = 2154,
							facing = 3,
						},
 						{
							name = "spiderskirm",
							x = 5198,
							z = 2103,
							facing = 3,
							commands = {
								{cmdID = planetUtilities.COMMAND.PATROL, pos = {4863, 2186}, options = {"shift"}},
								{cmdID = planetUtilities.COMMAND.PATROL, pos = {4905, 2234}, options = {"shift"}},
							},
						},
 						{
							name = "shieldfelon",
							x = 5568,
							z = 1196,
							facing = 2,
							buildProgress = 0.9048,
						},
 						{
							name = "spiderskirm",
							x = 5980,
							z = 1656,
							facing = 1,
							buildProgress = 0.7809,
						},
					}
				},
				{
					startX = 1600,
					startZ = 5800,
					aiLib = "Circuit_difficulty_autofill",
					humanName = "Sybaria",
					bitDependant = true,
					commanderParameters = {
						facplop = false,
						--bonusObjectiveID = 4,
					},
					allyTeam = 1,
					unlocks = {
						"staticmex",
						"energysolar",
						"energywind",
						"turretlaser",
						"turretmissile",
						"turrettorp",
						"staticcon",
						"staticradar",
						"factoryspider",
						"staticstorage",
						"spidercon",
						"spiderscout",
						"spiderassault",
						"spideremp",
						"spiderriot",
						"spiderantiheavy",
						"spiderskirm",
						"spidercrabe",
						"spideraa",
						"factoryship",
						"shipcon",
						"shiparty",
						"shipskirm",
						"shiptorpraider",
						"shipscout",
						"shipriot",
						"subraider",
						"factoryamph",
						"amphcon",
						"amphraid",
						"amphfloater",
						"amphimpulse",
						"amphriot",
						"amphbomb",
					},
					difficultyDependantUnlocks = {
						[3] = {"amphaa"},
						[4] = {"shipassault","amphaa"},
					},
					commanderLevel = 6,
					commander = {
						name = "Alex.J", 
						chassis = "strike",
						modules = { 
							"commweapon_heavymachinegun",
							"commweapon_heavymachinegun",
							"module_autorepair",
							"module_autorepair",
							"module_autorepair",
							"module_autorepair",
							"module_heavy_armor",
							"module_heavy_armor",
							"module_heavy_armor",
							"module_adv_nano",
							"module_adv_nano",
							"module_dmg_booster",
							"module_dmg_booster",
						}
					},
					startUnits = {
						{
							name = "turretriot",
							x = 2450,
							z = 6300,
							facing = 1,
						},
						{
							name = "turretriot",
							x = 800,
							z = 4600,
							facing = 2,
						},
						{
							name = "turretgauss",
							x = 1100,
							z = 5400,
							facing = 3,
						},
						{
							name = "turretgauss",
							x = 1800,
							z = 6100,
							facing = 0,
						},
						{
							name = "turretgauss",
							x = 2100,
							z = 5800,
							facing = 2,
						},
						{
							name = "turretgauss",
							x = 1350,
							z = 5100,
							facing = 1,
						},
						{
							name = "turretmissile",
							x = 2720,
							z = 4304,
							facing = 1,
						},
 						{
							name = "staticmex",
							x = 1912,
							z = 5928,
							facing = 0,
						},
 						{
							name = "staticmex",
							x = 2264,
							z = 5368,
							facing = 0,
						},
 						{
							name = "staticmex",
							x = 1768,
							z = 4888,
							facing = 0,
						},
 						{
							name = "staticmex",
							x = 1208,
							z = 5240,
							facing = 0,
						},
 						{
							name = "staticmex",
							x = 744,
							z = 4760,
							facing = 0,
						},
 						{
							name = "staticmex",
							x = 1256,
							z = 3880,
							facing = 0,
						},
 						{
							name = "staticmex",
							x = 1896,
							z = 3704,
							facing = 0,
						},
 						{
							name = "staticmex",
							x = 2424,
							z = 4696,
							facing = 0,
						},
 						{
							name = "staticmex",
							x = 3448,
							z = 5240,
							facing = 2,
						},
 						{
							name = "staticmex",
							x = 3272,
							z = 5880,
							facing = 2,
						},
 						{
							name = "staticmex",
							x = 2392,
							z = 6392,
							facing = 2,
						},
 						{
							name = "turretheavylaser",
							x = 3592,
							z = 5512,
							facing = 1,
						},
 						{
							name = "turretheavylaser",
							x = 3240,
							z = 6360,
							facing = 1,
						},
 						{
							name = "turretheavylaser",
							x = 1656,
							z = 3576,
							facing = 2,
						},
 						{
							name = "turretheavylaser",
							x = 808,
							z = 3928,
							facing = 2,
						},
 						{
							name = "energywind",
							x = 1816,
							z = 4888,
							facing = 2,
						},
 						{
							name = "energywind",
							x = 1816,
							z = 4936,
							facing = 2,
						},
 						{
							name = "energywind",
							x = 1768,
							z = 4936,
							facing = 1,
						},
 						{
							name = "energywind",
							x = 1720,
							z = 4936,
							facing = 1,
						},
 						{
							name = "energywind",
							x = 1720,
							z = 4888,
							facing = 0,
						},
 						{
							name = "energywind",
							x = 1720,
							z = 4840,
							facing = 0,
						},
 						{
							name = "energywind",
							x = 1768,
							z = 4840,
							facing = 3,
						},
 						{
							name = "energywind",
							x = 1816,
							z = 4840,
							facing = 3,
						},
 						{
							name = "energywind",
							x = 2472,
							z = 4696,
							facing = 2,
						},
 						{
							name = "energywind",
							x = 2472,
							z = 4744,
							facing = 2,
						},
 						{
							name = "energywind",
							x = 2424,
							z = 4744,
							facing = 1,
						},
 						{
							name = "energywind",
							x = 2376,
							z = 4744,
							facing = 1,
						},
 						{
							name = "energywind",
							x = 2376,
							z = 4696,
							facing = 0,
						},
 						{
							name = "energywind",
							x = 2376,
							z = 4648,
							facing = 0,
						},
 						{
							name = "energywind",
							x = 2424,
							z = 4648,
							facing = 3,
						},
 						{
							name = "energywind",
							x = 2472,
							z = 4648,
							facing = 3,
						},
 						{
							name = "energywind",
							x = 2312,
							z = 5368,
							facing = 2,
						},
 						{
							name = "energywind",
							x = 2312,
							z = 5416,
							facing = 2,
						},
 						{
							name = "energywind",
							x = 2264,
							z = 5416,
							facing = 1,
						},
 						{
							name = "turretriot",
							x = 1448,
							z = 6008,
							facing = 1,
						},
 						{
							name = "energywind",
							x = 2216,
							z = 5416,
							facing = 1,
						},
 						{
							name = "energywind",
							x = 2216,
							z = 5368,
							facing = 0,
						},
 						{
							name = "energywind",
							x = 2216,
							z = 5320,
							facing = 0,
						},
 						{
							name = "energywind",
							x = 2264,
							z = 5320,
							facing = 3,
						},
 						{
							name = "energywind",
							x = 2312,
							z = 5320,
							facing = 3,
						},
 						{
							name = "turretriot",
							x = 1176,
							z = 5720,
							facing = 2,
						},
 						{
							name = "turretaalaser",
							x = 1032,
							z = 5880,
							facing = 3,
						},
 						{
							name = "energysolar",
							x = 1272,
							z = 5256,
							facing = 2,
						},
 						{
							name = "turretaalaser",
							x = 1288,
							z = 6136,
							facing = 0,
						},
 						{
							name = "energysolar",
							x = 1192,
							z = 5304,
							facing = 1,
						},
 						{
							name = "energysolar",
							x = 1144,
							z = 5224,
							facing = 0,
						},
 						{
							name = "energysolar",
							x = 1224,
							z = 5176,
							facing = 3,
						},
 						{
							name = "energysolar",
							x = 1848,
							z = 5912,
							facing = 0,
						},
 						{
							name = "energysolar",
							x = 1976,
							z = 5944,
							facing = 2,
						},
 						{
							name = "energysolar",
							x = 1896,
							z = 5992,
							facing = 1,
						},
 						{
							name = "energysolar",
							x = 1928,
							z = 5864,
							facing = 3,
						},
 						{
							name = "factoryamph",
							x = 1992,
							z = 5208,
							facing = 2,
						},
 						{
							name = "staticcon",
							x = 1992,
							z = 5320,
							facing = 2,
						},
 						{
							name = "factoryspider",
							x = 1464,
							z = 5704,
							facing = 1,
						},
 						{
							name = "factoryship",
							x = 848,
							z = 6384,
							facing = 1,
						},
 						{
							name = "staticcon",
							x = 840,
							z = 6264,
							facing = 1,
						},
 						{
							name = "turrettorp",
							x = 952,
							z = 6552,
							facing = 3,
						},
 						{
							name = "turrettorp",
							x = 600,
							z = 6232,
							facing = 1,
						},
 						{
							name = "turrettorp",
							x = 2728,
							z = 5064,
							facing = 1,
						},
 						{
							name = "turrettorp",
							x = 2136,
							z = 4376,
							facing = 2,
						},
 						{
							name = "turretaaclose",
							x = 1832,
							z = 5336,
							facing = 2,
							terraformHeight = -10,
						},
 						{
							name = "staticheavyradar",
							x = 2800,
							z = 4400,
							facing = 2,
							terraformHeight = 260,
						},
 						{
							name = "turretmissile",
							x = 2880,
							z = 4464,
							facing = 2,
						},
 						{
							name = "amphriot",
							x = 1738,
							z = 2967,
							facing = 2,
						},
 						{
							name = "spiderriot",
							x = 1758,
							z = 2934,
							facing = 2,
						},
 						{
							name = "subraider",
							x = 4437,
							z = 6624,
							facing = 3,
						},
 						{
							name = "spideremp",
							x = 1727,
							z = 2879,
							facing = 1,
						},
 						{
							name = "spiderscout",
							x = 4094,
							z = 5409,
							facing = 1,
						},
 						{
							name = "amphraid",
							x = 5717,
							z = 6175,
							facing = 2,
						},
 						{
							name = "spiderassault",
							x = 1749,
							z = 2820,
							facing = 2,
						},
 						{
							name = "amphfloater",
							x = 1760,
							z = 2659,
							facing = 2,
						},
 						{
							name = "spiderskirm",
							x = 1790,
							z = 2836,
							facing = 2,
						},
 						{
							name = "subraider",
							x = 2332,
							z = 2298,
							facing = 1,
						},
 						{
							name = "spideremp",
							x = 1770,
							z = 2875,
							facing = 3,
						},
 						{
							name = "amphfloater",
							x = 1772,
							z = 3175,
							facing = 2,
						},
 						{
							name = "shipskirm",
							x = 3767,
							z = 5640,
							facing = 2,
						},
 						{
							name = "spiderassault",
							x = 3963,
							z = 5404,
							facing = 1,
						},
 						{
							name = "spiderassault",
							x = 2075,
							z = 4938,
							facing = 1,
						},
 						{
							name = "shipskirm",
							x = 2162,
							z = 6696,
							facing = 3,
						},
 						{
							name = "amphriot",
							x = 1948,
							z = 5011,
							facing = 1,
						},
 						{
							name = "shipriot",
							x = 1660,
							z = 6493,
							facing = 1,
							commands = {
								{cmdID = planetUtilities.COMMAND.PATROL, pos = {2236, 6600}, options = {"shift"}},
								{cmdID = planetUtilities.COMMAND.PATROL, pos = {2256, 6539}, options = {"shift"}},
							},
						},
 						{
							name = "amphfloater",
							x = 2123,
							z = 4971,
							facing = 1,
						},
 						{
							name = "amphfloater",
							x = 1992,
							z = 5172,
							facing = 2,
							buildProgress = 0.65329999,
						},
 						{
							name = "spiderscout",
							x = 1904,
							z = 5691,
							facing = 1,
						},
 						{
							name = "shipscout",
							x = 828,
							z = 6376,
							facing = 1,
							buildProgress = 0.92379999,
						},
					}
				},
			},
			neutralUnits = {
				{
					name = "pw_artefact",
					x = 1230,
					z = 5930,
					facing = 0,
					invincible = true,
					ignoredByAI = true,
					mapMarker = {
						text = "Artefact",
						color = "green"
					},
				},
			},
			defeatConditionConfig = {
				[0] = { },
				[1] = {
					ignoreUnitLossDefeat = true,
					loseAfterSeconds = false,
				},
			},
			objectiveConfig = {
				[1] = {
					description = "Bring your Commander to the Artefact",
				},
				[2] = {
					description = "Protect your Commander",
				},
			},
			bonusObjectiveConfig = {
				[1] = { -- Build 25 Ravens
					satisfyOnce = true,
					countRemovedUnits = true, -- count units that previously died.
					comparisionType = planetUtilities.COMPARE.AT_LEAST,
					targetNumber = 25,
					unitTypes = {
						"bomberprec",
					},
					image = planetUtilities.ICON_DIR .. "bomberprec.png",
					imageOverlay = planetUtilities.ICON_OVERLAY.REPAIR,
					description = "Build 25 Ravens",
					experience = planetUtilities.BONUS_EXP,
				},
				[2] = {
					victoryByTime = 12*60,
					image = planetUtilities.ICON_OVERLAY.CLOCK,
					description = "Win by 12:00",
					experience = planetUtilities.BONUS_EXP,
				},
				[3] = { 
					onlyCountRemovedUnits = true,
					satisfyByTime = 6*60,
					comparisionType = planetUtilities.COMPARE.AT_LEAST,
					targetNumber = 3,
					enemyUnitTypes = {
						"factoryship",
						"factoryspider",
						"factoryamph",
					},
					image = planetUtilities.ICON_DIR .. "factoryship.png",
					imageOverlay = planetUtilities.ICON_OVERLAY.ATTACK,
					description = "Destroy three enemy Factories before 6:00",
					experience = planetUtilities.BONUS_EXP,
				},
				-- [4] = { -- Kill enemy commander in 7:30
					-- satisfyByTime = 450,
					-- comparisionType = planetUtilities.COMPARE.AT_MOST,
					-- targetNumber = 0,
					-- -- See bonusObjectiveID in units table
					-- image = planetUtilities.ICON_DIR .. "strike.png",
					-- imageOverlay = planetUtilities.ICON_OVERLAY.ATTACK,
					-- description = "Destroy the enemy commander before 7:30",
					-- experience = planetUtilities.BONUS_EXP,
				-- },
			}
		},
		completionReward = {
			experience = planetUtilities.MAIN_EXP,
			units = {
				"planescout",
				"bomberprec",
			},
			modules = {
				"module_companion_drone_LIMIT_C_2",
			},
			abilities = {
			}
		},
	}
	
	return planetData
end

return GetPlanet
