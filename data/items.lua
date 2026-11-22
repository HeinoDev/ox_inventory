local DRINK_ANIM = {
dict = 'mp_player_intdrink', clip = 'loop_bottle', flag = 49 }
local DRINK_DISABLE = { combat = true }
local EAT_ANIM = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' }

local DRINK_PROP_POS = { x = 0.03, y = 0.03, z = 0.02 }
local DRINK_PROP_ROT = { x = 0.0, y = 0.0, z = -1.5 }

local COCKTAIL_PROP  = { model = 'prop_cocktail',      pos = DRINK_PROP_POS, rot = DRINK_PROP_ROT }
local HIGHBALL_PROP  = { model = 'prop_drink_whisky',  pos = DRINK_PROP_POS, rot = DRINK_PROP_ROT }
local WINE_PROP      = { model = 'prop_drink_redwine', pos = DRINK_PROP_POS, rot = DRINK_PROP_ROT }
local CHAMPAGNE_PROP = { model = 'prop_champ_flute',   pos = DRINK_PROP_POS, rot = DRINK_PROP_ROT }
local SHOT_PROP      = { model = 'prop_shot_glass',    pos = DRINK_PROP_POS, rot = DRINK_PROP_ROT }
local COFFEE_PROP    = { model = 'p_amb_coffeecup_01', pos = DRINK_PROP_POS, rot = DRINK_PROP_ROT }
local CAN_PROP       = { model = 'prop_ld_can_01',     pos = DRINK_PROP_POS, rot = DRINK_PROP_ROT }

return {
['printed_document'] = {
    label = 'Udskrevet dokument',
    weight = 10,
    stack = false,
    close = true,
    consume = 0,
    description = 'Et dokument udskrevet fra en computer.',
    client = { image = 'printed_document.png' },
    server = { export = 'sd-computers.usePrinted_document' },
},
['leather_belt'] = {
    label = 'Læderbælte',
    weight = 250,
    stack = true,
    close = true,
    consume = 0,
    description = 'Brug bæltet, mens du står tæt bag en anden spiller.',
    client = { export = 'heino_slapbelt.useBelt', image = 'leather_belt.png' },
},
['mystery_box'] = {
    label = 'Mystery Box',
    weight = 250,
    stack = true,
    close = true,
    consume = 0,
    description = 'Contains one collectible figurine.',
    client = { export = 'heino_mysteryfigurine.useMysteryBox', image = 'heino_fig_box.png' },
},
['mystery_figurine'] = {
    label = 'Mystery Figurine',
    weight = 150,
    stack = false,
    close = true,
    consume = 0,
    description = 'Place it on a nearby surface or keep it in your collection.',
    client = { export = 'heino_mysteryfigurine.useFigurine', image = 'heino_fig_scout.png' },
},
['wheel_clamp'] = {
    label = 'Hjullås',
    weight = 3500,
    stack = false,
    close = true,
    consume = 0,
    description = 'Genanvendeligt politiudstyr til parkerede køretøjer.',
    client = { export = 'heino_wheelclamp.useClamp', image = 'wheel_clamp.png' },
},
    ['fishingrod'] = {
        label = 'Fiskestang',
        weight = 1500,
        stack = false,
        close = true,
        client = { image = 'fishingrod.webp' },
    },
["dyno_sheet"] = {
    label = "Dyno Sheet",
    weight = 10,
    stack = false,
    close = true,
    consume = 0,
    client = {
      image = 'dyno_sheet.png', export = 'heino_mechanic.useDynoSheet' }
},

    -- ==== heino_printer ====
['event_flyer'] = {
    label = 'Event flyer', weight = 10, stack = false, close = true,
    consume = 0, client = { export = 'heino_printer.UseDocument', image = 'event_flyer.svg' },
},
['event_ticket'] = {
    label = 'Eventbillet', weight = 5, stack = false, close = true,
    consume = 0, client = { export = 'heino_printer.UseDocument', image = 'event_ticket.svg' },
},
['event_voucher'] = {
    label = 'Sponsor-kupon', weight = 5, stack = false, close = true,
    consume = 0, client = { export = 'heino_printer.UseDocument', image = 'event_voucher.svg' },
},
	-- ==== heino_appearance ====
['bags'] = {
		label = 'Poser',
		weight = 5,
		stack = true,
		close = true,
	},

['flipper_zero'] = {
    label = 'Flipper Zero',
    weight = 102,
    stack = false,
    close = true,
    consume = 0,
    description = 'A pocket-sized signal companion. Permanent wear; replace when depleted.',
    client = {
        export = 'heino_flipperzero.useFlipper',
        image = 'flipper_zero.png',
    },
},

	-- ==== heino_armor ====
['armor'] = {
		label = 'Lvl 1 Armor',
		description = 'Light Plate Carrier',
		weight = 2000,
		stack = true,
		close = true,
	},
['armour'] = {
		label = 'Skudsikkervest',
		weight = 3000,
		stack = true,
		durability = 100,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 2000
		},
	},
['police_vest'] = {
	label = 'Politi Skudsikkervest',
	weight = 2000,
	stack = true,
	close = true,
	allowArmed = true,
},
['plate_carrier'] = {
	label = 'Plate Vest',
	weight = 3000,
	stack = true,
	close = true,
	allowArmed = true,
	buttons = {
		{
			label = 'Fjern plader',
			action = function(slot)
				exports['heino_armor']:removePlates(slot)
			end,
		},
	},
},

	-- ==== heino_cheques ====
['paycheck'] = {
    label = 'Check',
    weight = 50,
    stack = false,
    close = true,
    description = 'Check du kan indløse for penge.',
    client = {
        export = 'heino_cheques.UseCheck',
    },
},

-- ==== heino_banktruck ====
['drivingplan'] = {
    label = 'Banktruck koereplan',
    weight = 100,
    stack = false,
    close = true,
    client = { export = 'heino_banktruck.UseDocument' }
},
['landmine'] = {
    label = 'Landmine',
    weight = 1500,
    stack = true,
    close = true
},
['hackingdevice'] = {
    label = 'Hacking Device',
    weight = 500,
    stack = false,
    close = true
},

	-- ==== heino_containerrobbery ====
['humane_card'] = {
		label = 'Humane Adgangskort',
		description = 'Adgangskort til Humane Labs',
		weight = 100,
		stack = false,
		close = true,
	},
["goldbar"] = {
		label = "Guldbar",
		weight = 1,
		stack = true,
		close = true,
	},
['scrapmetal'] = {
		label = 'Scrap Metal',
		weight = 80,
	},
['painting_4'] = {
		label = 'Maleri #4',
		weight = 350,
		stack = true,
		close = true,
	},
['hack_usb'] = {
    label = 'Phantom USB',
    weight = 100,
    stack = false
},
['hack_card'] = {
    label = 'Spoofing Card',
    weight = 100,
    stack = false
},
['bomb_c4'] = {
    label = 'C4 Explosive',
    weight = 3000,
},
['explosives'] = {
    label = 'Explosives',
    weight = 3000,
},
['plasma_cutter'] = {
    label = 'Plasma cutter',
    weight = 1000,
    stack = true,
},
['crypto_usb'] = {
		label = 'Crypto USB',
		weight = 5,
		stack = true,
		close = true,
	},
["drill"] = {
		label = "Drill",
		weight = 1,
		stack = true,
		close = true,
	},
['steel'] = {
		label = 'Stål',
		weight = 20,
		stack = true,
		close = true,
		description = nil,
	},
['sulfur_chunk'] = { label = 'Svovlklump', weight = 125, stack = true, close = true },
['gold_dust'] = { label = 'Guldstøv', weight = 50, stack = true, close = true },

	-- ==== heino_diving ====
['scuba_set'] = {
		label = 'Dykkerudstyr',
		weight = 8000,
		stack = false,
		close = true,
		consume = 0,
		client = {
			export = 'heino_diving.equipScuba'
		}
	},

	-- ==== heino_druglab ====
['skunk'] = {
			label = 'Skunk',
			weight = 5,
		},
['weed'] = {
		label = 'Hashblade',
		weight = 10,
		stack = true,
		close = true,
	},
['weed_pooch'] = {
		label = 'shunk',
		weight = 5,
		stack = true,
		close = true,
	},
['coke'] = {
		label = 'Kokainblade',
		weight = 1,
		stack = true,
		close = true,
	},
['kemikalier'] = {
		label = 'Kemikalier',
		weight = 10,
		stack = true,
		close = true,
	},
['druglab_keypad'] = {
		label = 'Lab keypad',
		weight = 500,
		stack = false,
		close = true,
		description = 'Placér den på en væg og køb labbet hos entreprenøren',
		client = {
			export = 'heino_druglab.useKeypad'
		}
	},
['coke_packaged'] = {
		label = 'Pakke med hvidt pulver',
		weight = 8,
		stack = true,
		close = true,
		client = { image = 'coke_packaged.webp' },
	},
['coke_pooch'] = {
		label = 'Pose med hvidt pulver',
		weight = 2,
		stack = true,
		close = true,
		client = { image = 'coke_pooch.webp' },
	},
['coke_pure'] = {
		label = 'Ren Kokain',
		weight = 10,
		stack = true,
		close = true,
		client = { image = 'coke_pure.webp' },
	},
['materialer'] = {
		label = 'Materialer',
		weight = 100,
		stack = true,
		close = true,
		client = { image = 'materialer.webp' },
	},
['meth_packaged'] = {
		label = 'Pakke med meth',
		weight = 8,
		stack = true,
		close = true,
		client = { image = 'meth_packaged.webp' },
	},
['opium_packaged'] = {
		label = 'Pose med kanyler med indhold',
		weight = 8,
		stack = true,
		close = true,
		client = { image = 'opium_packaged.webp' },
	},
['weed_packaged'] = {
		label = 'Joint',
		weight = 8,
		stack = true,
		close = true,
		client = { image = 'weed_packaged.webp' },
	},
['lab_key'] = {
		label = 'Lab nøgle',
		weight = 500,
		stack = false,
		close = true,
		description = 'Brug som bande-boss for at placere et laboratorium',
		client = {
			image = 'lab_key.webp',
			export = 'heino_labs.lab_key'
		}
	},
['meth'] = {
		label = 'Meth',
		weight = 10,
		stack = true,
		close = true,
	},
['meth_product'] = {
		label = 'Rå meth',
		weight = 10,
		stack = true,
		close = true,
	},
['hacking_device'] = {
		label = 'Hacking device',
		weight = 0,
		description = 'Will allow you to bypass vehicle security systems.',
		client = {
			export = 'rahe-boosting.hackingdevice',
		}
	},
['pose'] = {
		label = 'Pose',
		weight = 5,
		stack = true,
		close = true,
	},

	-- ==== heino_elektriker ====
['laptop'] = {
		label = 'Laptop',
		weight = 1500, -- Vægten (1.5 kg)
		stack = false, -- Man kan kun have 1 pr. slot
		close = true,  -- Lukker inventory når den bruges
		description = 'En personlig laptop'
	},

	-- ==== heino_evidence ====
['evidence_marker'] = {
		label = 'Bevis markør',
		weight = 5,
		stack = true,
		close = true,
	},
['empty_evidence_bag'] = {
		label = 'Tom bevispose',
		description = 'En tom pose til at opbevare beviser i',
		weight = 10,
		stack = true,
		close = false,
	},
['filled_evidence_bag'] = {
		label = 'Bevispose',
		description = 'En pose med indsamlet bevismateriale',
		weight = 15,
		stack = false,
		close = true,
		client = {
			export = 'heino_evidence.useEvidenceBag',
		},
	},

	-- ==== heino_gapcam ====
['gapcam'] = {
    label = 'Gap Cam',
    weight = 1500,
    stack = false,
    close = true,
    description = 'Sugekop-monteret 360 kamera til køretøjer.',
    client = {
        event = 'gapcam:use',
    },
},

	-- ==== heino_houserobbery ====
['ring'] = {
		label = 'Ringe',
		weight = 50,
		stack = true,
		close = true,
	},
['ring_deluxe'] = {
		label = 'Luksus Ringe',
		weight = 100,
		stack = true,
		close = true,
	},
['watch'] = {
		label = 'Ure',
		weight = 100,
		stack = true,
		close = true,
	},
['watch_deluxe'] = {
		label = 'Luksus Ure',
		weight = 200,
		stack = true,
		close = true,
	},
['goldnecklace'] = {
		label = 'Guld Halskæde',
		weight = 0.1,
		stack = true,
		close = true,
	},
['necklace'] = {
		label = 'Halskæder',
		weight = 120,
		stack = true,
		close = true,
	},
['necklace_deluxe'] = {
		label = 'Luksus Halskæder',
		weight = 180,
		stack = true,
		close = true,
	},
['dia_box'] = {
		label = 'Diamond Box',
		weight = 125,
		stack = true,
		close = true,
	},
['diamond'] = {
		label = 'Diamond',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},
['coins'] = {
    label = 'Coins',
    weight = 10,
},
['diamonds_box'] = {
    label = 'Diamonds Box',
    weight = 150,
},
['luxurious_watch'] = {
    label = 'Luxurious Watch',
    weight = 150,
},
['rare_coins'] = {
    label = 'Rare Coins',
    weight = 250,
},
['diamond_ring'] = {
    label = 'Diamond Ring',
    weight = 50,
},
['gold_bar'] = {
    label = 'Gold Bar',
    weight = 500,
},
['pink_diamond'] = {
    label = 'Pink Diamond',
    weight = 100,
},
['painting_1'] = {
		label = 'Maleri #1',
		weight = 350,
		stack = true,
		close = true,
	},
['painting_2'] = {
		label = 'Maleri #2',
		weight = 350,
		stack = true,
		close = true,
	},
['painting_3'] = {
		label = 'Maleri #3',
		weight = 350,
		stack = true,
		close = true,
	},
['tv'] = {
    label = 'Television',
    weight = 7500,
    stack = true,
},
['microwave'] = {
    label = 'Microwave',
    weight = 4500,
    stack = true,
},
['dj_deck'] = {
    label = 'DJ Deck',
    weight = 4500,
    stack = true,
},
['ruby'] = {
		label = 'Ruby',
		weight = 0.1,
		stack = true,
		close = false,
	},
['sapphire'] = {
		label = 'Sapphire',
		weight = 0.1,
		stack = true,
		close = false,
	},
['emerald'] = {
		label = 'Emerald',
		weight = 0.1,
		stack = true,
		close = false,
	},
['safe_note'] = {
		label = 'Seddel',
		client = { image = 'safe_note.webp' },
		weight = 5,
		stack = false,
		close = true,
		description = 'En krøllet seddel med noget skrevet på.',
	},
['dog_treat'] = {
		label = 'Hundegodbid',
		client = { image = 'dog_treat.webp' },
		weight = 50,
		stack = true,
		close = true,
	},

	-- ==== heino_idkort ====
['sundhedskort'] = {
    label = 'Sundhedskort',
    weight = 10,
    stack = false,
    close = true,
    description = 'Det gule sundhedskort.',
    client = {
        image = 'sundhedskort.webp',
        export = 'heino_idkort.UseCard',
    },
},

	-- ==== heino_jail ====
