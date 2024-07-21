local RSA = LibStub('AceAddon-3.0'):GetAddon('RSA')
local L = LibStub('AceLocale-3.0'):GetLocale('RSA')

local defaults = {
	['ancestralGuidance'] = {
		spellID = 108281,
		configDisplay = {
			isDefault = true,
			disabledChannels = {whisper = true},
		},
		events = {
			['SPELL_CAST_SUCCESS'] = {
				messages = {"[LINK] activated!",},
			},
			['SPELL_AURA_REMOVED'] = {
				messages = {"[LINK] finished!",},
			},
		},
	},
	['ancestralProtectionTotem'] = {
		spellID = 207399,
		configDisplay = {
			isDefault = true,
			disabledChannels = {whisper = true},
		},
		events = {
			['SPELL_CAST_SUCCESS'] = {
				messages = {"[LINK] placed!",},
			},
			-- TODO save GUID of SPELL_SUMMON, and match this to that.
			--['SPELL_CAST_SUCCESS'] = {
			--	messages = {"[LINK] resurrected [TARGET]!",},
			--},
			['UNIT_DIED'] = {
				messages = {"[LINK] finished!",},
			},
		},
	},
	['ancestralSpirit'] = {
		spellID = 2008,
		configDisplay = {
			isDefault = true,
		},
		events = {
			['SPELL_RESURRECT'] = {
				messages = {"Resurrected [TARGET]!",},
				tags = {TARGET = true,},
			},
			['SPELL_CAST_START'] = {
				messages = {"Casting [LINK] on [TARGET]!",},
				tags = {TARGET = true,},
			},
		},
	},
	['ancestralVision'] = {
		spellID = 212048,
		configDisplay = {
			isDefault = true,
			disabledChannels = {whisper = true},
		},
		events = {
			['SPELL_CAST_START'] = {
				messages = {'Casting [LINK]!',},
			},
			['SPELL_CAST_SUCCESS'] = {
				messages = {'[LINK] finished, get up!',},
			},
		},
	},
	['ascendence'] = {
		spellID = 114050, -- Elemental
		additionalSpellIDs = {
			[114051] = true, -- Enhancement
			[114052] = true, -- Restoration
		},
		configDisplay = {
			isDefault = true,
			disabledChannels = {whisper = true},
		},
		events = {
			['SPELL_CAST_SUCCESS'] = {
				messages = {"[LINK] activated!",},
			},
			['SPELL_AURA_REMOVED'] = {
				messages = {"[LINK] finished!",},
			},
		},
	},
	['astralShift'] = {
		spellID = 108271,
		configDisplay = {
			isDefault = true,
			disabledChannels = {whisper = true},
		},
		events = {
			['SPELL_CAST_SUCCESS'] = {
				messages = {"[LINK] activated!",},
			},
			['SPELL_AURA_REMOVED'] = {
				messages = {"[LINK] finished!",},
			},
		},
	},
	['bloodlust'] = {
		spellID = 2825, -- Bloodlust
		additionalSpellIDs = {
			[32182] = true, -- Heroism
		},
		configDisplay = {
			isDefault = true,
			disabledChannels = {whisper = true},
		},
		events = {
			['SPELL_CAST_SUCCESS'] = {
				messages = {"[LINK] activated!",},
			},
			['SPELL_AURA_REMOVED'] = {
				dest = {'player'},
				messages = {"[LINK] finished!",},
			},
		},
	},
	['capacitorTotem'] = {
		spellID = 192058,
		configDisplay = {
			isDefault = true,
			disabledChannels = {whisper = true},
		},
		events = {
			['SPELL_CAST_SUCCESS'] = {
				messages = {"[LINK] placed!",},
			},
			-- TODO save GUID of SPELL_SUMMON, and match this to that.
			--['SPELL_CAST_SUCCESS'] = {
			--	uniqueSpellID = 118905,
			--	messages = {"[LINK] activated!",},
			--},
			['SPELL_AURA_REMOVED'] = {
			--	uniqueSpellID = 118905,
				messages = {"[LINK] finished!",},
			},
		},
	},
	['cleanseSpirit'] = {
		spellID = 51886,
		throttle = 0.25,
		additionalSpellIDs = {
			[77130] = true, -- Purify Spirit
		},
		configDisplay = {
			isDefault = true,
			defaultName = RSA.GetSpellInfo(51886) .. ' | ' .. RSA.GetSpellInfo(77130),
		},
		events = {
			['SPELL_DISPEL'] = {
				messages = {"Cleansed [TARGET]'s [EXTRALINK]!",},
				tags = {
					TARGET = true,
					EXTRA = true,
				},
			},
		},
	},
	['cloudburstTotem'] = {
		spellID = 157153,
		throttle = 0.25,
		configDisplay = {
			isDefault = true,
			disabledChannels = {whisper = true},
		},
		events = {
			['SPELL_CAST_SUCCESS'] = {
				messages = {"[LINK] placed!",},
			},
			-- TODO save GUID of SPELL_SUMMON, and match this to that.
			--['SPELL_CAST_SUCCESS'] = {
			--	uniqueSpellID = 201764,
			--	messages = {"[LINK] activated!",},
			--},
			['SPELL_HEAL'] = {
				uniqueSpellID = 157503,
				messages = {"[LINK] healed for [AMOUNT]!",},
				tags = {AMOUNT = true,},
			},
		},
	},
	['counterstrikeTotem'] = {
		spellID = 204331,
		configDisplay = {
			isDefault = true,
			disabledChannels = {whisper = true},
		},
		events = {
			['SPELL_CAST_SUCCESS'] = {
				messages = {"[LINK] placed!",},
			},
			['SPELL_AURA_REMOVED'] = {
				messages = {"[LINK] finished!",},
			},
		},
	},
	['earthbindTotem'] = {
		spellID = 2484,
		configDisplay = {
			isDefault = true,
			disabledChannels = {whisper = true},
		},
		events = {
			['SPELL_CAST_SUCCESS'] = {
				messages = {"[LINK] placed!",},
			},
			-- TODO save GUID of SPELL_SUMMON, and match this to that.
			['UNIT_DIED'] = {
				messages = {"[LINK] finished!",},
			},
		},
	},
	['earthElemental'] = {
		spellID = 198103,
		configDisplay = {
			isDefault = true,
			disabledChannels = {whisper = true},
		},
		events = {
			['SPELL_CAST_SUCCESS'] = {
				messages = {"[LINK] activated!",},
			},
			['SPELL_AURA_REMOVED'] = {
				messages = {"[LINK] finished!",},
			},
		},
	},
	['earthenWallTotem'] = {
		spellID = 198838,
		configDisplay = {
			isDefault = true,
			disabledChannels = {whisper = true},
		},
		events = {
			['SPELL_CAST_SUCCESS'] = {
				messages = {"[LINK] placed!",},
			},
			-- TODO save GUID of SPELL_SUMMON, and match this to that.
			['UNIT_DIED'] = {
				messages = {"[LINK] finished!",},
			},
		},
	},
	['feralSpirit'] = {
		spellID = 51533,
		configDisplay = {
			isDefault = true,
			disabledChannels = {whisper = true},
		},
		events = {
			['SPELL_CAST_SUCCESS'] = {
				messages = {"[LINK] activated!",},
			},
			['SPELL_AURA_REMOVED'] = {
				messages = {"[LINK] finished!",},
			},
		},
	},
	['fireElemental'] = {
		spellID = 198067,
		additionalSpellIDs = {
			[118291] = true,
			[188592] = true,
		},
		configDisplay = {
			isDefault = true,
			disabledChannels = {whisper = true},
		},
		events = {
			['SPELL_CAST_SUCCESS'] = {
				messages = {"[LINK] activated!",},
			},
			['SPELL_AURA_REMOVED'] = {
				messages = {"[LINK] finished!",},
			},
		},
	},
	['earthGrabTotem'] = {
		spellID = 51485,
		configDisplay = {
			isDefault = true,
			disabledChannels = {whisper = true},
		},
		events = {
			['SPELL_CAST_SUCCESS'] = {
				messages = {"[LINK] placed!",},
			},
			['SPELL_AURA_REMOVED'] = {
				messages = {"[LINK] finished!",},
			},
		},
	},
	['groundingTotem'] = {
		spellID = 204336,
		configDisplay = {
			isDefault = true,
			disabledChannels = {whisper = true},
		},
		events = {
			['SPELL_CAST_SUCCESS'] = {
				messages = {"[LINK] placed!",},
			},
			['SPELL_AURA_REMOVED'] = {
				messages = {"[LINK] finished!",},
			},
		},
	},
	['healingTideTotem'] = {
		spellID = 108280,
		configDisplay = {
			isDefault = true,
			disabledChannels = {whisper = true},
		},
		events = {
			['SPELL_CAST_SUCCESS'] = {
				messages = {"[LINK] placed!",},
			},
			['SPELL_AURA_REMOVED'] = {
				messages = {"[LINK] finished!",},
			},
		},
	},
	['hex'] = {
		spellID = 51514, -- Frog (Default)
		additionalSpellIDs = {
			[211004] = true, -- Spider
			[210873] = true, -- Compy
			[211010] = true, -- Snake
			[211015] = true, -- Cockroach
			[277784] = true, -- Wicker Mongrel
			[309328] = true, -- Living Honey
			[277778] = true, -- Zandalari Tendonripper
			[269352] = true, -- Skeletal Hatchling
		},
		configDisplay = {
			isDefault = true,
			disabledChannels = {whisper = true},
		},
		events = {
			['SPELL_AURA_APPLIED'] = {
				messages = {"[LINK] cast on [TARGET]!",},
				tags = {TARGET = true,},
			},
			['SPELL_AURA_REMOVED'] = {
				messages = {"[LINK] on [TARGET] finished!",},
				tags = {TARGET = true,},
			},
			['SPELL_AURA_BROKEN_SPELL'] = {
				messages = {"[SOURCE] removed [LINK] on [TARGET] with [EXTRALINK]!",},
				tags = {
					TARGET = true,
					SOURCE = true,
					EXTRA = true,
				},
			},
			['SPELL_MISSED'] = {
				messages = {"[LINK] [MISSTYPE] [TARGET]!",},
				tags = {
					TARGET = true,
					MISSTYPE = true,
				},
			},
			['RSA_SPELL_IMMUNE'] = {
				messages = {"[TARGET] [MISSTYPE] [LINK]!"},
				tags = {
					TARGET = true,
					MISSTYPE = true,
				},
			},
		},
	},
	['poisonCleansingTotem'] = {
		spellID = 383013,
		configDisplay = {
			isDefault = true,
			disabledChannels = {whisper = true},
		},
		events = {
			['SPELL_CAST_SUCCESS'] = {
				messages = {"[LINK] placed!",},
			},
			['SPELL_AURA_REMOVED'] = {
				messages = {"[LINK] finished!",},
			},
			['SPELL_DISPEL'] = {
				messages = {"Cleansed [TARGET]'s [EXTRALINK]!",},
				tags = {
					TARGET = true,
					EXTRA = true,
				},
			},
		},
	},
	['purge'] = {
		spellID = 370,
		throttle = 0.25,
		configDisplay = {
			isDefault = true,
			disabledChannels = {whisper = true},
		},
		events = {
			['SPELL_DISPEL'] = {
				messages = {"Dispelled [TARGET]'s [EXTRALINK]!",},
				tags = {
					TARGET = true,
					EXTRA = true,
				},
			},
			['SPELL_DISPEL_FAILED'] = {
				messages = {"[TARGET] [MISSTYPE] [LINK]!"},
				tags = {
					TARGET = true,
					MISSTYPE = true,
				},
			},
		},
	},
	['reincarnation'] = {
		spellID = 21169,
		configDisplay = {
			isDefault = true,
			disabledChannels = {whisper = true},
		},
		events = {
			['SPELL_CAST_SUCCESS'] = {
				messages = {"Resurrected myself with [LINK]!",},
			},
		},
	},
	['spiritLinkTotem'] = {
		spellID = 98008,
		configDisplay = {
			isDefault = true,
			disabledChannels = {whisper = true},
		},
		events = {
			['SPELL_CAST_SUCCESS'] = {
				messages = {"[LINK] placed!",},
			},
			['SPELL_AURA_REMOVED'] = {
				messages = {"[LINK] finished!",},
			},
		},
	},
	['stoneBulwarkTotem'] = {
		spellID = 108270,
		configDisplay = {
			isDefault = true,
			disabledChannels = {whisper = true},
		},
		events = {
			['SPELL_CAST_SUCCESS'] = {
				messages = {"[LINK] placed!",},
			},
			['SPELL_AURA_REMOVED'] = {
				messages = {"[LINK] finished!",},
			},
		},
	},
	['surgingTotem'] = {
		spellID = 444995,
		configDisplay = {
			isDefault = true,
			disabledChannels = {whisper = true},
		},
		events = {
			['SPELL_CAST_SUCCESS'] = {
				messages = {"[LINK] placed!",},
			},
			['SPELL_AURA_REMOVED'] = {
				messages = {"[LINK] finished!",},
			},
		},
	},
	['thunderstorm'] = {
		spellID = 51490,
		configDisplay = {
			isDefault = true,
			disabledChannels = {whisper = true},
		},
		events = {
			['SPELL_CAST_SUCCESS'] = {
				messages = {"[LINK] activated!",},
			},
		},
	},
	['tremorTotem'] = {
		spellID = 8143,
		configDisplay = {
			isDefault = true,
			disabledChannels = {whisper = true},
		},
		events = {
			['SPELL_CAST_SUCCESS'] = {
				messages = {"[LINK] placed!",},
			},
			['SPELL_AURA_REMOVED'] = {
				messages = {"[LINK] finished!",},
			},
		},
	},
	['windRushTotem'] = {
		spellID = 192077,
		configDisplay = {
			isDefault = true,
			disabledChannels = {whisper = true},
		},
		events = {
			['SPELL_CAST_SUCCESS'] = {
				messages = {"[LINK] placed!",},
			},
			['SPELL_AURA_REMOVED'] = {
				messages = {"[LINK] finished!",},
			},
		},
	},
	['windShear'] = {
		spellID = 57994,
		configDisplay = {
			isDefault = true,
			disabledChannels = {whisper = true},
		},
		events = {
			['SPELL_INTERRUPT'] = {
				messages = {"Interrupted [TARGET]'s [EXTRALINK]!",},
				tags = {
					TARGET = true,
					EXTRA = true, -- Replaces AURA and TARSPELL.
				},
			},
			['SPELL_MISSED'] = {
				messages = {"[LINK] [MISSTYPE] [TARGET]!",},
				tags = {
					TARGET = true,
					MISSTYPE = true,
				},
			},
			['RSA_SPELL_IMMUNE'] = { -- Fake event to easily generate options for immune specific messages.
				messages = {"[TARGET] [MISSTYPE] [LINK]!"},
				tags = {
					TARGET = true,
					MISSTYPE = true,
				},
			},
		},
	},
}

RSA.monitorData.shaman, RSA.configData.shaman = RSA.PrepareDataTables(defaults)