['fries'] = {
		label = 'Pomfritter',
		weight = 120,
		stack = true,
		close = true,
		client = {
			status = { hunger = 150000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
			usetime = 2000,
		}
	},
['rice'] = {
		label = 'Ris',
		weight = 120,
		stack = true,
		close = true,
		client = {
			status = { hunger = 150000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
			usetime = 2000,
		}
	},
['peas'] = {
		label = 'Ærter',
		weight = 100,
		stack = true,
		close = true,
		client = {
			status = { hunger = 120000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
			usetime = 2000,
		}
	},
['soda'] = {
		label = 'Sodavand',
		weight = 350,
		stack = true,
		close = true,
		client = {
			status = { thirst = 150000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			usetime = 2000,
		}
	},
['detergent'] = {
		label = 'Vaskemiddel',
		weight = 300,
		stack = true,
		close = true,
	},

	-- ==== heino_keys ====
['plate'] = {
		label = 'Lvl 1 Plate',
		weight = 950,
		stack = true,
		close = true,
	},
['lockpick'] = {
		label = 'Lockpick',
		weight = 160,
	},

	-- ==== heino_lootboxes ====
["medikit"] = {
		label = "Medikit",
		weight = 2,
		stack = true,
		close = true,
	},
['water'] = {
		label = 'Vand',
		weight = 220,
		client = {
			type = "drink",
			status = { thirst = 500000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'Du drak en vand'
		}
	},
['bread'] = {
			label = 'Brød',
			weight = 100
		},

	-- ==== heino_mechanic ====
["respray_kit"] = {
    client = { image = 'respray_kit.webp' },
    label = "Omlakeringskit",
    weight = 100,
    stack = true,
    close = true,
    description = "Et kit til omlakering af køretøjer",
  },
["performance_part"] = {
    client = { image = 'performance_part.webp' },
    label = "Ydelsesdel",
    weight = 100,
    stack = true,
    close = true,
    description = "En ydelsesdel til køretøjsmodifikationer",
  },
["body_part"] = {
    client = { image = 'body_part.webp' },
    label = "Karosseridel",
    weight = 100,
    stack = true,
    close = true,
    description = "En karosseridel til køretøjsmodifikationer",
  },
["wheel_part"] = {
    client = { image = 'wheel_part.webp' },
    label = "Hjuldel",
    weight = 100,
    stack = true,
    close = true,
    description = "En hjuldel til køretøjsmodifikationer",
  },
["misc_part"] = {
    client = { image = 'misc_part.webp' },
    label = "Diverse del",
    weight = 100,
    stack = true,
    close = true,
    description = "En diverse del til interiør- og æstetiske modifikationer",
  },
["workorder"] = {
    label = "Service Ordre",
    weight = 100,
    stack = false,
    close = true,
    description = "En service ordre til køretøjsmodifikationer",
    client = {
      image = 'workorder.webp',
      export = 'heino_mechanic.viewWorkOrder'
    }
  },
["wrench"] = {
    client = { image = 'wrench.webp' },
		label = "Wrench",
		weight = 1,
		stack = true,
		close = true,
	},
['mechanic_repairkit'] = {
    client = { image = 'mechanic_repairkit.webp' },
		label = 'Repairkit',
		weight = 2500,
		stack = true,
		close = true,
	},

	-- ==== heino_nitro ====
["nitro"] = {
    label = "Nitro",
    description = "Nitro",
    weight = 750,
    stack = false,
    close = true,
  },

	-- ==== heino_pawnshop ====
['diamantboks'] = {
    label = 'Diamant Boks',
    weight = 150,
},
['skull_art'] = {
    label = 'Kranium Kunst',
    weight = 500,
},
['painting1'] = {
    label = 'Maleri 1',
    weight = 200,
},
['painting2'] = {
    label = 'Maleri 2',
    weight = 300,
},
['painting3'] = {
    label = 'Maleri 3',
    weight = 400,
},
['painting4'] = {
    label = 'Maleri 4',
    weight = 600,
},
['refinedmaterial'] = {
    label = 'Refineret Materiale',
    weight = 10,
    stack = true,
    close = true,
    description = 'Refineret materiale fra pantelåneren, brugt til at lave smykker og dele.',
},
['printer'] = {
    label = 'Printer',
    weight = 10000,
    stack = true,
},

	-- ==== heino_pericoheist ====
['perico_keycard'] = {
		label = 'El Rubios Nøglekort',
		description = 'Nøglekort til kælderen i El Rubios compound',
		weight = 100,
		stack = false,
		close = true,
	},
['perico_tequila'] = {
		label = 'Sinsimito Tequila',
		description = 'En flaske af El Rubios dyreste tequila',
		weight = 1000,
	},
['perico_panther'] = {
		label = 'Panther-statuen',
		description = 'El Rubios uvurderlige panther-statue',
		weight = 5000,
		stack = false,
	},
['diamond_necklace'] = {
    label = 'Diamant Halskæde',
    weight = 300,
},
['painting'] = {
    label = 'Painting',
    weight = 100,
},
["gold"] = {
		label = "Gold",
		weight = 1,
		stack = true,
		close = true,
	},

	-- ==== heino_politi ====
['nikkit'] = {
		label = 'NIK-Kit',
		weight = 10,
		stack = true,
		close = true
	},
['fingerprintreader'] = {
		label = 'Fingeraftrykslæser',
		description = 'Bruges til at tage fingeraftryk af personer',
		weight = 100,
		stack = true,
		close = true,
	},
['evidence_sdcard'] = {
		label = 'SD-kort',
		description = 'Et SD-kort til evidens kameraet',
		weight = 5,
		stack = true,
		close = false,
	},
['evidence_camera'] = {
		label = 'Evidens kamera',
		description = 'Kamera til at tage billeder af beviser',
		weight = 200,
		stack = false,
		close = true,
	},
['usednikkit'] = {
		label = 'Brugt NIK-Kit',
		weight = 10,
		stack = true,
		close = true
	},
['cola'] = {
		label = 'Cola',
		weight = 220,
		client = {
			type = "drink",
			status = { thirst = 500000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'Du drak en cola'
		}
	},
['choko_donut'] = {
		label = 'Oreo Donut',
		degrade = 10080,
		decay = true,
		weight = 250,
		stack = true,
		close = true,
		client = {
			status = { hunger = 50000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
			prop = {
				model = 'prop_donut_01',
				pos = { x = 0.02, y = 0.02, z = -0.02},
				rot = { x = 220.0, y = 0.0, z = 50.0}
			},
			usetime = 2500,
		}
	},
['keyboard'] = {
    label = 'Keyboard',
    weight = 500,
    stack = true,
},
['phone_black'] = {
		label = 'Phone',
		weight = 190,
		stack = false,
		consume = 0,
		client = { image = 'phone_black.webp' },
		server = { export = 'sd-phone.usePhone_black' },
		buttons = {
			{ label = 'SIM Tray', action = function(slot) exports['sd-phone']:openSimTray(slot) end },
		},
	},
['gasmask'] = {
		label = 'Gasmaske',
		weight = 500,
		stack = true,
		close = true,
	},
["policetape"] = {
		label = "Afspærringstape",
		weight = 200,
		stack = true,
		close = true,
		description = "Politiets afspærringstape",
		client = {
			export = 'polititape.useTape'
		}
	},
['lommelygte'] = {
	label = 'Lommelygte',
	weight = 50,
	stack = true,
	close = true,
},
['aks_belt'] = {
    label = 'AKS-bælte',
    weight = 900,
    stack = false,
    close = false,
    consume = 0,
    description = 'Et bælte til at opbevare AKS-udstyr i felten',
    client = {
        image = 'aks_belt.webp',
    },
},

	-- ==== heino_radial ====
['zipties'] = {
		label = 'Zipties',
		weight = 20,
		stack = true,
		close = true,
		client = {
			image = 'ziptie.webp',
		},
	},

	-- ==== heino_shopping ====
['shop_receipt'] = {
		label = 'Kvittering',
		weight = 1,
		stack = false,
		close = false,
		client = {
			image = 'pos_receipt.webp',
		},
	},
['coffee'] = {
			label = 'Kaffe',
			weight = 350,
			consume = 0.25,
			client = {
				status = { thirst = 100000 },
				anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
				prop = { model = `p_amb_coffeecup_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
				usetime = 2500,
			}
		},
['burger'] = {
		label = 'Burger',
		weight = 150,
		stack = true,
		close = true,
		client = {
			type = "food",
			status = { hunger = 500000 },
			usetime = 2500,
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
			prop = {
				model = 'prop_cs_burger_01',
				pos = { x = 0.02, y = 0.02, z = -0.02},
				rot = { x = 0.0, y = 0.0, z = 0.0}
			},
		}
	},
['chips'] = {
		label = 'Chips',
		weight = 150,
		stack = true,
		close = true,
		client = {
			status = { hunger = 100000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
			usetime = 1500,
		}
	},
['chicken_wings'] = {
		label = 'Chicken Wings',
		weight = 350,
		stack = true,
		close = true,
		client = {
			status = { hunger = 250000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
			usetime = 2500,
		}
	},
['mozzarella_sticks'] = {
		label = 'Mozzarella Sticks',
		weight = 350,
		stack = true,
		close = true,
		client = {
			status = { hunger = 250000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
			usetime = 2500,
		}
	},
['club_sandwich'] = {
		label = 'Club Sandwich',
		weight = 500,
		stack = true,
		close = true,
		client = {
			status = { hunger = 350000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
			usetime = 2500,
		}
	},
['chokoladekage'] = {
		label = 'Chokoladekage',
		weight = 300,
		stack = true,
		close = true,
		client = {
			status = { hunger = 150000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
			usetime = 2000,
		}
	},
['cheesecake'] = {
		label = 'Cheesecake',
		weight = 300,
		stack = true,
		close = true,
		client = {
			status = { hunger = 150000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
			usetime = 2000,
		}
	},
['is'] = {
		label = 'Is',
		weight = 200,
		stack = true,
		close = true,
		client = {
			status = { hunger = 100000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
			usetime = 1500,
		}
	},
['sprunk'] = {
		label = 'Sprunk',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_can_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Du slukkede tÃ¸rsten med en Sprunk.'
		}
	},
['juice'] = {
		label = 'Juice',
		weight = 300,
		stack = true,
		close = true,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			notification = 'Du drak noget frisk juice.'
		}
	},
['redbull'] = {
		label = 'Red Bull',
		weight = 250,
		stack = true,
		close = true,
		client = {
			status = { thirst = 200000, stress = -10000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_can_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Du fik et energiboost fra en Red Bull.'
		}
	},
['club_soda'] = {
		label = 'Sodavand',
		weight = 400,
		stack = true,
		close = true,
		client = {
			status = { thirst = 250000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_can_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Du drak en kold sodavand.'
		}
	},
['opium'] = {
		label = 'Opium',
		weight = 10,
		stack = true,
		close = true,
	},
['hackerdevice'] = {
		label = 'Hacker Device',
		weight = 0.1,
		stack = true,
		close = true,
		description = nil
	},
["large_drill"] = {
    label = "Large Drill",
    weight = 12500,
    stack = true,
    close = true,
},
['weapon_digiscanner'] = {
    label = 'Signal Booster',
    weight = 1200,
    stack = true,
    close = true,
    client = {
        export = 'lunar_heistcontracts.useSignalBooster'
    }
},
['assaultrifle_case'] = {
        label = 'AK47 Kasse',
        weight = 5500,
        stack = true,
        close = true,
    },
['vintagepistol_case'] = {
        label = 'Vintage Pistol Kasse',
        weight = 1000,
        stack = true,
        close = true,
    },
['weapon_ceramicpistol'] = {
        label = 'Ceramic Pistol',
        weight = 500,
        stack = false,
        close = false,
    },
['weapon_pistol'] = {
        label = 'Pistol',
        weight = 500,
        stack = false,
        close = false,
    },
['weapon_lollipop'] = {
        label = 'Lollipop',
        weight = 750,
        stack = false,
        close = false,
    },
['pl14_case'] = {
		label = 'PL-14 Kasse',
		weight = 1000,
		stack = true,
		close = true,
	},
['m19_case'] = {
		label = 'M-19 Kasse',
		weight = 1000,
		stack = true,
		close = true,
	},
['p80_case'] = {
		label = 'P-80 Kasse',
		weight = 1000,
		stack = true,
		close = true,
	},
['3dg17_case'] = {
		label = '3D Glock 17 Kasse',
		weight = 1000,
		stack = true,
		close = true,
	},
['pf940_case'] = {
		label = 'PF-940 Kasse',
		weight = 1000,
		stack = true,
		close = true,
	},
['p99_case'] = {
		label = 'P-99 Kasse',
		weight = 1000,
		stack = true,
		close = true,
	},
['racingtablet'] = {
    label = 'Racing tablet',
    weight = 500,
    description = 'Ligner noget du kan bruge til biler..',
    stack = false,
    client = {
        export = 'rahe-racing.racingtablet',
    }
},
["phone_blue"] = {
		label = "Blue Phone",
		weight = 1,
		stack = true,
		close = true,
		consume = 0,
		client = { image = 'phone_blue.webp' },
		server = { export = 'sd-phone.usePhone_blue' },
	},
["phone_orange"] = {
		label = "Orange Phone",
		weight = 1,
		stack = true,
		close = true,
		consume = 0,
		client = { image = 'phone_orange.webp' },
		server = { export = 'sd-phone.usePhone_orange' },
	},
["phone_pink"] = {
		label = "Pink Phone",
		weight = 1,
		stack = true,
		close = true,
		consume = 0,
		client = { image = 'phone_pink.webp' },
		server = { export = 'sd-phone.usePhone_pink' },
	},
["phone_purple"] = {
		label = "Purple Phone",
		weight = 1,
		stack = true,
		close = true,
		consume = 0,
		client = { image = 'phone_purple.webp' },
		server = { export = 'sd-phone.usePhone_purple' },
	},
["phone_red"] = {
		label = "Red Phone",
		weight = 1,
		stack = true,
		close = true,
		consume = 0,
		client = { image = 'phone_red.webp' },
		server = { export = 'sd-phone.usePhone_red' },
	},
['paperbag'] = {
		label = 'Papirpose',
		weight = 1,
		stack = false,
		close = false,
		consume = 0
	},
['jointpapir'] = {
		label = 'Jointpapir',
		weight = 5,
		stack = true,
		close = true,
		client = {
			image = 'joint_paper.webp',
		},
	},
['notebook'] = {
		label = 'Notesbog',
		weight = 200,
		stack = true,
		close = true,
	},
['sprit'] = {
		label = 'Sprit',
		weight = 300,
		stack = true,
		close = true,
		client = {
			image = 'vodka.webp',
		},
	},
["cryptostick"] = {
		label = "Crypto-stick",
		weight = 5,
		stack = true,
		close = true,
		client = {
			image = 'crypto_usb.webp',
		},
	},
['boombox'] = {
    label = 'Boombox',
    weight = 1000,
    stack = false,
    close = true,
    description = 'Spil noget godt musik'
},

	-- ==== heino_skiggesbande ====
['chem_vial_purple'] = {
		label = 'Violetium',
		weight = 100,
		stack = true,
		close = true,
	},
['chem_vial_blue'] = {
		label = 'Cryonex',
		weight = 100,
		stack = true,
		close = true,
	},
['chem_vial_green'] = {
		label = 'Radionite',
		weight = 100,
		stack = true,
		close = true,
	},
['angle_grinder'] = {
    label = 'Angle Grinder',
    weight = 1500,
},
['machinepistol_case'] = {
        label = 'TEC-9 Kasse',
        weight = 1700,
        stack = true,
        close = true,
    },
['microsmg_case'] = {
        label = 'Micro SMG Kasse',
        weight = 5000,
        stack = true,
        close = true,
    },
['minismg_case'] = {
        label = 'Mini SMG Kasse',
        weight = 3700,
        stack = true,
        close = true,
    },
['pistol50_case'] = {
        label = 'Pistol 50 Kasse',
        weight = 2000,
        stack = true,
        close = true,
    },
['pistol_case'] = {
        label = 'Pistol Kasse',
        weight = 1300,
        stack = true,
        close = true,
    },
['pumpshotgun_case'] = {
        label = 'Haglgevær Kasse',
        weight = 4500,
        stack = true,
        close = true,
    },
['taurusg2c_case'] = {
		label = 'Taurus G2C Kasse',
		weight = 1000,
		stack = true,
		close = true,
	},
['glock43x_case'] = {
		label = 'Glock 43X Kasse',
		weight = 1000,
		stack = true,
		close = true,
	},
['glock19s_case'] = {
		label = 'Glock 19S Kasse',
		weight = 1000,
		stack = true,
		close = true,
	},
['stainlessg17_case'] = {
		label = 'Stainless G17 Kasse',
		weight = 1000,
		stack = true,
		close = true,
	},
['tanglock_case'] = {
		label = 'Tan Glock Kasse',
		weight = 1000,
		stack = true,
		close = true,
	},
['berretapico_case'] = {
		label = 'Beretta Pico Kasse',
		weight = 1000,
		stack = true,
		close = true,
	},
['berretam70_case'] = {
		label = 'Beretta M70 Kasse',
		weight = 1000,
		stack = true,
		close = true,
	},
['fn57_case'] = {
		label = 'FN Five-SeveN Kasse',
		weight = 1000,
		stack = true,
		close = true,
	},
['sawnoffshotgun_case'] = {
		label = 'Sawn Off Shotgun Kasse',
		weight = 5000,
		stack = true,
		close = true,
	},
['armor_plate'] = {
		label = 'Vest-plade',
		weight = 500,
		stack = true,
		close = true,
		consume = 0,
		client = {
			export = 'heino_armor.equipPlate',
		},
	},
['weaponmat'] = {
		label = 'Våbenmateriale',
		weight = 500,
		stack = true,
		close = true,
	},

	-- ==== heino_snus ====
['empty_snus_bag'] = {
		label = 'Tom skive',
		weight = 20,
		stack = true,
		close = true,
	},
['snus_tin'] = {
		label = 'Snus-bøtte',
		weight = 100,
		stack = false,
		close = true,
		client = {
			image = 'snus_tin.webp',
			export = 'heino_snus.useSnus',
		},
	},

	-- ==== heino_stashraid ====
["black_usb"] = {
    label = "Sort USB",
    weight = 1,
    stack = true,
    close = true,
    description = "",
  },
['thermite'] = {
    label = 'Thermite',
    weight = 350,
},
["small_drill"] = {
    label = "Small Drill",
    weight = 2000,
    stack = true,
    close = true,
},
["blueprint_silencer"] = {
		label = "Silencer Blueprint",
		weight = 0,
		stack = true,
		close = true,
	},
["lockpick_advanced"] = {
		label = "Advanceret Lockpick",
		weight = 20,
		stack = true,
		close = true,
	},
["iron"] = {
		label = "Jern",
		weight = 1,
		stack = true,
		close = true,
	},
["plastic"] = {
		label = "plastic",
		weight = 1,
		stack = true,
		close = true,
	},
["copper"] = {
		label = "Copper",
		weight = 1,
		stack = true,
		close = true,
	},
["aluminum"] = {
		label = "Aluminium",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = 'aluminium.webp',
		},
	},
["rubber"] = {
		label = "Gummi",
		weight = 1,
		stack = true,
		close = true,
	},
["rolex"] = {
		label = "Rolex",
		weight = 100,
		stack = true,
		close = true,
	},
["essence"] = {
		label = "Gas",
		weight = 1,
		stack = true,
		close = true,
	},
["gazbottle"] = {
		label = "Gas Bottle",
		weight = 2,
		stack = true,
		close = true,
	},
["carokit"] = {
		label = "Body Kit",
		weight = 3,
		stack = true,
		close = true,
	},
["carotool"] = {
		label = "Tools",
		weight = 2,
		stack = true,
		close = true,
	},
["fixkit"] = {
		label = "Repair Kit",
		weight = 3,
		stack = true,
		close = true,
	},
["fixtool"] = {
		label = "Repair Tools",
		weight = 2,
		stack = true,
		close = true,
	},

	-- ==== ND_Police ====
['handcuff'] = {
			label = 'Håndjern',
			weight = 220,
		},
['handcuffkey'] = {
	label = 'Håndjernsnøgle',
	weight = 1,
	stack = true,
	close = true,
	consume = 0,
	client = {
		export = 'ND_Police.uncuff'
	}
},

	-- ==== ars_ambulancejob ====
['bandage'] = {
    label = 'Bandage',
    weight = 115,
    stack = true,
    close = true,
    durability = 100,
    consume = 0.25,
    decay = true,
    description = 'Simpel sårforbinding. Mindsker blødning med et niveau.',
    client = {
        anim = {
            dict = 'anim@gangops@facility@servers@',
            clip = 'hotwire',
            flag = 49,
        },
        prop = {
            model = 'prop_rolled_sock_02',
            pos = vec3(0.05, 0.0, 0.05),
            rot = vec3(0.0, 90.0, 0.0),
        },
        disable = {
            move = false,
            car = false,
            combat = true,
        },
        usetime = 3500,
    },
},
['defibrillator'] = {
    label = 'Defibrillator',
    weight = 2500,
    stack = false,
    close = true,
    description = 'AED-enhed. Chancen for genoplivning falder jo længere patienten har været nede.',
},
['stretcher'] = {
    label = 'Båre',
    weight = 4000,
    stack = false,
    close = true,
    description = 'Udfoldelig båre.',
    client = {
        event = 'ice-ambulancejob:client:useStretcherItem',
    },
},
['medicalbag'] = {
    label = 'Medicinsk taske',
    weight = 220,
    stack = true,
    description = 'En omfattende medicinsk taske til behandling af skader og lidelser.',
},
['tweezers'] = {
    label = 'Pincet',
    weight = 100,
    stack = true,
    durability = 100,
    consume = 0.25,
    decay = true,
    description = 'Præcisionspincet til forsigtigt at fjerne fremmedlegemer, f.eks. kugler, fra sår.',
},
['burncream'] = {
    label = 'Forbrændingscreme',
    weight = 100,
    stack = true,
    durability = 100,
    consume = 0.25,
    decay = true,
    description = 'Creme til behandling og lindring af mindre forbrændinger og hudirritation.',
},
['suturekit'] = {
    label = 'Suturekit',
    weight = 100,
    stack = true,
    durability = 100,
    consume = 0.25,
    decay = true,
    description = 'Et kit med kirurgisk udstyr til at sy og lukke sår.',
},
['icepack'] = {
    label = 'Ispose',
    weight = 200,
    stack = true,
    durability = 100,
    consume = 0.25,
    decay = true,
    description = 'En ispose der mindsker hævelse og lindrer smerte og betændelse.',
},
['emstablet'] = {
    label = 'EMS-tablet',
    weight = 200,
    stack = true,
},
["medkit"] = {
        label = "Medicin Kit",
        weight = 100,
        client = {
            anim = {
                dict = "amb@medic@standing@tendtodead@idle_a",
                clip = "idle_a",
                flag = 1,
            },
            disable = {
                move = true,
                car = true,
                combat = true,
            },
            usetime = 10000,
        },
    },
['monitor'] = {
    label = 'Computer Monitor',
    weight = 3000,
    stack = true,
},
['idkort'] = {
    label = 'ID-kort',
    weight = 10,
    stack = false,
    close = true,
    description = 'Dansk identitetskort.',
    client = {
        image = 'idkort.webp',
        export = 'heino_idkort.UseCard',
    },
},
['koerekort'] = {
    label = 'Kørekort',
    weight = 10,
    stack = false,
    close = true,
    description = 'Dansk kørekort.',
    client = {
        image = 'koerekort.webp',
        export = 'heino_idkort.UseCard',
    },
},

	-- ==== bn-fleet ====
['gsr_kit'] = {
		label = 'GSR-Kit',
		weight = 10,
		stack = true,
		close = true
	},
['policecone'] = {
		label = 'Politikegle',
		weight = 500,
		stack = true,
		close = false,
	},
['policebarricade'] = {
		label = 'Politiafspærring',
		weight = 2000,
		stack = true,
		close = false,
	},
['policeroadsign'] = {
		label = 'Politi Vejskilt',
		weight = 1500,
		stack = true,
		close = false,
	},
['policetent'] = {
		label = 'Politi Telt',
		weight = 5000,
		stack = true,
		close = false,
	},
['policespotlight'] = {
		label = 'Politi Projektør',
		weight = 3000,
		stack = true,
		close = false,
	},

	-- ==== es_extended ====
['parachute'] = {
		label = 'Parachute',
		weight = 8000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},

	-- ==== ox_inventory ====
['mustard'] = {
		label = 'Sennep',
		weight = 500,
		client = {
			status = { hunger = 25000, thirst = 25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
			usetime = 2500,
			notification = 'Du... drak sennep.'
		}
	},
['console'] = {
    label = 'Gaming Console',
    weight = 3000,
    stack = true,
},
['black_money'] = {
		label = 'Sorte Penge',
	},
['money'] = {
		label = 'Kontanter',
	},
['panties'] = {
		label = 'Knickers',
		weight = 10,
		consume = 0,
		client = {
			status = { thirst = -100000, stress = -25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
			usetime = 2500,
		}
	},

	-- ==== pma-voice ====
-- ['radio'] = {
-- 		label = 'Radio',
-- 		weight = 1000,
-- 		stack = false,
-- 		close = true,
-- 		allowArmed = true,
-- 		client = {
-- 			export = 'heino_radio.useRadio',
-- 		},
    --     },
    --
    ['radio'] = {
		label = 'Radio',
		weight = 100,
		stack = false,
		close = true,
		allowArmed = true,
        consume = 0,
        client = { export = 'heino_radio.useRadio', image = 'heino_radio.png' }
	},

	-- ==== sd-phone ====
['orange'] = {
    label = 'Orange',
    weight = 130,
    stack = true,
    close = true,
    description = '',
},
['tablet'] = {
	label = 'Tablet',
	weight = 350,
	stack = false,
	close = true,
},
['phone'] = {
        label = 'Telefon (Sort)',
        weight = 190,
        stack = false,
        consume = 0,
        client = { image = 'phone.webp' },
        server = { export = 'sd-phone.usePhone' },
        buttons = {
            { label = 'SIM Tray', action = function(slot) exports['sd-phone']:openSimTray(slot) end },
        },
    },
["phone_green"] = {
		label = "Green Phone",
		weight = 1,
		stack = true,
		close = true,
		consume = 0,
		client = { image = 'phone_green.webp' },
		server = { export = 'sd-phone.usePhone_green' },
	},
["phone_yellow"] = {
		label = "Yellow Phone",
		weight = 1,
		stack = true,
		close = true,
		consume = 0,
		client = { image = 'phone_yellow.webp' },
		server = { export = 'sd-phone.usePhone_yellow' },
	},
["sim_card"] = {
		label = "SIM Card",
		weight = 1,
		stack = true,
		close = true,
	},

	-- ==== visualz_selldrugs ====
['mushroom_pooch'] = {
		label = 'Svampe pose',
		weight = 15,
		stack = true,
		close = true,
	},
['stof'] = {
		label = 'Stof',
		weight = 100,
		stack = true,
		close = true,
	},

	-- ==== visualz_zones ====
['weed_brick'] = {
    label = 'Weed Brick',
    weight = 200,
    stack = true,
},
['joint'] = {
		label = 'Joint',
		weight = 5,
		stack = true,
		close = true,
	},
["posekokain"] = {
			label = "Kokain Pose",
			weight = 4,
			stack = true,
			close = true,
		},
['opium_pooch'] = {
		label = 'Heroin',
		weight = 5,
		stack = true,
		close = true,
	},
['coke_brick'] = {
    label = 'Coke Brick',
    weight = 200,
    stack = true,
},
['meth_pooch'] = {
		label = 'Meth pose',
		weight = 15,
		stack = true,
		close = true,
	},

	-- ==== weapondisplay ====
['bag'] = {
		label = 'Taske',
		weight = 900,
		stack = true,
		close = true,
	},

	-- ==== Unused ====
["engine_oil"] = {
    label = "Engine Oil",
    weight = 1000,
  },
["tyre_replacement"] = {
    label = "Tyre Replacement",
    weight = 1000,
  },
["clutch_replacement"] = {
    label = "Clutch Replacement",
    weight = 1000,
  },
["air_filter"] = {
    label = "Air Filter",
    weight = 100,
  },
["spark_plug"] = {
    label = "Spark Plug",
    weight = 1000,
  },
["brakepad_replacement"] = {
    label = "Brakepad Replacement",
    weight = 1000,
  },
["suspension_parts"] = {
    label = "Suspension Parts",
    weight = 1000,
  },
["i4_engine"] = {
    label = "I4 Engine",
    weight = 1000,
  },
["v6_engine"] = {
    label = "V6 Engine",
    weight = 1000,
  },
["v8_engine"] = {
    label = "V8 Engine",
    weight = 1000,
  },
["v12_engine"] = {
    label = "V12 Engine",
    weight = 1000,
  },
["turbocharger"] = {
    label = "Turbocharger",
    weight = 1000,
  },
["ev_motor"] = {
    label = "EV Motor",
    weight = 1000,
  },
["ev_battery"] = {
    label = "EV Battery",
    weight = 1000,
  },
["ev_coolant"] = {
    label = "EV Coolant",
    weight = 1000,
  },
["awd_drivetrain"] = {
    label = "AWD Drivetrain",
    weight = 1000,
  },
["rwd_drivetrain"] = {
    label = "RWD Drivetrain",
    weight = 1000,
  },
["fwd_drivetrain"] = {
    label = "FWD Drivetrain",
    weight = 1000,
  },
["slick_tyres"] = {
    label = "Slick Tyres",
    weight = 1000,
  },
["semi_slick_tyres"] = {
    label = "Semi Slick Tyres",
    weight = 1000,
  },
["offroad_tyres"] = {
    label = "Offroad Tyres",
    weight = 1000,
  },
["drift_tuning_kit"] = {
    label = "Drift Tuning Kit",
    weight = 1000,
  },
["ceramic_brakes"] = {
    label = "Ceramic Brakes",
    weight = 1000,
  },
["lighting_controller"] = {
    label = "Lighting Controller",
    weight = 100,
    client = {
      event = "jg-mechanic:client:show-lighting-controller",
    }
  },
["stancing_kit"] = {
    label = "Stancer Kit",
    weight = 100,
    client = {
      event = "jg-mechanic:client:show-stancer-kit",
    }
  },
["cosmetic_part"] = {
    label = "Cosmetic Parts",
    weight = 100,
  },
["vehicle_wheels"] = {
    label = "Vehicle Wheels Set",
    weight = 1000,
  },
["tyre_smoke_kit"] = {
    label = "Tyre Smoke Kit",
    weight = 1000,
  },
["bulletproof_tyres"] = {
    label = "Bulletproof Tyres",
    weight = 1000,
  },
["extras_kit"] = {
    label = "Extras Kit",
    weight = 1000,
  },
["nitrous_bottle"] = {
    label = "Nitrous Bottle",
    weight = 1000,
    client = {
      event = "jg-mechanic:client:use-nitrous-bottle",
    }
  },
["empty_nitrous_bottle"] = {
    label = "Empty Nitrous Bottle",
    weight = 1000,
  },
["nitrous_install_kit"] = {
    label = "Nitrous Install Kit",
    weight = 1000,
  },
["cleaning_kit"] = {
    label = "Cleaning Kit",
    weight = 1000,
    client = {
      event = "jg-mechanic:client:clean-vehicle",
    }
  },
["repair_kit"] = {
    label = "Repair Kit",
    weight = 1000,
    client = {
      event = "jg-mechanic:client:repair-vehicle",
    }
  },
["duct_tape"] = {
    label = "Duct Tape",
    weight = 1000,
    client = {
      event = "jg-mechanic:client:use-duct-tape",
    }
  },
["mechanic_tablet"] = {
    label = "Mechanic Tablet",
    weight = 1000,
    client = {
      event = "jg-mechanic:client:use-tablet",
    }
  },
["manual_gearbox"] = {
    label = "Manual Gearbox",
    weight = 1000,
  },
['towing_rope'] = {
		label = 'Slæbetov',
		weight = 150,
		stack = false,
		close = true,
	},
["engine_s"] = {
		label = "Engine S",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
	},
["engine_a"] = {
		label = "Engine A",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
	},
["engine_b"] = {
		label = "Engine B",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
	},
["engine_c"] = {
		label = "Engine C",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
	},
["engine_d"] = {
		label = "Engine D",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
	},
["transmission_s"] = {
		label = "Transmission S",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
	},
["transmission_a"] = {
		label = "Transmission A",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
	},
["transmission_b"] = {
		label = "Transmission B",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
	},
["transmission_c"] = {
		label = "Transmission C",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
	},
["transmission_d"] = {
		label = "Transmission D",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
	},
["suspension_s"] = {
		label = "Suspension S",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
	},
["suspension_a"] = {
		label = "Suspension A",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
	},
["suspension_b"] = {
		label = "Suspension B",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
	},
["suspension_c"] = {
		label = "Suspension C",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
	},
["suspension_d"] = {
		label = "Suspension D",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
	},
["brake_s"] = {
		label = "Brake S",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
	},
["brake_a"] = {
		label = "Brake A",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
	},
["brake_b"] = {
		label = "Brake B",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
	},
["brake_c"] = {
		label = "Brake C",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
	},
["brake_d"] = {
		label = "Brake D",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
	},
["turbo_s"] = {
		label = "Turbo S",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
	},
["turbo_a"] = {
		label = "Turbo A",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
	},
["turbo_b"] = {
		label = "Turbo B",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
	},
["turbo_c"] = {
		label = "Turbo C",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
	},
["turbo_d"] = {
		label = "Turbo D",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
	},
["armour_s"] = {
		label = "Armour S",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
	},
["armour_a"] = {
		label = "Armour A",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
	},
["armour_b"] = {
		label = "Armour B",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
	},
["armour_c"] = {
		label = "Armour C",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
	},
["armour_d"] = {
		label = "Armour D",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
	},
["engine_repair_kit"] = {
		label = "Engine repair kit",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
	},
["body_repair_kit"] = {
		label = "Body repair kit",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
	},
["cosmetics"] = {
		label = "Cosmetics",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
	},
["mechanic_toolbox"] = {
		label = "Mechanics toolbox",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			export = 'mt_workshops.openToolboxMenu'
		}
	},
["neons_controller"] = {
		label = "Neons controller",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			export = 'mt_workshops.openLightsController'
		}
	},
["mods_list"] = {
		label = "Vehicle mods list",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			export = 'mt_workshops.openCosmeticsMenu'
		}
	},
["extras_controller"] = {
		label = "Vehicle extras",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			export = 'mt_workshops.openExtrasMenu'
		}
	},
["tunerchip3"] = {
	label = "Tuner Chip 3",
	weight = 250,
	stack = true,
	close = true
    },
["tunerchipr"] = {
	label = "Chip removal",
	weight = 250,
	stack = true,
	close = true
    },
["fakeplate"] = {
		label = "Fake Plate",
		weight = 1,
		stack = true,
		close = true,
	},
["oldplate"] = {
		label = "Original Plate",
		weight = 1,
		stack = true,
		close = true,
	},
["tuningchip"] = {
		label = "Tuning Chip",
		weight = 1,
		stack = true,
		close = true,
	},
['tourniquet'] = {
    label = 'Tourniquet',
    weight = 120,
    stack = true,
    close = true,
    description = 'Stopper blødning i en lem helt, men går ud over lemmets funktion.',
},
['splint'] = {
    label = 'Skinne',
    weight = 300,
    stack = true,
    close = true,
    description = 'Fikserer en brækket lem.',
},
['medbag'] = {
    label = 'Lægetaske',
    weight = 2500,
    stack = false,
    close = true,
    description = 'Lægetaske der kan placeres. Åbn den på jorden for at få adgang til forsyninger.',
    client = {
        event = 'ice-ambulancejob:client:useMedbagItem',
    },
},
['panicbutton'] = {
    label = 'Panik Knap',
    weight = 100,
    stack = false,
    close = true,
    description = 'Bruges til at sende en alarm til politiet'
},
["ziptie"] = {
		label = "Strips",
		weight = 1,
		stack = true,
		close = true,
	},
['full_snus_bag'] = {
		label = 'Snus-skive',
		weight = 30,
		stack = true,
		close = true,
	},
["morphine15"] = {
		label = "Morphine 15MG",
		weight = 1,
		stack = true,
		close = true,
	},
["morphine30"] = {
		label = "Morphine 30MG",
		weight = 1,
		stack = true,
		close = true,
	},
["perc5"] = {
		label = "Percocet 5MG",
		weight = 1,
		stack = true,
		close = true,
	},
["perc10"] = {
		label = "Percocet 10MG",
		weight = 1,
		stack = true,
		close = true,
	},
["perc30"] = {
		label = "Percocet 30MG",
		weight = 1,
		stack = true,
		close = true,
	},
["vic5"] = {
		label = "Vicodin 5MG",
		weight = 1,
		stack = true,
		close = true,
	},
["vic10"] = {
		label = "Vicodin 10MG",
		weight = 1,
		stack = true,
		close = true,
	},
["sedative"] = {
		label = "Sedativ",
		weight = 1,
		stack = true,
		close = true,
	},
['syringe'] = {
		label = 'Kanyle',
		weight = 1,
		stack = true,
		close = true,
	},
["restaurant_food"] = {
    label = "Restaurant food",
    useable = true,
    weight = 400,
    stack = true,
    close = true,
    client = {
        export = 'mt_restaurants.useFood'
    },
    degrade = 1440 -- 24 hours
},
["restaurant_box"] = {
    label = "Food box",
    useLabel = 'Abrir',
    useable = true,
    weight = 200,
    stack = true,
    close = true
},
['junk'] = {
			label = 'Energidrik',
			weight = 350,
			client = {
				status = { thirst = 250000 },
				anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
				prop = { model = `prop_energy_drink`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
				usetime = 2500,
			}
		},
['meat'] = {
    label = 'Meat',
    weight = 500,
    stack = true,
    close = true,
    description = '',
},
['fish'] = {
    label = 'Fish',
    weight = 500,
    stack = true,
    close = true,
    description = '',
},
['onion'] = {
    label = 'Onion',
    weight = 150,
    stack = true,
    close = true,
    description = '',
},
['carrot'] = {
    label = 'Carrot',
    weight = 100,
    stack = true,
    close = true,
    description = '',
},
['lettuce'] = {
    label = 'Lettuce',
    weight = 250,
    stack = true,
    close = true,
    description = '',
},
['cucumber'] = {
    label = 'Cucumber',
    weight = 200,
    stack = true,
    close = true,
    description = '',
},
['potato'] = {
    label = 'Potato',
    weight = 150,
    stack = true,
    close = true,
    description = '',
},
['tomato'] = {
    label = 'Tomto',
    weight = 100,
    stack = true,
    close = true,
    description = '',
},
['wheat'] = {
    label = 'Wheat',
    weight = 8,
    stack = true,
    close = true,
    description = '',
},
['corn'] = {
    label = 'Corn',
    weight = 8,
    stack = true,
    close = true,
    description = '',
},
['strawberry'] = {
    label = 'Strawberry',
    weight = 8,
    stack = true,
    close = true,
    description = '',
},
['pineapple'] = {
    label = 'Pineapple',
    weight = 10,
    stack = true,
    close = true,
    description = '',
},
['watermelon'] = {
    label = 'Watermelon',
    weight = 5,
    stack = true,
    close = true,
    description = '',
},
['eggplant'] = {
    label = 'Beet',
    weight = 8,
    stack = true,
    close = true,
    description = '',
},
['blueberry'] = {
    label = 'Blueberry',
    weight = 8,
    stack = true,
    close = true,
    description = '',
},
['pumpkin'] = {
    label = 'Pumpkin',
    weight = 2000,
    stack = true,
    close = true,
    description = '',
},
['apple'] = {
    label = 'Apple',
    weight = 120,
    stack = true,
    close = true,
    description = '',
},
['pear'] = {
    label = 'Pear',
    weight = 120,
    stack = true,
    close = true,
    description = '',
},
['lemon'] = {
    label = 'Lemon',
    weight = 80,
    stack = true,
    close = true,
    description = '',
},
['banana'] = {
    label = 'Banana',
    weight = 120,
    stack = true,
    close = true,
    description = '',
},
['peach'] = {
    label = 'Peach',
    weight = 130,
    stack = true,
    close = true,
    description = '',
},
['mango'] = {
    label = 'Mango',
    weight = 200,
    stack = true,
    close = true,
    description = '',
},
['rolling_paper'] = {
		label = 'Rullepapir',
		weight = 5,
	},
["cigarette"] = {
		label = "Cigaret",
		weight = 0.1,
		stack = true,
		close = true,
	},
["kheon_leaf"] = {
		label = "Kheon blad",
		weight = 0.1,
		stack = true,
		close = true,
	},
["lumina_crystal"] = {
		label = "Lumina krystal",
		weight = 1,
		stack = true,
		close = true,
	},
["stabilizer_fluid"] = {
		label = "Stabilizer Fluid",
		weight = 1,
		stack = true,
		close = true,
	},
["distilled_water"] = {
		label = "Distilled water",
		weight = 1,
		stack = true,
		close = true,
	},
["glass_vial"] = {
		label = "Glass vial",
		weight = 1,
		stack = true,
		close = true,
	},
["bio_dryer"] = {
		label = "Bio Dryer",
		weight = 1,
		stack = true,
		close = true,
	},
["crystal_grinder"] = {
		label = "Crystal Grinder",
		weight = 1,
		stack = true,
		close = true,
	},
["synthesizer"] = {
		label = "Synthesizer",
		weight = 1,
		stack = true,
		close = true,
	},
["packaging_bench"] = {
		label = "Packaging Bench",
		weight = 1,
		stack = true,
		close = true,
	},
["kheon_powder"] = {
		label = "Kheon Powder",
		weight = 1,
		stack = true,
		close = true,
	},
["refined_crystal"] = {
		label = "Refined Crystal",
		weight = 1,
		stack = true,
		close = true,
	},
["kheon_mixture"] = {
		label = "Kheon Mixture",
		weight = 2,
		stack = true,
		close = true,
	},
["packed_kheon"] = {
		label = "Packed Kheon",
		weight = 2,
		stack = true,
		close = true,
	},
["goldwatch"] = {
		label = "Gold Watch",
		weight = 1,
		stack = true,
		close = true,
	},
['bong'] = {
    label = 'Bong',
    weight = 1000,
    stack = true,
},
['cermaicpistol_case'] = {
        label = 'Ceramic Pistol Kasse',
        weight = 1000,
        stack = true,
        close = true,
    },
['simcard'] = {
		label = 'Drug Simkort',
		weight = 5,
		stack = false,
		close = true,
		description = 'Et simkort til en burner-telefon. Kan indeholde kontakter.',
		buttons = {
			{
				label = 'Indsæt i telefon',
				action = function(slot)
					TriggerServerEvent('zaki-drugphone:insertSimcard', slot)
				end,
			},
		},
	},
["bboosting_tablet"] = {
		label = "Boosting Tablet",
		weight = 1,
		stack = true,
		close = true,
	},
['contracts_tablet'] = {
	label = 'Heist Tablet',
	weight = 400,
	stack = false,
	close = true,
	consume = 0,
	description = 'En krypteret tablet med de seneste heist-kontrakter.',
	client = {
		export = 'heino_contracts.OpenTablet'
	}
},
['flyer'] = {
    label = 'Flyer',
    weight = 10,
    stack = true,
    close = true,
    description = 'En flyer med front og bagside.',
    client = {
        export = 'rc_print.open-flyer'
    }
},
['pickaxe'] = {
		label = 'Pickaxe',
		weight = 2500,
		stack = false,
		close = true,
	},
["blowpipe"] = {
		label = "Skærebrænder",
		weight = 2,
		stack = true,
		close = true,
	},
["metalscrap"] = {
		label = "metalscrap",
		weight = 1,
		stack = true,
		close = true,
	},
["clothe"] = {
		label = "Cloth",
		weight = 1,
		stack = true,
		close = true,
	},
["cutted_wood"] = {
		label = "Cut wood",
		weight = 1,
		stack = true,
		close = true,
	},
["fabric"] = {
		label = "Fabric",
		weight = 1,
		stack = true,
		close = true,
	},
["packaged_plank"] = {
		label = "Packaged wood",
		weight = 1,
		stack = true,
		close = true,
	},
["petrol"] = {
		label = "Oil",
		weight = 1,
		stack = true,
		close = true,
	},
["petrol_raffin"] = {
		label = "Processed oil",
		weight = 1,
		stack = true,
		close = true,
	},
["stone"] = {
		label = "Stone",
		weight = 1,
		stack = true,
		close = true,
	},
["washed_stone"] = {
		label = "Washed stone",
		weight = 1,
		stack = true,
		close = true,
	},
["wood"] = {
		label = "Wood",
		weight = 1,
		stack = true,
		close = true,
	},
["wool"] = {
		label = "Wool",
		weight = 1,
		stack = true,
		close = true,
	},
['anchovy'] = {
		label = 'Anchovy',
		weight = 20
	},
['grouper'] = {
		label = 'Grouper',
		weight = 3500
	},
['haddock'] = {
		label = 'Haddock',
		weight = 500
	},
['salmon'] = {
		label = 'Salmon',
		weight = 1000
	},
['shark'] = {
		label = 'Shark',
		weight = 7500
	},
['tuna'] = {
		label = 'Tuna',
		weight = 10000
	},
["alive_chicken"] = {
		label = "Living chicken",
		weight = 1,
		stack = true,
		close = true,
	},
["cannabis"] = {
		label = "Cannabis",
		weight = 3,
		stack = true,
		close = true,
	},
["marijuana"] = {
		label = "Marijuana",
		weight = 2,
		stack = true,
		close = true,
	},
["packaged_chicken"] = {
		label = "Chicken fillet",
		weight = 1,
		stack = true,
		close = true,
	},
["slaughtered_chicken"] = {
		label = "Slaughtered chicken",
		weight = 1,
		stack = true,
		close = true,
	},
["bchop_contract"] = {
		label = "Kontrakt",
		weight = 1,
		stack = true,
		close = true,
	},
["basketball"] = {
		label = "Basketball",
		weight = 0,
		stack = true,
		close = true,
	},
["basketball_hoop"] = {
		label = "Basketball Hoop",
		weight = 0,
		stack = true,
		close = true,
    },

    ['heino_skate_street'] = {
        label = 'Heino Street', weight = 2400, stack = false, close = true, consume = 0,
        client = { export = 'heino_skateboard.useBoard' },
    },
    ['heino_skate_longboard'] = {
        label = 'Heino Longboard', weight = 3600, stack = false, close = true, consume = 0,
        client = { export = 'heino_skateboard.useBoard' },
    },
    ['heino_skate_electric'] = {
        label = 'Heino Electric', weight = 7200, stack = false, close = true, consume = 0,
        client = { export = 'heino_skateboard.useBoard' },
    },
    ['heino_skate_modkit'] = {
        label = 'Heino Skate Modkit', weight = 800, stack = true, close = true, consume = 0,
        client = { export = 'heino_skateboard.useModkit' },
    },
    ['heino_skate_charger'] = {
        label = 'Heino Portable Charger', weight = 550, stack = false, close = true, consume = 0,
        client = { export = 'heino_skateboard.useCharger' },
    },

	['suspicious_package'] = {
		label = 'Mistænkelig Pakke',
		weight = 5000,
		stack = false,
		close = true,
		itemProp = {
			dict = "anim@heists@box_carry@",
			anim = "idle",
			emoteLoop = true,
			emoteMoving = true,
			propName = "prop_champ_box_01",
            propBone = 28422,
			placement = {0.0100, -0.0400, -0.2390,20.0000007, 0.0, 0.0},
		},
	},
	['medicin'] = {
		label = 'Medicin',
		weight = 200,
		stack = true,
		close = true,
	},
	['oxy'] = {
		label = 'Oxy Pille',
		weight = 2,
		stack = true,
		close = true,
		consume = 1,
		client = {
			export = 'erp-illegalmissions.useOxy',
			anim = { dict = 'mp_suicide', clip = 'pill' },
			usetime = 3000,
			disable = { move = false, car = false, combat = true },
		},
	},
	['oxyboxes'] = {
		label = 'Oxy Pakke',
		weight = 950,
		stack = false,
		close = true,
		consume = 0,
		description = 'Stor kasse',
		client = {
			export = 'erp-illegalmissions.oxycarry',
		},
	},
	['evidence_rapport'] = {
		label = 'Bevis rapport',
		weight = 5,
		stack = false,
		close = true,
		consume = 0,
		client = {
			export = 'fh_evidence.useItem',
		},
		buttons = {
			{
				id = 'edit_report_description',
				label = 'Tilføj beskrivelse',
				action = function(slot)
					if GetResourceState('fh_evidence') ~= 'started' then return end
					exports.fh_evidence:editReportDescription(slot)
				end,
			},
		},
	},
	['evidence_bag'] = {
		label = 'Tom bevisprøve',
		weight = 5,
		stack = true,
		close = true,
	},
	['evidence_pistolcasing'] = {
		label = 'Bevisprøve (hylster)',
		weight = 50,
		stack = false,
		close = true,
	},
	['evidence_blood'] = {
		label = 'Bevisprøve (blod)',
		weight = 50,
		stack = false,
		close = true,
	},
	['evidence_fingerprint'] = {
		label = 'Blankt aftrykspapir',
		weight = 10,
		stack = true,
		close = true,
	},
	['evidence_fingerprint_used'] = {
		label = 'Aftrykspapir',
		weight = 10,
		stack = false,
		close = true,
	},
	['spikestrip'] = {
		label = 'Stinger Spikes',
		weight = 2000,
		stack = false,
		close = true,
		consume = 0,
		durability = true,
		client = {
			export = 'ND_Police.deploySpikestrip'
		}
	},
	['crim_spikestrip'] = {
		label = 'Stinger Spikes',
		weight = 20000,
		stack = false,
		close = true,
		consume = 0,
		durability = true,
		client = {
			image = 'spikestrip.png',
			export = 'ND_Police.deploySpikestrip'
		}
	},
	['bandage_ems'] = {
		label = 'Bandage',
		weight = 50,
		stack = true,
		close = true,
		consume = 1,
		client = {
			export = 'ars_ambulancejob.useBandageEms',
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a' },
			usetime = 4000,
			disable = { move = false, car = false, combat = true },
		},
	},
	['binoculars'] = {
		label = 'Kikkert',
		weight = 500,
		stack = true,
		close = true,
	},
	['blindfold'] = {
		label = 'Blindfold',
		weight = 20,
		stack = true,
		close = true,
	},
	['blowtorch'] = {
		label = 'Skærebrænder',
		weight = 3500,
		stack = true,
		close = true,
	},
	['blue_id_card'] = {
		label = 'Blåt ID Card',
		weight = 50,
		stack = true,
		close = true,
	},
	['id_card'] = {
		label = 'ID Kort',
		weight = 50,
		stack = false,
		close = true,
		consume = 0,
		client = {
			export = 'erp_idcard.ShowIDCard',
		},
	},
	['health_card'] = {
		label = 'Sygesikringsbevis',
		weight = 20,
		stack = false,
		close = true,
		consume = 0,
		client = {
			export = 'erp_idcard.ShowHealthCard',
		},
	},
	['bolt_cutter'] = {
		label = 'Boltsaks',
		weight = 1500,
		stack = true,
		close = true,
	},
	['bourbon'] = {
		label = 'Bourbon',
		weight = 1000,
		stack = true,
		close = true,
	},
	['usb_stick_1'] = {
		label = 'USB Stick (Fængsel)',
		weight = 100,
		stack = true,
		close = true,
	},
	['bigbomb'] = {
		label = 'Bombe',
		weight = 7000,
		stack = true,
		close = true,
	},
	['c4'] = {
		label = 'C4 Sprængstof',
		weight = 2000,
		stack = true,
		close = true,
	},
	['c4_part_1'] = {
		label = 'Eksplosive materiale',
		weight = 250,
		stack = true,
		close = true,
	},
	['c4_part_2'] = {
		label = 'Bil Radio',
		weight = 300,
		stack = true,
		close = true,
	},
	['c4_part_3'] = {
		label = 'Circuit Board',
		weight = 400,
		stack = true,
		close = true,
	},
	['electric_scrap_metal'] = {
		label = 'Elektronisk skrot',
		weight = 25,
		stack = true,
		close = true,
	},
	['scrap_metal'] = {
		label = 'Metalisk skrot',
		weight = 25,
		stack = true,
		close = true,
	},
	['circuitboard'] = {
		label = 'Adv. Circuit Board',
		weight = 400,
		stack = true,
		close = true,
	},
	['resistor'] = {
		label = 'Resistor',
		weight = 100,
		stack = true,
		close = true,
	},
	['capacitor'] = {
		label = 'Capacitor',
		weight = 100,
		stack = true,
		close = true,
	},
	['adv_car_radio'] = {
		label = 'Moderne Bil Radio',
		weight = 100,
		stack = true,
		close = true,
	},
	['jail_keys'] = {
		label = 'Perico Mansion Nøgler',
		weight = 50,
		stack = true,
		close = true,
	},
	['hacking_card'] = {
		label = 'Hacking Card',
		weight = 50,
		stack = true,
		close = true,
	},
	['dd_underwear_1'] = {
		label = 'Tilhørende Flemming Ditzel',
		weight = 50,
		stack = true,
		close = true,
	},
	['dd_underwear_2'] = {
		label = 'Tilhørende Mikkel Ditzel',
		weight = 50,
		stack = true,
		close = true,
	},
	['glass_cutter'] = {
		label = 'Glass skærer',
		weight = 500,
		stack = true,
		close = true,
	},
	['perico_artifacts_1'] = {
		label = 'Perico Panther',
		weight = 1000,
		stack = true,
		close = true,
	},
	['perico_artifacts_2'] = {
		label = 'Perico Diamant',
		weight = 1000,
		stack = true,
		close = true,
	},
	['perico_artifacts_3'] = {
		label = 'Perico Halskæde',
		weight = 1000,
		stack = true,
		close = true,
	},
	['perico_artifacts_4'] = {
		label = 'Perico Flaske',
		weight = 1000,
		stack = true,
		close = true,
	},
	['camera'] = {
		label = 'Kamera',
		weight = 1000,
		stack = true,
		close = true,
		client = {
			export = 'ps-camera.UseCam'
		}
	},
	['photo'] = {
		label = 'Saved Pic',
		weight = 500,
		description = 'Brand new picture saved!',
		stack = false,
		close = true,
		client = {
			image = 'polaroidphoto.png',
			export = 'ps-camera.usePhoto'
		}
	},
	['snspistol_case'] = {
		label = 'SNS Pistol Kasse',
		weight = 1000,
		stack = true,
		close = true,
		consume = 0,
		client = {
			export = 'erp-blackmarket.openWeaponCase',
		},
	},
	['chloroform'] = {
		label = 'Chloroform',
		weight = 40,
		stack = true,
		close = true,
	},
	['circular_saw'] = {
		label = 'Vinkelsliber',
		weight = 2500,
		stack = true,
		close = true,
	},
	['coffee_menu'] = {
		label = 'Kaffe',
		weight = 400,
		stack = true,
		close = true,
	},
	['coca_order'] = {
		label = "Sigurd's bestilling",
		weight = 1,
		stack = false,
		close = false,
		description = 'En seddel fra Sigurd med en liste over hvad han skal bruge.',
	},
	['coca_voucher'] = {
		label = "Sigurd's batchkvittering",
		weight = 1,
		stack = false,
		close = false,
		description = 'Kvittering for afleverede coca-varer. Hent batch hos Sigurd når den er klar.',
	},
	['compactrifle_case'] = {
		label = 'Kompakt Riffel Kasse',
		weight = 3700,
		stack = true,
		close = true,
		consume = 0,
		client = {
			export = 'erp-blackmarket.openWeaponCase',
		},
	},
	['cranberry_juice'] = {
		label = 'Tranebærsaft',
		weight = 500,
		stack = true,
		close = true,
	},
	['cups'] = {
		label = 'Beerpong kopper',
		weight = 50,
		stack = true,
		close = true,
	},
	['dbshotgun_case'] = {
		label = 'DB-Shotgun Kasse',
		weight = 2300,
		stack = true,
		close = true,
		consume = 0,
		client = {
			export = 'erp-blackmarket.openWeaponCase',
		},
	},
	['diethylether'] = {
		label = 'Diethylether',
		weight = 20,
		stack = true,
		close = true,
	},
	['document'] = {
		label = 'Regnskabsdokument',
		weight = 100,
		stack = false,
		close = true,
		consume = 0,
		description = 'Et officielt regnskabsdokument — tryk Brug for at åbne',
	},
	['document_1'] = {
		label = 'Crafting Dokument',
		weight = 100,
		stack = true,
		close = true,
	},
	['document_2'] = {
		label = 'Union Dokument',
		description = "Tryk Brug for at starte røveriet.",
		weight = 100,
		stack = true,
		close = true,
		client = {
			export = "erp-illegaljobs.StartUnionHeist"
		}
	},
	['ethanol'] = {
		label = 'Ethanol',
		weight = 20,
		stack = true,
		close = true,
	},
	['firework1'] = {
		label = 'Firework Cylinder Small Red',
		weight = 1000,
		stack = true,
		close = true,
	},
	['firework10'] = {
		label = 'Firework Box Small Green',
		weight = 1000,
		stack = true,
		close = true,
	},
	['firework11'] = {
		label = 'Firework Box Small Blue',
		weight = 1000,
		stack = true,
		close = true,
	},
	['firework12'] = {
		label = 'Firework Box Small Yellow',
		weight = 1000,
		stack = true,
		close = true,
	},
	['firework13'] = {
		label = 'Firework Box Medium Red',
		weight = 1000,
		stack = true,
		close = true,
	},
	['firework14'] = {
		label = 'Firework Box Medium Green',
		weight = 1000,
		stack = true,
		close = true,
	},
	['firework15'] = {
		label = 'Firework Box Medium Blue',
		weight = 1000,
		stack = true,
		close = true,
	},
	['firework16'] = {
		label = 'Firework Box Medium Yellow',
		weight = 1000,
		stack = true,
		close = true,
	},
	['firework17'] = {
		label = 'Firework Rocket Small',
		weight = 1000,
		stack = true,
		close = true,
	},
	['firework18'] = {
		label = 'Firework Rocket Medium',
		weight = 1000,
		stack = true,
		close = true,
	},
	['firework19'] = {
		label = 'Firework Rocket Big',
		weight = 1000,
		stack = true,
		close = true,
	},
	['firework2'] = {
		label = 'Firework Cylinder Small Green',
		weight = 1000,
		stack = true,
		close = true,
	},
	['firework20'] = {
		label = 'Firework Burst Small Red',
		weight = 1000,
		stack = true,
		close = true,
	},
	['firework21'] = {
		label = 'Firework Burst Small Green',
		weight = 1000,
		stack = true,
		close = true,
	},
	['firework22'] = {
		label = 'Firework Burst Small Blue',
		weight = 1000,
		stack = true,
		close = true,
	},
	['firework23'] = {
		label = 'Firework Burst Small Yellow',
		weight = 1000,
		stack = true,
		close = true,
	},
	['firework24'] = {
		label = 'Firework Burst Medium Red',
		weight = 1000,
		stack = true,
		close = true,
	},
	['firework25'] = {
		label = 'Firework Burst Medium Green',
		weight = 1000,
		stack = true,
		close = true,
	},
	['firework26'] = {
		label = 'Firework Burst Medium Blue',
		weight = 1000,
		stack = true,
		close = true,
	},
	['firework27'] = {
		label = 'Firework Burst Medium Yellow',
		weight = 1000,
		stack = true,
		close = true,
	},
	['firework28'] = {
		label = 'Firework Burst Medium Random',
		weight = 1000,
		stack = true,
		close = true,
	},
	['firework29'] = {
		label = 'Firework Cylinder Medium Random',
		weight = 1000,
		stack = true,
		close = true,
	},
	['firework3'] = {
		label = 'Firework Cylinder Small Blue',
		weight = 1000,
		stack = true,
		close = true,
	},
	['firework30'] = {
		label = 'Firework Box Medium Random',
		weight = 1000,
		stack = true,
		close = true,
	},
	['firework4'] = {
		label = 'Firework Cylinder Small Yellow',
		weight = 1000,
		stack = true,
		close = true,
	},
	['firework5'] = {
		label = 'Firework Cylinder Medium Red',
		weight = 1000,
		stack = true,
		close = true,
	},
	['firework6'] = {
		label = 'Firework Cylinder Medium Green',
		weight = 1000,
		stack = true,
		close = true,
	},
	['firework7'] = {
		label = 'Firework Cylinder Medium Blue',
		weight = 1000,
		stack = true,
		close = true,
	},
	['firework8'] = {
		label = 'Firework Cylinder Medium Yellow',
		weight = 1000,
		stack = true,
		close = true,
	},
	['firework9'] = {
		label = 'Firework Box Small Red',
		weight = 1000,
		stack = true,
		close = true,
	},
	['fish_bluefintuna'] = {
		label = 'Blåfinnet tun',
		weight = 500,
		stack = true,
		close = true,
	},
	['fish_cod'] = {
		label = 'Torsk',
		weight = 700,
		stack = true,
		close = true,
	},
	['fish_commonsole'] = {
		label = 'Søtunge',
		weight = 2000,
		stack = true,
		close = true,
	},
	['fish_herring'] = {
		label = 'Sild',
		weight = 300,
		stack = true,
		close = true,
	},
	['fish_mackerel'] = {
		label = 'Makrel',
		weight = 500,
		stack = true,
		close = true,
	},
	['fish_plaice'] = {
		label = 'Rødspætte',
		weight = 2000,
		stack = true,
		close = true,
	},
	['fish_salmon'] = {
		label = 'Laks',
		weight = 2000,
		stack = true,
		close = true,
	},
	['fish_trout'] = {
		label = 'Ørred',
		weight = 2000,
		stack = true,
		close = true,
	},
	['gusenberg_case'] = {
		label = 'Gussenberg Kasse',
		weight = 6000,
		stack = true,
		close = true,
		consume = 0,
		client = {
			export = 'erp-blackmarket.openWeaponCase',
		},
	},
	['joint_paper'] = {
		label = 'Jointpapir',
		weight = 1,
		stack = true,
		close = true,
	},
	['kalk'] = {
		label = 'Kalk',
		weight = 40,
		stack = true,
		close = true,
	},
	['laptop_h'] = {
		label = 'Bærbar',
		weight = 2000,
		stack = true,
		close = true,
	},
	['margarita'] = {
		label = 'Margarita',
		weight = 400,
		stack = true,
		close = true,
		client = {
			status = { thirst = 600000 },
			anim = DRINK_ANIM,
			prop = COCKTAIL_PROP,
			usetime = 2500,
			disable = DRINK_DISABLE,
		},
	},
	['martini'] = {
		label = 'Martini',
		weight = 400,
		stack = true,
		close = true,
		client = {
			status = { thirst = 600000 },
			anim = DRINK_ANIM,
			prop = COCKTAIL_PROP,
			usetime = 2500,
			disable = DRINK_DISABLE,
		},
	},
	['mojito_drink'] = {
		label = 'Mojito',
		weight = 400,
		stack = true,
		close = true,
		client = {
			status = { thirst = 500000 },
			anim = DRINK_ANIM,
			prop = COCKTAIL_PROP,
			usetime = 2500,
			disable = DRINK_DISABLE,
		},
	},
	['gin_tonic'] = { label = 'Gin & Tonic', weight = 400, stack = true, close = true, client = { status = { thirst = 600000 }, anim = DRINK_ANIM, prop = HIGHBALL_PROP, usetime = 2500, disable = DRINK_DISABLE } },
	['pina_colada'] = { label = 'Piña Colada', weight = 400, stack = true, close = true, client = { status = { thirst = 600000 }, anim = DRINK_ANIM, prop = COCKTAIL_PROP, usetime = 2500, disable = DRINK_DISABLE } },
	['aperol_spritz'] = { label = 'Aperol Spritz', weight = 400, stack = true, close = true, client = { status = { thirst = 600000 }, anim = DRINK_ANIM, prop = WINE_PROP, usetime = 2500, disable = DRINK_DISABLE } },
	['sex_on_the_beach'] = { label = 'Sex on the Beach', weight = 400, stack = true, close = true, client = { status = { thirst = 600000 }, anim = DRINK_ANIM, prop = HIGHBALL_PROP, usetime = 2500, disable = DRINK_DISABLE } },
	['whiskey_sour'] = { label = 'Whiskey Sour', weight = 400, stack = true, close = true, client = { status = { thirst = 600000 }, anim = DRINK_ANIM, prop = HIGHBALL_PROP, usetime = 2500, disable = DRINK_DISABLE } },
	['bloody_mary'] = { label = 'Bloody Mary', weight = 400, stack = true, close = true, client = { status = { thirst = 600000 }, anim = DRINK_ANIM, prop = HIGHBALL_PROP, usetime = 2500, disable = DRINK_DISABLE } },
	['cosmopolitan'] = { label = 'Cosmopolitan', weight = 400, stack = true, close = true, client = { status = { thirst = 600000 }, anim = DRINK_ANIM, prop = COCKTAIL_PROP, usetime = 2500, disable = DRINK_DISABLE } },
	['irish_coffee'] = { label = 'Irish Coffee', weight = 400, stack = true, close = true, client = { status = { thirst = 600000 }, anim = DRINK_ANIM, prop = COFFEE_PROP, usetime = 2500, disable = DRINK_DISABLE } },
	['strawberry_daiquiri'] = { label = 'Strawberry Daiquiri', weight = 400, stack = true, close = true, client = { status = { thirst = 600000 }, anim = DRINK_ANIM, prop = COCKTAIL_PROP, usetime = 2500, disable = DRINK_DISABLE } },
	['espresso_martini'] = { label = 'Espresso Martini', weight = 400, stack = true, close = true, client = { status = { thirst = 600000 }, anim = DRINK_ANIM, prop = COCKTAIL_PROP, usetime = 2500, disable = DRINK_DISABLE } },
	['vodka_redbull'] = { label = 'Vodka Redbull', weight = 400, stack = true, close = true, client = { status = { thirst = 600000 }, anim = DRINK_ANIM, prop = HIGHBALL_PROP, usetime = 2500, disable = DRINK_DISABLE } },
	['filur'] = { label = 'Filur', weight = 400, stack = true, close = true, client = { status = { thirst = 600000 }, anim = DRINK_ANIM, prop = HIGHBALL_PROP, usetime = 2500, disable = DRINK_DISABLE } },
	['isbjorn'] = { label = 'Isbjørn', weight = 400, stack = true, close = true, client = { status = { thirst = 600000 }, anim = DRINK_ANIM, prop = HIGHBALL_PROP, usetime = 2500, disable = DRINK_DISABLE } },
	['rom_cola'] = { label = 'Rom & cola', weight = 400, stack = true, close = true, client = { status = { thirst = 600000 }, anim = DRINK_ANIM, prop = HIGHBALL_PROP, usetime = 2500, disable = DRINK_DISABLE } },
	['champagne'] = { label = 'Champagne', weight = 750, stack = false, close = true, client = { status = { thirst = 800000 }, anim = DRINK_ANIM, prop = CHAMPAGNE_PROP, usetime = 2500, disable = DRINK_DISABLE } },
	['vodka_shot'] = { label = 'Vodka shot', weight = 50, stack = true, close = true, client = { status = { thirst = 100000 }, anim = DRINK_ANIM, prop = SHOT_PROP, usetime = 1000, disable = DRINK_DISABLE } },
	['kinderaeg_shot'] = { label = 'Kinderæg shot', weight = 50, stack = true, close = true, client = { status = { thirst = 100000 }, anim = DRINK_ANIM, prop = SHOT_PROP, usetime = 1000, disable = DRINK_DISABLE } },
	['sur_aeble_shot'] = { label = 'Små sure æble shot', weight = 50, stack = true, close = true, client = { status = { thirst = 100000 }, anim = DRINK_ANIM, prop = SHOT_PROP, usetime = 1000, disable = DRINK_DISABLE } },
	['aeblekage_shot'] = { label = 'Æblekage shot', weight = 50, stack = true, close = true, client = { status = { thirst = 100000 }, anim = DRINK_ANIM, prop = SHOT_PROP, usetime = 1000, disable = DRINK_DISABLE } },
	['nodder'] = { label = 'Nødder', weight = 150, stack = true, close = true, client = { status = { hunger = 100000 }, anim = EAT_ANIM, usetime = 1500 } },
	['oliven'] = { label = 'Oliven', weight = 150, stack = true, close = true, client = { status = { hunger = 100000 }, anim = EAT_ANIM, usetime = 1500 } },
	['hvidlogsbrod'] = { label = 'Hvidløgsbrød', weight = 250, stack = true, close = true, client = { status = { hunger = 150000 }, anim = EAT_ANIM, usetime = 2000 } },
	['nachos'] = { label = 'Nachos', weight = 350, stack = true, close = true, client = { status = { hunger = 250000 }, anim = EAT_ANIM, usetime = 2500 } },
	['caesar_salad'] = { label = 'Caesar Salad', weight = 500, stack = true, close = true, client = { status = { hunger = 350000 }, anim = EAT_ANIM, usetime = 2500 } },
	['morphine'] = {
		label = 'Morphine',
		weight = 40,
		stack = true,
		close = true,
	},
	['mushroom'] = {
		label = 'Svamp',
		weight = 40,
		stack = true,
		close = true,
	},
	['natrium'] = {
		label = 'Natriumhydroxid',
		weight = 40,
		stack = true,
		close = true,
	},
	['navyrevolver_case'] = {
		label = 'Navy Revolver Kasse',
		weight = 1300,
		stack = true,
		close = true,
		consume = 0,
		client = {
			export = 'erp-blackmarket.openWeaponCase',
		},
	},
	['normal_donut'] = {
		label = 'Donut',
		weight = 250,
		stack = true,
		close = true,
		client = {
			status = { hunger = 50000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
			prop = {
				model = 'prop_donut_01',
				pos = { x = 0.02, y = 0.02, z = -0.02},
				rot = { x = 220.0, y = 0.0, z = 50.0}
			},
			usetime = 2500,
		}
	},
	['normal_giffel'] = {
		label = 'Kanel Giffel',
		weight = 200,
		stack = true,
		close = true,
		client = {
			status = { hunger = 50000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
			prop = {
				model = 'prop_donut_01',
				pos = { x = 0.02, y = 0.02, z = -0.02},
				rot = { x = 220.0, y = 0.0, z = 50.0}
			},
			usetime = 2500,
		}
	},
	['oxygen_tank'] = {
		label = 'Ilt Tank',
		weight = 2500,
		stack = false,
		close = true,
	},
	['painting_5'] = {
		label = 'Maleri #5',
		weight = 500,
		stack = true,
		close = true,
	},
	['drugphone'] = {
		label = 'Burner Phone',
		weight = 200,
		stack = false,
		close = true,
		description = 'En billig burner-telefon. Indsæt et simkort for at bruge den.',
		client = {
			export = 'erp-drugphone.UsePhoneItem',
		},
		buttons = {
			{
				label = 'Fjern simkort',
				action = function(slot)
					TriggerServerEvent('erp-drugphone:removeSimcard', slot)
				end,
			},
		},
	},
	['usb_boosting'] = {
		label = 'USB - Boosting',
		weight = 50,
		stack = true,
		close = true,
		consume = 0,
		description = 'Bruges på en tablet for at installere Boosting-appen. Forbruges ved install.',
		client = {
			event = 'erp-boosting:installUsb',
		},
	},
	['usb_cargo'] = {
		label = 'USB - Cargo',
		weight = 50,
		stack = true,
		close = true,
		consume = 0,
		description = 'Bruges på en tablet for at installere Cargo-appen. Forbruges ved install.',
		client = {
			event = 'erp-cargo:installUsb',
		},
	},
	['usb_loot'] = {
		label = 'USB - Loot',
		weight = 10,
		stack = false,
		close = true,
		consume = 0,
		description = 'En slidt USB fyldt med container-manifester. Hvert hack æder af den — nogle gange er den brugt op med det samme.',
	},
	['blueprint_pistol'] = {
		label = 'Blueprint - Pistol',
		weight = 10,
		stack = true,
		close = true,
		description = 'Tegninger til en pistol. Bruges til crafting.',
	},
	['blueprint_pistol50'] = {
		label = 'Blueprint - Pistol .50',
		weight = 10,
		stack = true,
		close = true,
		description = 'Tegninger til en Pistol .50. Bruges til crafting.',
	},
	['blueprint_vintagepistol'] = {
		label = 'Blueprint - Vintage Pistol',
		weight = 10,
		stack = true,
		close = true,
		description = 'Tegninger til en Vintage Pistol. Bruges til crafting.',
	},
	['blueprint_pumpshotgun'] = {
		label = 'Blueprint - Haglgevær',
		weight = 10,
		stack = true,
		close = true,
		description = 'Tegninger til et haglgevær. Bruges til crafting.',
	},
	['usb_blackmarket'] = {
		label = 'USB - Black Market',
		weight = 50,
		stack = true,
		close = true,
		consume = 0,
		description = 'Bruges på en tablet for at installere Black Market-appen. Forbruges ved install.',
		client = {
			event = 'erp-blackmarket:installUsb',
		},
	},
	['usb_heists'] = {
		label = 'USB - Heists',
		weight = 50,
		stack = true,
		close = true,
		consume = 0,
		description = 'Bruges på en tablet for at installere Heists-appen.',
		client = {
			event = 'erp-heists:installUsb',
		},
	},
	['pineapple_juice'] = {
		label = 'Ananassaft',
		weight = 1000,
		stack = true,
		close = true,
	},
	['pistolxm3_case'] = {
		label = 'Pistol XM3 Kasse',
		weight = 1300,
		stack = true,
		close = true,
		consume = 0,
		client = {
			export = 'erp-blackmarket.openWeaponCase',
		},
	},
	['motherboard'] = {
		label = 'Motherboard',
		weight = 250,
		stack = true,
		close = true,
	},
	['red_id_card'] = {
		label = 'Rødt ID Card',
		weight = 50,
		stack = true,
		close = true,
	},
	['revolver_case'] = {
		label = 'Revolver Kasse',
		weight = 2000,
		stack = true,
		close = true,
		consume = 0,
		client = {
			export = 'erp-blackmarket.openWeaponCase',
		},
	},
	['rhum'] = {
		label = 'Rom',
		weight = 1000,
		stack = true,
		close = true,
	},
	['rhumcoca'] = {
		label = 'Rom-cola',
		weight = 350,
		stack = true,
		close = true,
	},
	['rhumfruit'] = {
		label = 'Rom-Appelsin juice',
		weight = 550,
		stack = true,
		close = true,
	},
	['saltsyre'] = {
		label = 'Saltsyre',
		weight = 20,
		stack = true,
		close = true,
	},
	['soda_drink'] = {
		label = 'eCola',
		weight = 400,
		stack = true,
		close = true,
		client = {
			status = { thirst = 800000 },
			anim = DRINK_ANIM,
			prop = {
				model = 'prop_ecola_can',
				pos = DRINK_PROP_POS,
				rot = DRINK_PROP_ROT,
			},
			usetime = 2500,
			disable = DRINK_DISABLE,
		},
	},
	['thermal'] = {
		label = 'Termisk Ladning',
		weight = 1100,
		stack = true,
		close = true,
	},
	['thermal_part_1'] = {
		label = 'Termisk Ladning Del #1',
		weight = 300,
		stack = true,
		close = true,
	},
	['thermal_part_2'] = {
		label = 'Termisk Ladning Del #2',
		weight = 800,
		stack = true,
		close = true,
	},
	['tire'] = {
		label = 'Dæk',
		weight = 1200,
		stack = true,
		close = true,
	},
	['tobak'] = {
		label = 'Tobak',
		weight = 10,
		stack = true,
		close = true,
	},
	['transporter_scheme_expanded'] = {
		label = 'Udvidet Kørselsplan',
		description = "Tryk Brug for at starte røveriet.",
		weight = 100,
		stack = true,
		close = true,
		client = {
			export = "erp-illegaljobs.StartStockadeRobbery"
		}
	},
	['armed_transporter_scheme_prison'] = {
		label = 'Kørselsplan (Fængsel)',
		description = "Tryk Brug for at starte røveriet.",
		weight = 100,
		stack = true,
		close = true,
		client = {
			export = "erp-illegaljobs.StartArmedTransporter"
		}
	},
	['armed_transporter_scheme_perico'] = {
		label = 'Kørselsplan (Perico)',
		description = "Tryk Brug for at starte røveriet.",
		weight = 100,
		stack = true,
		close = true,
		client = {
			export = "erp-illegaljobs.StartArmedTransporter"
		}
	},
	['vest'] = {
		label = 'Skudsikkervest',
		weight = 5000,
		stack = true,
		close = true,
		allowArmed = true,
	},
	['key'] = {
		label = 'Nøgler',
		weight = 50,
		stack = true,
		close = true,
	},
	['prison_key'] = {
		label = 'Celle nøgle',
		weight = 50,
		stack = true,
		close = true,
	},
	['casino_chips'] = {
		label = 'Casino Chips',
		weight = 1,
		stack = true,
		close = true,
	},
	['casino_beer'] = {
		label = 'Pisswasser',
		weight = 50,
		stack = true,
		close = true,
		client = {
			status = { thirst = 400000 },
			anim = DRINK_ANIM,
			prop = { model = 'prop_amb_beer_bottle', pos = DRINK_PROP_POS, rot = DRINK_PROP_ROT },
			usetime = 2500,
			disable = DRINK_DISABLE,
		},
	},
	['casino_burger'] = {
		label = 'Casino Burger',
		weight = 100,
		stack = true,
		close = true,
		client = {
			status = { hunger = 300000 },
			anim = EAT_ANIM,
			prop = {
				model = 'prop_cs_burger_01',
				pos = { x = 0.02, y = 0.02, z = -0.02 },
				rot = { x = 0.0, y = 0.0, z = 0.0 },
			},
			usetime = 2500,
		},
	},
	['casino_coffee'] = {
		label = 'Casino Coffee',
		weight = 50,
		stack = true,
		close = true,
		client = {
			status = { thirst = 400000 },
			anim = DRINK_ANIM,
			prop = COFFEE_PROP,
			usetime = 2500,
			disable = DRINK_DISABLE,
		},
	},
	['casino_coke'] = {
		label = 'Casino Kofola',
		weight = 50,
		stack = true,
		close = true,
		client = {
			status = { thirst = 400000 },
			anim = DRINK_ANIM,
			prop = CAN_PROP,
			usetime = 2500,
			disable = DRINK_DISABLE,
		},
	},
	['casino_donut'] = {
		label = 'Casino Donut',
		weight = 50,
		stack = true,
		close = true,
		client = {
			status = { hunger = 150000 },
			anim = EAT_ANIM,
			prop = {
				model = 'prop_amb_donut',
				pos = { x = 0.02, y = 0.02, z = -0.02 },
				rot = { x = 0.0, y = 0.0, z = 0.0 },
			},
			usetime = 2000,
		},
	},
	['casino_ego_chaser'] = {
		label = 'Casino Ego Chaser',
		weight = 50,
		stack = true,
		close = true,
		client = {
			status = { hunger = 100000 },
			anim = EAT_ANIM,
			usetime = 1500,
		},
	},
	['casino_luckypotion'] = {
		label = 'Casino Lucky Potion',
		weight = 50,
		stack = true,
		close = true,
		client = {
			status = { thirst = 500000 },
			anim = DRINK_ANIM,
			prop = HIGHBALL_PROP,
			usetime = 2500,
			disable = DRINK_DISABLE,
		},
	},
	['casino_psqs'] = {
		label = 'Casino Ps & Qs',
		weight = 50,
		stack = true,
		close = true,
		client = {
			status = { hunger = 100000 },
			anim = EAT_ANIM,
			usetime = 1500,
		},
	},
	['casino_sandwitch'] = {
		label = 'Casino Sandwich',
		weight = 100,
		stack = true,
		close = true,
		client = {
			status = { hunger = 250000 },
			anim = EAT_ANIM,
			prop = {
				model = 'prop_sandwich_01',
				pos = { x = 0.02, y = 0.02, z = -0.02 },
				rot = { x = 0.0, y = 0.0, z = 0.0 },
			},
			usetime = 2500,
		},
	},
	['casino_sprite'] = {
		label = 'Casino Sprite',
		weight = 50,
		stack = true,
		close = true,
		client = {
			status = { thirst = 400000 },
			anim = DRINK_ANIM,
			prop = CAN_PROP,
			usetime = 2500,
			disable = DRINK_DISABLE,
		},
	},
	['casino_white'] = {
		label = 'Casino Chip',
		weight = 50,
		stack = true,
		close = true,
	},
	['casino_red'] = {
		label = 'Casino Chip',
		weight = 50,
		stack = true,
		close = true,
	},
	['casino_blue'] = {
		label = 'Casino Chip',
		weight = 50,
		stack = true,
		close = true,
	},
	['casino_black'] = {
		label = 'Casino Chip',
		weight = 50,
		stack = true,
		close = true,
	},
	['casino_gold'] = {
		label = 'Casino Chip',
		weight = 50,
		stack = true,
		close = true,
	},
	['member_membership'] = {
		label = 'Medlems Kort',
		weight = 50,
		stack = false,
		close = true,
	},
	['vip_membership'] = {
		label = 'VIP Medlems Kort',
		weight = 50,
		stack = false,
		close = true,
	},
	['nrchip'] = {
		label = 'NEW VIP-Chip',
		weight = 30,
		stack = false,
		close = true,
	},
	['racing_plate'] = {
		label = 'Nummerplader',
		weight = 100,
		stack = true,
		close = true,
		client = {
			export = "st_racing.AddVehicleModification",
		}
	},
	['racing_chip'] = {
		label = 'Racing Chip',
		weight = 100,
		stack = false,
		close = true,
	},
	['tuning_drifttire'] = {
		label = 'Drift Hjul',
		weight = 12000,
		stack = false,
		close = true,
		client = {
			export = "st_racing.AddVehicleModification",
		}
	},
	['tuning_chip_1'] = {
		label = 'Tuning Chip',
		weight = 100,
		stack = false,
		close = true,
		client = {
			export = "st_racing.AddVehicleModification",
		}
	},
	['tuning_chip_2'] = {
		label = 'Tuning Chip',
		weight = 100,
		stack = false,
		close = true,
		client = {
			export = "st_racing.AddVehicleModification",
		}
	},
	['tuning_chip_3'] = {
		label = 'Tuning Chip',
		weight = 100,
		stack = false,
		close = true,
		client = {
			export = "st_racing.AddVehicleModification",
		}
	},
	['tuning_chip_4'] = {
		label = 'Tuning Chip',
		weight = 100,
		stack = false,
		close = true,
		client = {
			export = "st_racing.AddVehicleModification",
		}
	},
	['tuning_racing_dashboard'] = {
		label = 'Racing Dashboard',
		weight = 50,
		stack = false,
		close = true,
		client = {
			export = "st_racing.AddVehicleModification",
		}
	},
	['tuning_manual_transmission'] = {
		label = 'Racing Manuel Gear',
		weight = 50,
		stack = false,
		close = true,
		client = {
			export = "st_racing.AddVehicleModification",
		}
	},
	['nos_injector'] = {
		label = 'NOS Injector',
		weight = 50,
		stack = false,
		close = true,
		client = {
			export = "st_racing.UseNOSInjector",
		}
	},
	['nos_bottle'] = {
		label = 'NOS Flaske',
		weight = 4500,
		stack = false,
		close = true,
		client = {
			export = "st_racing.UseNOSBottle",
		}
	},
	['tuning_remover'] = {
		label = 'Tuning Remover',
		weight = 4500,
		stack = false,
		close = true,
		client = {
			export = "st_racing.RemoveTuning",
		}
	},
	['tuning_turbo_1'] = {
		label = 'Tuning Turbo',
		weight = 4500,
		stack = false,
		close = true,
		client = {
			export = "st_racing.AddVehicleModification",
		}
	},
	['tuning_turbo_2'] = {
		label = 'Tuning Turbo',
		weight = 4500,
		stack = false,
		close = true,
		client = {
			export = "st_racing.AddVehicleModification",
		}
	},
	['tuning_turbo_3'] = {
		label = 'Tuning Turbo',
		weight = 4500,
		stack = false,
		close = true,
		client = {
			export = "st_racing.AddVehicleModification",
		}
	},
	['tuning_turbo_4'] = {
		label = 'Tuning Turbo',
		weight = 4500,
		stack = false,
		close = true,
		client = {
			export = "st_racing.AddVehicleModification",
		}
	},
	['tuning_brake_1'] = {
		label = 'Tuning Bremser',
		weight = 4500,
		stack = false,
		close = true,
		client = {
			export = "st_racing.AddVehicleModification",
		}
	},
	['tuning_brake_2'] = {
		label = 'Tuning Bremser',
		weight = 4500,
		stack = false,
		close = true,
		client = {
			export = "st_racing.AddVehicleModification",
		}
	},
	['tuning_brake_3'] = {
		label = 'Tuning Bremser',
		weight = 4500,
		stack = false,
		close = true,
		client = {
			export = "st_racing.AddVehicleModification",
		}
	},
	['tuning_brake_4'] = {
		label = 'Tuning Bremser',
		weight = 4500,
		stack = false,
		close = true,
		client = {
			export = "st_racing.AddVehicleModification",
		}
	},
	['tuning_transmission_1'] = {
		label = 'Tuning Gearkasse',
		weight = 4500,
		stack = false,
		close = true,
		client = {
			export = "st_racing.AddVehicleModification",
		}
	},
	['tuning_transmission_2'] = {
		label = 'Tuning Gearkasse',
		weight = 4500,
		stack = false,
		close = true,
		client = {
			export = "st_racing.AddVehicleModification",
		}
	},
	['tuning_transmission_3'] = {
		label = 'Tuning Gearkasse',
		weight = 4500,
		stack = false,
		close = true,
		client = {
			export = "st_racing.AddVehicleModification",
		}
	},
	['tuning_transmission_4'] = {
		label = 'Tuning Gearkasse',
		weight = 4500,
		stack = false,
		close = true,
		client = {
			export = "st_racing.AddVehicleModification",
		}
	},
	['nrchip10'] = {
		label = 'NEW VIP-Chip 10 Days',
		degrade = 14400,
		decay = true,
		weight = 30,
		stack = false,
		close = true,
	},
	['nrchip20'] = {
		label = 'NEW VIP-Chip 20 Days',
		degrade = 28800,
		decay = true,
		weight = 30,
		stack = false,
		close = true,
	},
	['nrchip30'] = {
		label = 'NEW VIP-Chip 30 Days',
		degrade = 43200,
		decay = true,
		weight = 30,
		stack = false,
		close = true,
	},
	['polaroidcam'] = {
		label = 'Polaroid Kamera',
		weight = 1000,
		stack = false,
		close = true,
	},
	['polaroidpaper'] = {
		label = 'Polaroid Film',
		weight = 5,
		stack = true,
		close = true,
	},
	['polaroidphoto'] = {
		label = 'Bevisfoto',
		weight = 5,
		stack = false,
		close = true,
		consume = 0,
		client = {
			export = 'erp-mdt.openPolaroidPhoto',
		},
		buttons = {
			{
				id = 'view_polaroid',
				label = 'Se billede',
				action = function(slot)
					if GetResourceState('erp-mdt') ~= 'started' then return end
					exports['erp-mdt']:openPolaroidPhoto(nil, slot)
				end,
			},
		},
	},
	['visitkort'] = {
		label = 'Visitkort',
		weight = 5,
		stack = true,
		close = true,
	},
	['chemical_box'] = {
		label = 'Kemikalier',
		weight = 10000,
		stack = true,
		close = true,
	},
	['custom_label'] = {
		label = 'Custom Label',
		weight = 10,
		stack = true,
		close = true,
	},
	['water_can'] = {
		label = 'Vandkande',
		weight = 1000,
		stack = true,
		close = true,
		buttons = {
			{
				label = 'Fyld Vandkande',
				action = function(slot)
					TriggerServerEvent("zaki_object:fillWaterCan", slot)
				end
			},
		},
	},
	['tomato_seeds'] = {
		label = 'Tomat Frø',
		weight = 5,
		stack = true,
		close = true,
		client = {
			export = 'zaki_object.plantSeed'
		}
	},
	['tomato_cut'] = {
		label = 'Skåret Tomat',
		weight = 15,
		stack = true,
		close = true,
	},
	['blueberry_seeds'] = {
		label = 'Blåbær Frø',
		weight = 5,
		stack = true,
		close = true,
		client = {
			export = 'zaki_object.plantSeed'
		}
	},
	['carrot_seeds'] = {
		label = 'Gulerods Frø',
		weight = 5,
		stack = true,
		close = true,
		client = {
			export = 'zaki_object.plantSeed'
		}
	},
	['carrot_cut'] = {
		label = 'Skåret Gulerod',
		weight = 15,
		stack = true,
		close = true,
	},
	['plant_seeds'] = {
		label = 'Plantfibre seeds',
		weight = 10,
		stack = true,
		close = true,
		client = {
			export = 'zaki_object.plantSeed'
		}
	},
	['plantfibre'] = {
		label = 'Plantefibre',
		weight = 10,
		stack = true,
		close = true,
	},
	['plantfibre_dry'] = {
		label = 'Tørret Plantefibre',
		weight = 10,
		stack = true,
		close = true,
		buttons = {
			{
				label = 'Pak snus pose',
				action = function(slot)
					TriggerEvent("ox_inventory:closeInventory", true)
					exports.zaki_object:rollItem("snus_plantfibre")
				end
			},
		}
	},
	['plast_box'] = {
		label = 'Plast Box',
		weight = 10,
		stack = false,
		close = true,
		buttons = {
			{
				label = 'Tilføj Label',
				action = function(slot)
					TriggerEvent("ox_inventory:closeInventory", true)
					exports.zaki_object:AddItemLabel(slot)
				end
			},
			{
				label = 'Fjern Label',
				action = function(slot)
					TriggerServerEvent("zaki_object:RemoveLabel", slot)
				end
			},
		}
	},
	['onion_seeds'] = {
		label = 'Løg Frø',
		weight = 5,
		stack = true,
		close = true,
		client = {
			export = 'zaki_object.plantSeed'
		}
	},
	['onion_cut'] = {
		label = 'Skåret Løg',
		weight = 15,
		stack = true,
		close = true,
	},
	['salat_seeds'] = {
		label = 'Salat Frø',
		weight = 5,
		stack = true,
		close = true,
		client = {
			export = 'zaki_object.plantSeed'
		}
	},
	['salat'] = {
		label = 'Salathoved',
		weight = 400,
		stack = true,
		close = true,
	},
	['salat_cut'] = {
		label = 'Skåret Salat',
		weight = 3,
		stack = true,
		close = true,
	},
	['corn_seeds'] = {
		label = 'Korn Frø',
		weight = 5,
		stack = true,
		close = true,
		client = {
			export = 'zaki_object.plantSeed'
		}
	},
	['wheat_seeds'] = {
		label = 'Hvede Frø',
		weight = 5,
		stack = true,
		close = true,
		client = {
			export = 'zaki_object.plantSeed'
		}
	},
	['dough'] = {
		label = 'Dej',
		weight = 100,
		stack = true,
		close = true,
	},
	['bun_1'] = {
		label = 'Burger Bolle',
		weight = 75,
		stack = true,
		close = true,
	},
	['bun_2'] = {
		label = 'Burger Bolle',
		weight = 75,
		stack = true,
		close = true,
	},
	['barley_seeds'] = {
		label = 'Byg Frø',
		weight = 5,
		stack = true,
		close = true,
		client = {
			export = 'zaki_object.plantSeed'
		}
	},
	['barley'] = {
		label = 'Byg',
		weight = 100,
		stack = true,
		close = true,
	},
	['tobacco_seeds'] = {
		label = 'Tobak Frø',
		weight = 5,
		stack = true,
		close = true,
		client = {
			export = 'zaki_object.plantSeed'
		}
	},
	['tobacco_leaves'] = {
		label = 'Tobak Blade',
		weight = 100,
		stack = true,
		close = true,
	},
	['tobacco_leaves_dried'] = {
		label = 'Tobak Tørret Blade',
		weight = 100,
		stack = true,
		close = true,
		buttons = {
			{
				label = 'Rul Tyk Cigar',
				action = function(slot)
					TriggerEvent("ox_inventory:closeInventory", true)
					exports.zaki_object:rollItem("roll_cigar_fat")
				end
			},
			{
				label = 'Rul Lang Cigar',
				action = function(slot)
					TriggerEvent("ox_inventory:closeInventory", true)
					exports.zaki_object:rollItem("roll_cigar_long")
				end
			},
			{
				label = 'Rul Cigaret',
				action = function(slot)
					TriggerEvent("ox_inventory:closeInventory", true)
					exports.zaki_object:rollItem("roll_cigaret")
				end
			},
		}
	},
	['cigar_fat'] = {
		label = 'Cigar',
		weight = 10,
		stack = false,
		close = true,
	},
	['cigar_long'] = {
		label = 'Cigar',
		weight = 10,
		stack = false,
		close = true,
	},
	['cigarcase'] = {
		label = 'Cigar Kasse',
		weight = 100,
		stack = false,
		close = false,
	},
	['cigarcase2'] = {
		label = 'Cigar Kasse (2)',
		weight = 100,
		stack = false,
		close = false,
	},
	['cigaret'] = {
		label = 'Cigaret',
		weight = 10,
		stack = false,
		close = true,
	},
	['cigaret_box'] = {
		label = 'Cigaretpakke',
		weight = 10,
		stack = false,
		close = true,
	},
	['wheat_bag'] = {
		label = 'Korn Pose',
		weight = 5,
		stack = false,
		close = false,
	},
	['agave_seeds'] = {
		label = 'Agave Frø',
		weight = 5,
		stack = true,
		close = true,
		client = {
			export = 'zaki_object.plantSeed'
		}
	},
	['agave'] = {
		label = 'Agave',
		weight = 10000,
		stack = true,
		close = true,
	},
	['agave_juice'] = {
		label = 'Agave Saft',
		weight = 1000,
		stack = true,
		close = true,
	},
	['grape_white_seeds'] = {
		label = 'Hvidvin drue frø',
		weight = 5,
		stack = true,
		close = true,
	},
	['grapes_white'] = {
		label = 'Hvidvin drue',
		weight = 100,
		stack = true,
		close = true,
	},
	['grape_red_seeds'] = {
		label = 'Rødvin drue frø',
		weight = 5,
		stack = true,
		close = true,
	},
	['grapes_red'] = {
		label = 'Rødvin drue',
		weight = 100,
		stack = true,
		close = true,
	},
	['avocado'] = {
		label = 'Avocado',
		weight = 100,
		stack = true,
		close = true,
	},
	['agurk'] = {
		label = 'Agurk',
		weight = 100,
		stack = true,
		close = true,
	},
	['avocado_sliced'] = {
		label = 'Skåret Avocado',
		weight = 7,
		stack = true,
		close = true,
	},
	['agurk_sliced'] = {
		label = 'Skåret Agurk',
		weight = 7,
		stack = true,
		close = true,
	},
	['sesam'] = {
		label = 'Sesamfrø',
		weight = 10,
		stack = true,
		close = true,
	},
	['sugar'] = {
		label = 'Sukker',
		weight = 10,
		stack = true,
		close = true,
	},
	['yeast'] = {
		label = 'Gær',
		weight = 10,
		stack = true,
		close = true,
	},
	['bottles'] = {
		label = 'Flasker',
		weight = 300,
		stack = true,
		close = true,
	},
	['shot_glass'] = {
		label = 'Shot Glas',
		weight = 300,
		stack = true,
		close = true,
		buttons = {
			{
				label = 'Omdøb',
				action = function(slot)
					TriggerEvent("ox_inventory:closeInventory", true)
					exports['erp-bar']:RenameItem(slot)
				end
			},
		},
	},
	['wine_glass'] = {
		label = 'Vin Glas',
		weight = 300,
		stack = true,
		close = true,
	},
	['drink_glass'] = {
		label = 'Drink Glas',
		weight = 300,
		stack = true,
		close = true,
		buttons = {
			{
				label = 'Omdøb',
				action = function(slot)
					TriggerEvent("ox_inventory:closeInventory", true)
					exports['erp-bar']:RenameItem(slot)
				end
			},
		},
	},
	['rakija_fermented'] = {
		label = 'Fermenteret Rakija',
		weight = 1000,
		stack = true,
		close = true,
	},
	['rakija_distillered'] = {
		label = 'Distillered Rakija',
		weight = 1000,
		stack = true,
		close = true,
	},
	['rakija_aged'] = {
		label = 'Aged Rakija',
		weight = 1000,
		stack = true,
		close = true,
	},
	['rakija_bottle'] = {
		label = 'Rakija Flaske',
		weight = 1000,
		stack = false,
		close = true,
	},
	['rakija_drink'] = {
		label = 'Rakija Drink',
		weight = 300,
		stack = false,
		close = true,
		client = {
			status = { thirst = 600000 },
			anim = DRINK_ANIM,
			prop = {
				model = 'p_amb_coffeecup_01',
				pos = DRINK_PROP_POS,
				rot = DRINK_PROP_ROT,
			},
			usetime = 2500,
			disable = DRINK_DISABLE,
		},
	},
	['rakija_case'] = {
		label = 'Rakija Kasse',
		weight = 100,
		stack = false,
		close = false,
		itemProp = {
			dict = "anim@heists@box_carry@",
			anim = "idle",
			emoteLoop = true,
			emoteMoving = true,
			propName = "v_ret_ml_beerpis1",
            propBone = 28422,
			placement = {0.0100, -0.0400, -0.1390,20.0000007, 0.0, 0.0},
		},
	},
	['mashed_whiskey'] = {
		label = 'Mashed Whiskey',
		weight = 1000,
		stack = true,
		close = true,
	},
	['fermented_whiskey'] = {
		label = 'Fermenteret Whiskey',
		weight = 1000,
		stack = true,
		close = true,
	},
	['fermented_whiskey_aged'] = {
		label = 'Fermenteret Whiskey (Aged)',
		weight = 1000,
		stack = true,
		close = true,
	},
	['fermented_vodka'] = {
		label = 'Fermenteret Vodka',
		weight = 1000,
		stack = true,
		close = true,
	},
	['fermented_vodka_aged'] = {
		label = 'Fermenteret Vodka (Aged)',
		weight = 1000,
		stack = true,
		close = true,
	},
	['mashed_beer'] = {
		label = 'Mashed Øl',
		weight = 1000,
		stack = true,
		close = true,
	},
	['fermented_beer'] = {
		label = 'Fermenteret Øl',
		weight = 1000,
		stack = true,
		close = true,
	},
	['fermented_ricewine'] = {
		label = 'Fermenteret Ris vin',
		weight = 1000,
		stack = true,
		close = true,
	},
	['fermented_tequila'] = {
		label = 'Fermenteret Tequila',
		weight = 1000,
		stack = true,
		close = true,
	},
	['fermented_white_wine'] = {
		label = 'Fermenteret Hvidvin',
		weight = 1000,
		stack = true,
		close = true,
	},
	['fermented_white_aged_wine'] = {
		label = 'Fermenteret Hvidvin (Aged)',
		weight = 1000,
		stack = true,
		close = true,
	},
	['fermented_red_wine'] = {
		label = 'Fermenteret Rødvin',
		weight = 1000,
		stack = true,
		close = true,
	},
	['fermented_red_aged_wine'] = {
		label = 'Fermenteret Rødvin (Aged)',
		weight = 1000,
		stack = true,
		close = true,
	},
	['tequila_new'] = {
		label = 'Tequila',
		weight = 1000,
		stack = false,
		close = true,
	},
	['tequila_shot_new'] = {
		label = 'Tequilashot',
		weight = 75,
		stack = true,
		close = true,
	},
	['whiskey_new'] = {
		label = 'Whiskey Flaske',
		weight = 1000,
		stack = false,
		close = true,
	},
	['whiskey_drink_new'] = {
		label = 'Whiskey Glas',
		weight = 75,
		stack = true,
		close = true,
	},
	['vodka_new'] = {
		label = 'Vodka Flaske',
		weight = 1000,
		stack = false,
		close = true,
	},
	['vodka_drink'] = {
		label = 'Vodka Drink',
		weight = 300,
		stack = false,
		close = true,
		client = {
			status = { thirst = 600000 },
			anim = DRINK_ANIM,
			prop = {
				model = 'p_amb_coffeecup_01',
				pos = DRINK_PROP_POS,
				rot = DRINK_PROP_ROT,
			},
			usetime = 2500,
			disable = DRINK_DISABLE,
		},
	},
	['red_wine'] = {
		label = 'Rødvin',
		weight = 750,
		stack = false,
		close = true,
	},
	['red_wine_glass'] = {
		label = 'Rødvins glas',
		weight = 75,
		stack = true,
		close = true,
		client = {
			status = { thirst = 300000 },
			anim = DRINK_ANIM,
			prop = WINE_PROP,
			usetime = 2500,
			disable = DRINK_DISABLE,
		},
	},
	['white_wine'] = {
		label = 'Hvidvin',
		weight = 750,
		stack = false,
		close = true,
	},
	['white_wine_glass'] = {
		label = 'Hvidvins glas',
		weight = 75,
		stack = true,
		close = true,
		client = {
			status = { thirst = 300000 },
			anim = DRINK_ANIM,
			prop = WINE_PROP,
			usetime = 2500,
			disable = DRINK_DISABLE,
		},
	},
	['ris_vin'] = {
		label = 'Risvin',
		weight = 750,
		stack = false,
		close = true,
	},
	['redbull_sugarfree'] = {
		label = 'Red Bull Sukkerfri',
		weight = 250,
		stack = true,
		close = true,
		client = {
			status = { thirst = 400000 },
			anim = DRINK_ANIM,
			prop = CAN_PROP,
			usetime = 2500,
			disable = DRINK_DISABLE,
		},
	},
	['soda_fanta'] = {
		label = 'Fanta',
		weight = 400,
		stack = true,
		close = true,
		client = {
			status = { thirst = 800000 },
			anim = DRINK_ANIM,
			prop = { model = 'prop_sprunk_can', pos = DRINK_PROP_POS, rot = DRINK_PROP_ROT },
			usetime = 2500,
			disable = DRINK_DISABLE,
		},
	},
	['soda_faxi'] = {
		label = 'Faxe Kondi',
		weight = 400,
		stack = true,
		close = true,
		client = {
			status = { thirst = 800000 },
			anim = DRINK_ANIM,
			prop = { model = 'prop_sprunk_can', pos = DRINK_PROP_POS, rot = DRINK_PROP_ROT },
			usetime = 2500,
			disable = DRINK_DISABLE,
		},
	},
	['cocktail_glass'] = {
		label = 'Cocktail Scheme',
		weight = 75,
		stack = false,
		close = true,
		buttons = {
			{
				label = 'Omdøb',
				action = function(slot)
					TriggerEvent("ox_inventory:closeInventory", true)
					exports['erp-bar']:RenameItem(slot)
				end
			},
		},
	},
	['tequsunrise_glass'] = {
		label = 'Tequila Sunrise Scheme',
		weight = 75,
		stack = false,
		close = true,
		buttons = {
			{
				label = 'Omdøb',
				action = function(slot)
					TriggerEvent("ox_inventory:closeInventory", true)
					exports['erp-bar']:RenameItem(slot)
				end
			},
		},
	},
	['pinacolada_glass'] = {
		label = 'Piña colada Scheme',
		weight = 75,
		stack = false,
		close = true,
		buttons = {
			{
				label = 'Omdøb',
				action = function(slot)
					TriggerEvent("ox_inventory:closeInventory", true)
					exports['erp-bar']:RenameItem(slot)
				end
			},
		},
	},
	['daiquiri_glass'] = {
		label = 'Daiquiri Scheme',
		weight = 75,
		stack = false,
		close = true,
		buttons = {
			{
				label = 'Omdøb',
				action = function(slot)
					TriggerEvent("ox_inventory:closeInventory", true)
					exports['erp-bar']:RenameItem(slot)
				end
			},
		},
	},
	['mojito_glass'] = {
		label = 'Mojito Scheme',
		weight = 75,
		stack = false,
		close = true,
		buttons = {
			{
				label = 'Omdøb',
				action = function(slot)
					TriggerEvent("ox_inventory:closeInventory", true)
					exports['erp-bar']:RenameItem(slot)
				end
			},
		},
	},
	['beer'] = {
		label = 'Øl',
		weight = 1000,
		stack = false,
		close = true,
	},
	['sweetener'] = {
		label = "Sødestof",
		weight = 5,
		stack = true,
		close = true,
	},
	['sirup'] = {
		label = "Smags Sirup",
		weight = 5,
		stack = true,
		close = true,
	},
	['carbonic_acid'] = {
		label = "Kulsyre",
		weight = 5,
		stack = true,
		close = true,
	},
	['caffein'] = {
		label = "Koffein",
		weight = 5,
		stack = true,
		close = true,
	},
	['luxe_soda'] = {
		label = 'Sodavand',
		weight = 1000,
		stack = false,
		close = true,
	},
	['luxe_energy'] = {
		label = 'Energi drik',
		weight = 1000,
		stack = false,
		close = true,
	},
	['beercase'] = {
		label = 'Øl Kasse',
		weight = 100,
		stack = false,
		close = false,
		itemProp = {
			dict = "anim@heists@box_carry@",
			anim = "idle",
			emoteLoop = true,
			emoteMoving = true,
			propName = "v_ret_ml_beerpis1",
            propBone = 28422,
			placement = {0.0100, -0.0400, -0.1390,20.0000007, 0.0, 0.0},
		},
	},
	['sodacase'] = {
		label = 'Sodavands Kasse',
		weight = 100,
		stack = false,
		close = false,
		itemProp = {
			dict = "anim@heists@box_carry@",
			anim = "idle",
			emoteLoop = true,
			emoteMoving = true,
			propName = "v_serv_abox_04",
            propBone = 28422,
			placement = {0.0100, -0.0400, -0.1390,20.0000007, 0.0, 0.0},
		},
	},
	['whiskeycase'] = {
		label = 'Whiskey Kasse',
		weight = 100,
		stack = false,
		close = false,
		itemProp = {
			dict = "anim@heists@box_carry@",
			anim = "idle",
			emoteLoop = true,
			emoteMoving = true,
			propName = "drp_whiskeycase",
            propBone = 28422,
			placement = {0.0100, -0.0400, -0.1390,20.0000007, 0.0, 0.0},
		},
	},
	['rumcase'] = {
		label = 'Rum Kasse',
		weight = 100,
		stack = false,
		close = false,
		itemProp = {
			dict = "anim@heists@box_carry@",
			anim = "idle",
			emoteLoop = true,
			emoteMoving = true,
			propName = "drp_rumcase",
            propBone = 28422,
			placement = {0.0100, -0.0400, -0.1390,20.0000007, 0.0, 0.0},
		},
	},
	['vodkacase'] = {
		label = 'Vodka Kasse',
		weight = 100,
		stack = false,
		close = false,
		itemProp = {
			dict = "anim@heists@box_carry@",
			anim = "idle",
			emoteLoop = true,
			emoteMoving = true,
			propName = "v_ret_ml_beerpis1",
            propBone = 28422,
			placement = {0.0100, -0.0400, -0.1390,20.0000007, 0.0, 0.0},
		},
	},
	['tequilacase'] = {
		label = 'Tequila Kasse',
		weight = 100,
		stack = false,
		close = false,
		itemProp = {
			dict = "anim@heists@box_carry@",
			anim = "idle",
			emoteLoop = true,
			emoteMoving = true,
			propName = "drp_tequilacase",
            propBone = 28422,
			placement = {0.0100, -0.0400, -0.1390,20.0000007, 0.0, 0.0},
		},
	},
	['tequilacase2'] = {
		label = 'Tequila Kasse (2)',
		weight = 100,
		stack = false,
		close = false,
		itemProp = {
			dict = "anim@heists@box_carry@",
			anim = "idle",
			emoteLoop = true,
			emoteMoving = true,
			propName = "prop_idol_case_01",
            propBone = 28422,
			placement = {0.0100, -0.0400, -0.1390,20.0000007, 0.0, 0.0},
		},
	},
	['winecase'] = {
		label = 'Vin Kasse',
		weight = 100,
		stack = false,
		close = false,
		itemProp = {
			dict = "anim@heists@box_carry@",
			anim = "idle",
			emoteLoop = true,
			emoteMoving = true,
			propName = "drp_winecase",
            propBone = 28422,
			placement = {0.0100, -0.0400, -0.1390,20.0000007, 0.0, 0.0},
		},
	},
	['weed_pot'] = {
		label = "Hash Potte",
		weight = 500,
		stack = true,
		close = true,
	},
	['weed_seed'] = {
		label = "Hash Frø",
		weight = 5,
		stack = true,
		close = true,
	},
	['string'] = {
		label = "Snor",
		weight = 5,
		stack = true,
		close = true,
	},
	['weed_undried_without_string'] = {
		label = "Utørret Hash Plante u. snor",
		weight = 500,
		stack = false,
		close = true,
	},
	['weed_undried_with_string'] = {
		label = "Utørret Hash Plante",
		weight = 500,
		stack = false,
		close = true,
	},
	['weed_dried'] = {
		label = "Tørret Hash",
		weight = 10,
		stack = true,
		close = true,
	},
	['weed_skunk'] = {
		label = "Skunk",
		weight = 500,
		stack = true,
		close = true,
	},
	['weed_joint'] = {
		label = "Joint",
		weight = 75,
		stack = true,
		close = true,
	},
	['coca_furnace'] = {
		label = "Smelteovn",
		weight = 5000,
		stack = false,
		close = true,
	},
	['coca_powder'] = {
		label = "Coca Pulver",
		weight = 1,
		stack = true,
		close = true,
	},
	['coca_paste'] = {
		label = "Coca Pasta",
		weight = 1,
		stack = true,
		close = true,
	},
	['coca_leaf'] = {
		label = "Coca Blade",
		weight = 1,
		stack = true,
		close = true,
	},
	['coca_seed'] = {
		label = "Coca Frø",
		weight = 1,
		stack = true,
		close = true,
	},
	['opium_poppy'] = {
		label = "Opiumsvalmue",
		weight = 1,
		stack = true,
		close = true,
	},
	['opium_resin'] = {
		label = "Opiumsharpiks",
		weight = 1,
		stack = true,
		close = true,
	},
	['opium_paste'] = {
		label = "Opiumspasta",
		weight = 1,
		stack = true,
		close = true,
	},
	['opium_tar'] = {
		label = "Råopium",
		weight = 1,
		stack = true,
		close = true,
	},
	['opium_powder'] = {
		label = "Opiumspulver",
		weight = 1,
		stack = true,
		close = true,
	},
	['furnace_fuel'] = {
		label = "Træbrændstof",
		weight = 100,
		stack = true,
		close = true,
	},
	['solvent'] = {
		label = "Opløsningsmiddel",
		weight = 250,
		stack = true,
		close = true,
	},
	['coca_petroleum'] = {
		label = "Petroleum",
		weight = 1,
		stack = true,
		close = true,
	},
	['mixing_container'] = {
		label = "Blandingsbeholder",
		weight = 500,
		stack = true,
		close = true,
	},
	['meth_pseudo'] = {
		label = "Pseudoefedrin",
		weight = 1,
		stack = true,
		close = true,
	},
	['meth_acetone'] = {
		label = "Acetone",
		weight = 1,
		stack = true,
		close = true,
	},
	['meth_lye'] = {
		label = "Kaustisk Soda",
		weight = 1,
		stack = true,
		close = true,
	},
	['meth_ether'] = {
		label = "Æter",
		weight = 1,
		stack = true,
		close = true,
	},
	['meth_iodine'] = {
		label = "Jodkrystaller",
		weight = 1,
		stack = true,
		close = true,
	},
	['tun_sliced'] = {
		label = 'Skåret Tun',
		weight = 50,
		stack = true,
		close = true,
	},
	['laks_sliced'] = {
		label = 'Skåret Laks',
		weight = 50,
		stack = true,
		close = true,
	},
	['tigerreje_raw'] = {
		label = 'Rå Tigerreje',
		weight = 10,
		stack = true,
		close = true,
	},
	['tigerreje'] = {
		label = 'Tigerreje',
		weight = 10,
		stack = true,
		close = true,
	},
	['tang'] = {
		label = 'Sushi Tang',
		weight = 10,
		stack = true,
		close = true,
	},
	['sushi_rice'] = {
		label = 'Sushi Ris',
		weight = 10,
		stack = true,
		close = true,
	},
	['sushi_rice_cooked'] = {
		label = 'Kogt Sushi Ris',
		weight = 10,
		stack = true,
		close = true,
	},
	['sushi_1'] = {
		label = 'Nigiri m. Laks',
		weight = 50,
		stack = true,
		close = true,
		client = {
			status = { hunger = 70000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
			usetime = 2500,
		}
	},
	['sushi_2'] = {
		label = 'Nigiri m. Tigerreje',
		weight = 50,
		stack = true,
		close = true,
		client = {
			status = { hunger = 70000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
			usetime = 2500,
		}
	},
	['sushi_3'] = {
		label = 'Nigiri m. Tun',
		weight = 50,
		stack = true,
		close = true,
		client = {
			status = { hunger = 70000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
			usetime = 2500,
		}
	},
	['sushi_4'] = {
		label = 'Hoso maki m. Avocado & Laks',
		weight = 50,
		stack = true,
		close = true,
		client = {
			status = { hunger = 70000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
			usetime = 2500,
		}
	},
	['sushi_5'] = {
		label = 'Hoso maki m. Avocado & Tun',
		weight = 50,
		stack = true,
		close = true,
		client = {
			status = { hunger = 70000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
			usetime = 2500,
		}
	},
	['sushi_6'] = {
		label = 'Hoso maki m. Agurk & Laks',
		weight = 50,
		stack = true,
		close = true,
		client = {
			status = { hunger = 70000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
			usetime = 2500,
		}
	},
	['sushi_7'] = {
		label = 'Hoso maki m. Agurk & Tun',
		weight = 50,
		stack = true,
		close = true,
		client = {
			status = { hunger = 70000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
			usetime = 2500,
		}
	},
	['sushi_8'] = {
		label = 'Uramaki m. Laks',
		weight = 50,
		stack = true,
		close = true,
		client = {
			status = { hunger = 70000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
			usetime = 2500,
		}
	},
	['sushi_9'] = {
		label = 'Uramaki m. Tun',
		weight = 50,
		stack = true,
		close = true,
		client = {
			status = { hunger = 70000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
			usetime = 2500,
		}
	},
	['sushi_10'] = {
		label = 'Uramaki m. Tigerreje',
		weight = 50,
		stack = true,
		close = true,
		client = {
			status = { hunger = 70000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
			usetime = 2500,
		}
	},
	['sushi_11'] = {
		label = 'Futo Chicken',
		weight = 50,
		stack = true,
		close = true,
		client = {
			status = { hunger = 70000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
			usetime = 2500,
		}
	},
	['wasabi'] = {
		label = 'Wasabi',
		weight = 50,
		stack = false,
		close = true,
		client = {
			status = { hunger = 10000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
			usetime = 2500,
		}
	},
	['soja_sauce'] = {
		label = 'Soja Sauce',
		weight = 50,
		stack = false,
		close = true,
		client = {
			status = { hunger = 10000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
			usetime = 2500,
		}
	},
	['chili_mayo'] = {
		label = 'Chili Mayo',
		weight = 50,
		stack = false,
		close = true,
		client = {
			status = { hunger = 10000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
			usetime = 2500,
		}
	},
	['sushi_tray'] = {
		label = 'Sushi Fad',
		weight = 100,
		stack = false,
		close = false,
	},
	['burgershot_burger'] = {
		label = 'Burgershot Burger',
		weight = 220,
		close = true,
		client = {
			status = { hunger = 700000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
			prop = {
				model = 'nels_burger_bleeder_prop',
				pos = { x = 0.02, y = 0.02, z = -0.02},
				rot = { x = 0.0, y = 0.0, z = 0.0}
			},
			usetime = 2500,
		}
	},
	['burgershot_burger_2'] = {
		label = 'Moneyshot',
		weight = 320,
		stack = true,
		close = true,
		client = {
			status = { hunger = 800000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
			prop = {
				model = 'nels_burger_double_shot_prop',
				pos = { x = 0.02, y = 0.02, z = -0.02},
				rot = { x = 0.0, y = 0.0, z = 0.0}
			},
			usetime = 2500,
		}
	},
	['burgershot_beef_raw'] = {
		label = 'Rå Burgerbøf',
		weight = 100,
		stack = true,
		close = true,
	},
	['burgershot_beef'] = {
		label = 'Burgerbøf',
		weight = 100,
		stack = true,
		close = true,
	},
	['burgershot_bacon_raw'] = {
		label = 'Rå bacon',
		weight = 10,
		stack = true,
		close = true,
	},
	['burgershot_bacon'] = {
		label = 'Bacon',
		weight = 7,
		stack = true,
		close = true,
	},
	['burgershot_cheese'] = {
		label = 'Burger Ost',
		weight = 20,
		stack = true,
		close = true,
	},
	['burgershot_fries'] = {
		label = 'French Fries',
		weight = 110,
		stack = true,
		close = true,
	},
	['burgershot_uncooked_fries'] = {
		label = 'Rå Pomfritter',
		weight = 300,
		stack = true,
		close = true,
	},
	['company_soda'] = {
		label = 'Sodavand',
		weight = 1000,
		stack = false,
		close = true,
	},
	['company_juice'] = {
		label = 'Juice',
		weight = 1000,
		stack = false,
		close = true,
	},
	['burgershot_postmix'] = {
		label = 'Sodavand Postmix',
		weight = 5000,
		stack = true,
		close = true,
	},
	['burgershot_cup'] = {
		label = 'Papkrus',
		weight = 10,
		stack = true,
		close = true,
	},
	['burgershot_menu'] = {
		label = 'Serveringsbakke',
		weight = 100,
		stack = false,
		close = false,
		itemProp = {
			dict = "anim@heists@box_carry@",
			anim = "idle",
			emoteLoop = true,
			emoteMoving = true,
			propName = "prop_food_bs_tray_02",
            propBone = 28422,
			placement = {0.0100, -0.0400, -0.1390,20.0000007, 0.0, 0.0},
		},
	},
	['burgershot_bag'] = {
		label = 'Pose',
		weight = 20,
		stack = false,
		close = false,
	},
	['burgershot_happymeal'] = {
		label = 'Murder Meal',
		weight = 20,
		stack = false,
		close = false,
		client = {
			status = { hunger = 200000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
			prop = {
				model = 'nels_burger_bleeder_prop',
				pos = { x = 0.02, y = 0.02, z = -0.02},
				rot = { x = 0.0, y = 0.0, z = 0.0}
			},
			usetime = 2500,
		}
	},
	['burgershot_nugget_bucket'] = {
		label = 'Spand med nuggets',
		weight = 100,
		stack = false,
		close = false,
		client = {
			status = { hunger = 200000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
			prop = {
				model = 'nels_burger_bleeder_prop',
				pos = { x = 0.02, y = 0.02, z = -0.02},
				rot = { x = 0.0, y = 0.0, z = 0.0}
			},
			usetime = 2500,
		}
	},
	['burgershot_nugget'] = {
		label = 'Nuggets',
		weight = 20,
		stack = true,
		close = true,
		client = {
			status = { hunger = 200000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
			prop = {
				model = 'nels_burger_bleeder_prop',
				pos = { x = 0.02, y = 0.02, z = -0.02},
				rot = { x = 0.0, y = 0.0, z = 0.0}
			},
			usetime = 2500,
		}
	},
	['burgershot_chicken_raw'] = {
		label = 'Rå Kylling',
		weight = 100,
		stack = true,
		close = true,
	},
	['burgershot_chicken_grilled'] = {
		label = 'Grillet kylling',
		weight = 100,
		stack = true,
		close = true,
	},
	['burgershot_wrap'] = {
		label = 'Wrap',
		weight = 10,
		stack = true,
		close = true,
	},
	['burgershot_wrap_eat'] = {
		label = 'Wrap',
		weight = 150,
		stack = true,
		close = true
	},
	['burgershot_onionring_bag'] = {
		label = 'Pose med løgringe',
		weight = 20,
		stack = false,
		close = false,
	},
	['burgershot_onionring'] = {
		label = 'Løgringe',
		weight = 10,
		stack = true,
		close = true
	},
	['sugarcane'] = {
		label = 'Sugarcane',
		weight = 800,
		stack = true,
		close = true,
	},
	['sugarcane_juice'] = {
		label = 'Sugarcane Juice',
		weight = 280,
		stack = true,
		close = true,
	},
	['fermented_rum'] = {
		label = 'Fermenteret Rum',
		weight = 1000,
		stack = true,
		close = true,
	},
	['rum'] = {
		label = 'Rum',
		weight = 1000,
		stack = false,
		close = true,
	},
	['rum_drink'] = {
		label = 'Rum Glas',
		weight = 75,
		stack = true,
		close = true,
	},
	['rye_seeds'] = {
		label = 'Rug Frø',
		weight = 5,
		stack = true,
		close = true,
		client = {
			export = 'zaki_object.plantSeed'
		}
	},
	['rye'] = {
		label = 'Rug',
		weight = 10,
		stack = true,
		close = true,
	},
	['rye_dough'] = {
		label = 'Rugbrøds dej',
		weight = 100,
		stack = true,
		close = true,
	},
	['rye_bread'] = {
		label = 'Rugbrøds skiver',
		weight = 30,
		stack = true,
		close = true,
	},
	['fried_salmon'] = {
		label = 'Stegt laks',
		weight = 85,
		stack = true,
		close = true,
	},
	['fried_plaice_fillet'] = {
		label = 'Stegt Rødspættefilet',
		weight = 70,
		stack = true,
		close = true,
	},
	['egg'] = {
		label = 'Æg',
		weight = 50,
		stack = true,
		close = true,
	},
	['milk'] = {
		label = 'Mælk',
		weight = 240,
		stack = true,
		close = true,
	},
	['vanilla_ice'] = {
		label = 'Kugle Vaniljeis',
		weight = 70,
		stack = true,
		close = true,
	},
	['salted_meat'] = {
		label = 'Saltkød',
		weight = 85,
		stack = true,
		close = true,
	},
	['salad_menu'] = {
		label = 'Salat Menu',
		weight = 100,
		stack = true,
		close = true,
	},
	['sandwich_menu'] = {
		label = 'Sandwich Menu',
		weight = 100,
		stack = true,
		close = true,
		client = {
			status = { hunger = 300000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
			prop = {
				model = 'prop_sandwich_01',
				pos = { x = 0.02, y = 0.02, z = -0.02},
				rot = { x = 0.0, y = 0.0, z = 0.0}
			},
			usetime = 2500,
		}
	},
	['omelet_menu'] = {
		label = 'Omelet Menu',
		weight = 100,
		stack = true,
		close = true,
	},
	['crepes_menu'] = {
		label = 'Desert Menu',
		weight = 100,
		stack = true,
		close = true,
	},
	['kebab_roll'] = {
		label = 'Kebab Rulle',
		weight = 5000,
		stack = true,
		close = true,
	},
	['kebab_pieces'] = {
		label = 'Kebab Stykker',
		weight = 10,
		stack = true,
		close = true,
	},
	['chicken_pieces'] = {
		label = 'Kylling Stykker',
		weight = 10,
		stack = true,
		close = true,
	},
	['falafel_raw'] = {
		label = 'Rå Falafel',
		weight = 30,
		stack = true,
		close = true,
	},
	['falafel_fried'] = {
		label = 'Falafel',
		weight = 30,
		stack = true,
		close = true,
	},
	['durum_bread'] = {
		label = 'Fladbrød',
		weight = 70,
		stack = true,
		close = true,
	},
	['durum_bread_warmed'] = {
		label = 'Varmet Fladbrød',
		weight = 70,
		stack = true,
		close = true,
	},
	['pita_bread'] = {
		label = 'Pitabrød',
		weight = 70,
		stack = true,
		close = true,
	},
	['pita_bread_warmed'] = {
		label = 'Varmet Pitabrød',
		weight = 70,
		stack = true,
		close = true,
	},
	['turkish_bread'] = {
		label = 'Tyrkisk Brød',
		weight = 70,
		stack = true,
		close = true,
	},
	['turkish_bread_warmed'] = {
		label = 'Varmet Tyrkisk Brød',
		weight = 70,
		stack = true,
		close = true,
	},
	['kebab_durum'] = {
		label = 'Durum',
		weight = 200,
		stack = true,
		close = true,
	},
	['kebab_pita'] = {
		label = 'Pita Brød',
		weight = 200,
		stack = true,
		close = true,
	},
	['kebab_turkish'] = {
		label = 'Tyrkisk Brød',
		weight = 200,
		stack = true,
		close = true,
	},
	['kebab_bowl'] = {
		label = 'Bowl m. Kylling',
		weight = 200,
		stack = true,
		close = true,
	},
	['hookahh'] = {
		label = 'Vandpipe',
		weight = 5000,
		stack = false,
		close = true,
	},
	['shaker'] = {
		label = 'Shaker',
		weight = 500,
		stack = false,
		close = true,
	},
	['spark_plugs'] = {
		label = 'Tændrør',
		weight = 50,
		stack = true,
		close = true,
	},
	['pistons'] = {
		label = 'Stempler',
		weight = 1500,
		stack = true,
		close = true,
	},
	['oil_pan'] = {
		label = 'Bundkar',
		weight = 5000,
		stack = true,
		close = true,
	},
	['cylinder_head'] = {
		label = 'Topstykke',
		weight = 15000,
		stack = true,
		close = true,
	},
	['timing_belt'] = {
		label = 'Tandrem',
		weight = 300,
		stack = true,
		close = true,
	},
	['fuel_injector'] = {
		label = 'Brændstofindsprøjter',
		weight = 100,
		stack = true,
		close = true,
	},
	['oil_filter'] = {
		label = 'Oliefilter',
		weight = 250,
		stack = true,
		close = true,
	},
	['gasket_set'] = {
		label = 'Pakningssæt',
		weight = 500,
		stack = true,
		close = true,
	},
	['radiator'] = {
		label = 'Køler',
		weight = 6000,
		stack = true,
		close = true,
	},
	['water_pump'] = {
		label = 'Vandpumpe',
		weight = 1000,
		stack = true,
		close = true,
	},
	['camshaft'] = {
		label = 'Knastaksel',
		weight = 8000,
		stack = true,
		close = true,
	},
	['crankshaft'] = {
		label = 'Krumtap',
		weight = 15000,
		stack = true,
		close = true,
	},
	['valve_train'] = {
		label = 'Ventilvippearme',
		weight = 2000,
		stack = true,
		close = true,
	},
	['vehicle_door'] = {
		label = 'Bildør',
		weight = 2000,
		stack = true,
		close = true,
		itemProp = {
			dict = "anim@heists@box_carry@",
			anim = "idle",
			emoteLoop = true,
			emoteMoving = true,
			propName = "imp_prop_impexp_car_door_01a",
            propBone = 28422,
			placement = {-0.5100, -0.1400, 0.5590, 0.0, 0.0, 90.0},
		},
	},
	['vehicle_trunk'] = {
		label = 'Bagklap',
		weight = 2000,
		stack = true,
		close = true,
		itemProp = {
			dict = "anim@heists@box_carry@",
			anim = "idle",
			emoteLoop = true,
			emoteMoving = true,
			propName = "imp_prop_impexp_trunk_03a",
            propBone = 28422,
			placement = {-0.0100, -0.3400, -0.2390, 0.0, 0.0, 0.0},
		},
	},
	['vehicle_hood'] = {
		label = 'Motorhjelm',
		weight = 2000,
		stack = true,
		close = true,
		itemProp = {
			dict = "anim@heists@box_carry@",
			anim = "idle",
			emoteLoop = true,
			emoteMoving = true,
			propName = "imp_prop_impexp_bonnet_01a",
            propBone = 28422,
			placement = {0.0100, 0.2400, -0.0590, 0.0, 0.0, 180.0},
		},
	},
	['house_speaker'] = {
		label = 'Højtaler',
		weight = 500,
		stack = true,
		close = true,
	},
	['house_tv'] = {
		label = 'Fjernsyn',
		weight = 500,
		stack = true,
		close = true,
	},
	['house_statue'] = {
		label = 'Statue',
		weight = 500,
		stack = true,
		close = true,
	},
	['mdma'] = {
		label = 'MDMA',
		weight = 10,
		stack = true,
		close = true,
	},
	["crafting_bench"] = {
		label = "Crafting Bench",
		weight = 5000,
		stack = false,
		close = true,
	},
	["blueprint"] = {
		label = "Blueprint",
		weight = 100,
		stack = false,
		close = true,
	},
	["tuning_blueprint"] = {
		label = "Tuning Blueprint",
		weight = 100,
		stack = false,
		close = true,
		consume = 0,
		description = "Et faerdigt bil-design. En mekaniker installerer det paa den rigtige bil (samme model).",
		client = {
			event = "erp-tuning:client:useBlueprint",
		},
	},
	["textile"] = {
		label = "Tekstil",
		weight = 1,
		stack = true,
		close = true,
	},
	["scrap_aluminium"] = {
		label = "Aluminium",
		weight = 1,
		stack = true,
		close = true,
	},
	["cloth"] = {
		label = "Cloth",
		weight = 1,
		stack = true,
		close = true,
	},
	['spring_steel'] = {
        label = 'Fjederstål',
        weight = 100,
        stack = true,
        close = true
    },
    ['hardwood'] = {
        label = 'Træ',
        weight = 250,
        stack = true,
        close = true
    },
    ['carbon_fiber_roll'] = {
        label = 'Kulfiber Rulle',
        weight = 200,
        stack = true,
        close = true
    },
    ['carbon_fiber'] = {
        label = 'Kulfiber',
        weight = 150,
        stack = true,
        close = true
    },
    ['curing_agent'] = {
        label = 'Hærder',
        weight = 50,
        stack = true,
        close = true
    },
    ['steel_reinforcement'] = {
        label = 'Forstærket Stål',
        weight = 200,
        stack = true,
        close = true
    },
    ['gun_oil'] = {
        label = 'Våbenolie',
        weight = 50,
        stack = true,
        close = true
    },
    ['fasteners_pack'] = {
        label = 'Skruer & bolte (pakke)',
        weight = 100,
        stack = true,
        close = true
    },
    ['fuel_brick'] = {
        label = 'Brændselsblok',
        weight = 300,
        stack = true,
        close = true
    },
    ['recycler_token'] = {
        label = 'Genbrugsbundt',
        description = 'Et bundt sorteret genbrug. Byttes til materialer ved disken paa genbrugspladsen.',
        weight = 1,
        stack = true,
        close = false,
    },
    ['aluminum_sheet'] = {
        label = 'Aluminiumplade',
        weight = 150,
        stack = true,
        close = true
    },
    ['hardened_steel'] = {
        label = 'Hærdet stål',
        weight = 200,
        stack = true,
        close = true
    },
    ['bolts'] = {
        label = 'Bolte',
        weight = 10,
        stack = true,
        close = true
    },
    ['screws'] = {
        label = 'Skruer',
        weight = 10,
        stack = true,
        close = true
    },
    ['lubricant_base'] = {
        label = 'Smøremiddel Base',
        weight = 50,
        stack = true,
        close = true
    },
    ['electronics_kit'] = {
        label = 'Elektronik-kit',
        weight = 150,
        stack = true,
        close = true
    },
    ['battery_pack'] = {
        label = 'Batteripakke',
        weight = 200,
        stack = true,
        close = true
    },
    ['revolver_barrel_blueprint'] = {
        label = 'Revolver Løb',
        weight = 20,
        stack = true,
        close = true
    },
    ['revolver_frame_blueprint'] = {
        label = 'Revolver Stel',
        weight = 20,
        stack = true,
        close = true
    },
    ['revolver_cylinder_blueprint'] = {
        label = 'Revolver Tromle',
        weight = 20,
        stack = true,
        close = true
    },
    ['assembly_kit_blueprint'] = {
        label = 'Samlesæt',
        weight = 20,
        stack = true,
        close = true
    },
    ['small_parts_blueprint'] = {
        label = 'Smådele',
        weight = 20,
        stack = true,
        close = true
    },
    ['deagle_barrel_blueprint'] = {
        label = '.50 Løb',
        weight = 20,
        stack = true,
        close = true
    },
    ['deagle_frame_blueprint'] = {
        label = '.50 Stel',
        weight = 20,
        stack = true,
        close = true
    },
    ['recoil_spring_blueprint'] = {
        label = 'Rekylfjeder',
        weight = 20,
        stack = true,
        close = true
    },
    ['navy_barrel_blueprint'] = {
        label = 'Navy Løb',
        weight = 20,
        stack = true,
        close = true
    },
    ['navy_frame_blueprint'] = {
        label = 'Navy Stel',
        weight = 20,
        stack = true,
        close = true
    },
    ['navy_cylinder_blueprint'] = {
        label = 'Navy Tromle',
        weight = 20,
        stack = true,
        close = true
    },
    ['case_hardened_blueprint'] = {
        label = 'Case Hardening',
        weight = 20,
        stack = true,
        close = true,
        -- Ingen egen tegning; det generiske blueprint-billede frem for et
        -- tomt slot.
        client = { image = 'blueprint.png' },
    },
    ['pistol_frame_blueprint'] = {
        label = 'Pistol Stel',
        weight = 20,
        stack = true,
        close = true
    },
    ['magazine_blueprint'] = {
        label = 'Magasin',
        weight = 20,
        stack = true,
        close = true
    },
    ['trigger_blueprint'] = {
        label = 'Aftrækker-kit',
        weight = 20,
        stack = true,
        close = true
    },
    ['vintage_barrel_blueprint'] = {
        label = 'Vintage Løb',
        weight = 20,
        stack = true,
        close = true
    },
    ['wood_grip_blueprint'] = {
        label = 'Trægreb',
        weight = 20,
        stack = true,
        close = true
    },
    ['carbon_frame_blueprint'] = {
        label = 'Kulfiber Stel',
        weight = 20,
        stack = true,
        close = true
    },
    ['weave_blueprint'] = {
        label = 'Kulstofvæv',
        weight = 20,
        stack = true,
        close = true
    },
    ['reinforcement_blueprint'] = {
        label = 'Forstærkning',
        weight = 20,
        stack = true,
        close = true
    },
    ['tube_blueprint'] = {
        label = 'Rør',
        weight = 20,
        stack = true,
        close = true
    },
    ['baffle_blueprint'] = {
        label = 'Baffles',
        weight = 20,
        stack = true,
        close = true,
        -- Ingen egen tegning; det generiske blueprint-billede frem for et
        -- tomt slot.
        client = { image = 'blueprint.png' },
    },
    ['flashlight_body_blueprint'] = {
        label = 'Lommelygtehus',
        weight = 20,
        stack = true,
        close = true
    },
    ['lens_blueprint'] = {
        label = 'Linse',
        weight = 20,
        stack = true,
        close = true
    },
    ['battery_blueprint'] = {
        label = 'Batteripakke',
        weight = 20,
        stack = true,
        close = true
    },
    ['spring_blueprint'] = {
        label = 'Fjeder',
        weight = 20,
        stack = true,
        close = true
    },
    ['blank_plate_blueprint'] = {
        label = 'Nummerplade (Blank)',
        weight = 20,
        stack = true,
        close = true
    },
    ['stamp_blueprint'] = {
        label = 'Stempelsæt',
        weight = 20,
        stack = true,
        close = true
    },
    ['fasteners_blueprint'] = {
        label = 'Fasteners',
        weight = 20,
        stack = true,
        close = true
    },
    ['bandage_blueprint'] = {
        label = 'Bandage-rulle',
        weight = 20,
        stack = true,
        close = true
    },
    ['canopy_blueprint'] = {
        label = 'Faldskærmsdug',
        weight = 20,
        stack = true,
        close = true
    },
    ['lines_blueprint'] = {
        label = 'Liner',
        weight = 20,
        stack = true,
        close = true,
        -- Ingen egen tegning; det generiske blueprint-billede frem for et
        -- tomt slot.
        client = { image = 'blueprint.png' },
    },
    ['harness_blueprint'] = {
        label = 'Seletøj',
        weight = 20,
        stack = true,
        close = true
    },
    ['revolver_barrel'] = {
        label = 'Revolver Løb',
        weight = 400,
        stack = true,
        close = true
    },
    ['revolver_frame'] = {
        label = 'Revolver Stel',
        weight = 500,
        stack = true,
        close = true
    },
    ['revolver_cylinder'] = {
        label = 'Revolver Tromle',
        weight = 300,
        stack = true,
        close = true
    },
    ['weapons_assembly_kit'] = {
        label = 'Våben Samlesæt',
        weight = 300,
        stack = true,
        close = true,
        -- Billedet hedder weapon_ (ental), item'et weapons_ (flertal), så
        -- standard-opslaget ramte forbi og slottet stod tomt.
        client = { image = 'weapon_assembly_kit.png' },
    },
    ['deagle_barrel'] = {
        label = '.50 Løb',
        weight = 450,
        stack = true,
        close = true
    },
    ['deagle_frame'] = {
        label = '.50 Stel',
        weight = 550,
        stack = true,
        close = true
    },
    ['heavy_recoil_spring'] = {
        label = 'Tung Rekylfjeder',
        weight = 80,
        stack = true,
        close = true
    },
    ['navy_frame'] = {
        label = 'Navy Stel',
        weight = 500,
        stack = true,
        close = true
    },
    ['pistol_frame'] = {
        label = 'Pistol Stel',
        weight = 350,
        stack = true,
        close = true
    },
    ['trigger_kit'] = {
        label = 'Aftrækker-kit',
        weight = 80,
        stack = true,
        close = true
    },
    ['vintage_barrel'] = {
        label = 'Vintage Løb',
        weight = 250,
        stack = true,
        close = true
    },
    ['wooden_grip'] = {
        label = 'Trægreb',
        weight = 120,
        stack = true,
        close = true
    },
    ['gunpowder'] = {
        label = 'Krudt',
        weight = 5,
        stack = true,
        close = true
    },
    ['gunpowder_high'] = {
        label = 'Krudt (høj ladning)',
        weight = 6,
        stack = true,
        close = true
    },
    ['spare_parts_kit'] = {
        label = 'Reservedels-kit',
        weight = 300,
        stack = true,
        close = true
    },
    ['repair_alloy'] = {
        label = 'Reparationslegering',
        weight = 200,
        stack = true,
        close = true
    },
    ['micro_controller'] = {
        label = 'Mikrocontroller',
        weight = 50,
        stack = true,
        close = true
    },
    ['antenna_module'] = {
        label = 'Antenne-modul',
        weight = 50,
        stack = true,
        close = true
    },
    ['hacking_module'] = {
        label = 'Hacking-modul',
        weight = 50,
        stack = true,
        close = true
    },
    ['vault_toolkit'] = {
        label = 'Bankværktøj',
        weight = 400,
        stack = true,
        close = true
    },
    ['bandage_roll'] = {
        label = 'Bandage-rulle',
        weight = 50,
        stack = true,
        close = true
    },
    ['blank_plate'] = {
        label = 'Blank Nummerplade',
        weight = 200,
        stack = true,
        close = true
    },
    ['number_stamp_kit'] = {
        label = 'Nummerstempel-sæt',
        weight = 120,
        stack = true,
        close = true
    },
    ['v_res_fh_laundrybasket'] = {
        label = 'Vasketøjskurv',
        weight = 120,
        stack = true,
        close = true
    },
    ['washmachine'] = {
        label = 'Vaskemaskine',
        weight = 120,
        stack = true,
        close = true
    },
    ['v_res_fa_fan'] = {
        label = 'Blæser',
        weight = 120,
        stack = true,
        close = true
    },
    ['prop_aircon_s_04a'] = {
        label = 'Blæser',
        weight = 120,
        stack = true,
        close = true
    },
	["goldchain"] = {
		label = "Guldkæde",
		weight = 100,
		stack = true,
		close = true,
	},
	['greentint'] = {
		label = 'Grøn våbenfarve',
		weight = 100,
		stack = true,
		close = true,
		allowArmed = true,
		server = { tint = 1, export = 'MrNewbWeaponTints.setweapontint' },
	},
	['goldtint'] = {
		label = 'Guld våbenfarve',
		weight = 100,
		stack = true,
		close = true,
		allowArmed = true,
		server = { tint = 2, export = 'MrNewbWeaponTints.setweapontint' },
	},
	['pinktint'] = {
		label = 'Pink våbenfarve',
		weight = 100,
		stack = true,
		close = true,
		allowArmed = true,
		server = { tint = 3, export = 'MrNewbWeaponTints.setweapontint' },
	},
	['armytint'] = {
		label = 'Militær våbenfarve',
		weight = 100,
		stack = true,
		close = true,
		allowArmed = true,
		server = { tint = 4, export = 'MrNewbWeaponTints.setweapontint' },
	},
	['lspdtint'] = {
		label = 'LSPD våbenfarve',
		weight = 100,
		stack = true,
		close = true,
		allowArmed = true,
		server = { tint = 5, export = 'MrNewbWeaponTints.setweapontint' },
	},
	['orangetint'] = {
		label = 'Orange våbenfarve',
		weight = 100,
		stack = true,
		close = true,
		allowArmed = true,
		server = { tint = 6, export = 'MrNewbWeaponTints.setweapontint' },
	},
	['platinumtint'] = {
		label = 'Platin våbenfarve',
		weight = 100,
		stack = true,
		close = true,
		allowArmed = true,
		server = { tint = 7, export = 'MrNewbWeaponTints.setweapontint' },
	},
	['mission_papers'] = {
		label = 'Fortrolige Papirer',
		weight = 150,
		stack = false,
		close = true,
		description = 'Papirer til en bestemt modtager. Dukker de op hos politiet, er de bevismateriale.',
		client = {
			image = 'document.png',
		},
	},
	['mission_parcel'] = {
		label = 'Forseglet Pakke',
		weight = 2500,
		stack = false,
		close = true,
		description = 'En forseglet pakke til en bestemt modtager. Må ikke åbnes undervejs.',
		client = {
			image = 'suspicious_package.png',
		},
		itemProp = {
			dict = "anim@heists@box_carry@",
			anim = "idle",
			emoteLoop = true,
			emoteMoving = true,
			propName = "prop_cs_cardbox_01",
			propBone = 28422,
			placement = {0.0100, -0.0400, -0.2390, 20.0000007, 0.0, 0.0},
		},
	},
	['skrabelod_guldregn'] = {
		label = 'Skrabelod – Guldregn', weight = 10, stack = true, close = true, consume = 0,
		description = 'Et uskrabet skrabelod fra MS Betting. Brug det for at skrabe.',
		server = { export = 'erp_betting.useScratchCard' },
	},
	['skrabelod_guldregn_skrabet'] = {
		label = 'Skrabet lod – Guldregn', weight = 10, stack = false, close = true, consume = 0,
		description = 'Et skrabet lod fra MS Betting.',
		server = { export = 'erp_betting.useScratchedCard' },
	},
	['skrabelod_lykkebrevet'] = {
		label = 'Skrabelod – Lykkebrevet', weight = 10, stack = true, close = true, consume = 0,
		description = 'Et uskrabet skrabelod fra MS Betting. Brug det for at skrabe.',
		server = { export = 'erp_betting.useScratchCard' },
	},
	['skrabelod_lykkebrevet_skrabet'] = {
		label = 'Skrabet lod – Lykkebrevet', weight = 10, stack = false, close = true, consume = 0,
		description = 'Et skrabet lod fra MS Betting.',
		server = { export = 'erp_betting.useScratchedCard' },
	},
	['skrabelod_taljagten'] = {
		label = 'Skrabelod – Tal-Jagten', weight = 10, stack = true, close = true, consume = 0,
		description = 'Et uskrabet skrabelod fra MS Betting. Brug det for at skrabe.',
		server = { export = 'erp_betting.useScratchCard' },
	},
	['skrabelod_taljagten_skrabet'] = {
		label = 'Skrabet lod – Tal-Jagten', weight = 10, stack = false, close = true, consume = 0,
		description = 'Et skrabet lod fra MS Betting.',
		server = { export = 'erp_betting.useScratchedCard' },
	},
	['skrabelod_mega7'] = {
		label = "Skrabelod – Mega 7'ere", weight = 10, stack = true, close = true, consume = 0,
		description = 'Et uskrabet skrabelod fra MS Betting. Brug det for at skrabe.',
		server = { export = 'erp_betting.useScratchCard' },
	},
	['skrabelod_mega7_skrabet'] = {
		label = "Skrabet lod – Mega 7'ere", weight = 10, stack = false, close = true, consume = 0,
		description = 'Et skrabet lod fra MS Betting.',
		server = { export = 'erp_betting.useScratchedCard' },
	},
	['skrabelod_julemanden'] = {
		label = 'Skrabelod – Julemandens Jackpot', weight = 10, stack = true, close = true, consume = 0,
		description = 'Et uskrabet skrabelod fra MS Betting. Brug det for at skrabe.',
		server = { export = 'erp_betting.useScratchCard' },
	},
	['skrabelod_julemanden_skrabet'] = {
		label = 'Skrabet lod – Julemandens Jackpot', weight = 10, stack = false, close = true, consume = 0,
		description = 'Et skrabet lod fra MS Betting.',
		server = { export = 'erp_betting.useScratchedCard' },
	},
	['skrabelod_pakkeleg'] = {
		label = 'Skrabelod – Pakkeleg', weight = 10, stack = true, close = true, consume = 0,
		description = 'Et uskrabet skrabelod fra MS Betting. Brug det for at skrabe.',
		server = { export = 'erp_betting.useScratchCard' },
	},
	['skrabelod_pakkeleg_skrabet'] = {
		label = 'Skrabet lod – Pakkeleg', weight = 10, stack = false, close = true, consume = 0,
		description = 'Et skrabet lod fra MS Betting.',
		server = { export = 'erp_betting.useScratchedCard' },
	},
}
