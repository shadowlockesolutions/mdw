Config = Config or {}

Config.OnlyShowOnDuty = true

-- RECOMMENDED Fivemerr Images. DOES NOT EXPIRE. 
-- YOU NEED TO SET THIS UP FOLLOW INSTRUCTIONS BELOW.
-- Documents: https://docs.fivemerr.com/integrations/mdt-scripts/ps-mdt
Config.FivemerrMugShot = true

-- Discord webhook for images. NOT RECOMMENDED, IMAGES EXPIRE.
Config.MugShotWebhook = false
Config.UseCQCMugshot = true

-- Front, Back Side. Use 4 for both sides, we recommend leaving at 1 for default.
Config.MugPhotos = 1

-- If set to true = Fine gets automatically removed from bank automatically charging the player.
-- If set to false = The fine gets sent as an Invoice to their phone and it us to the player to pay for it, can remain unpaid and ignored.
Config.BillVariation = true

-- If set to false (default) = The fine amount is just being removed from the player's bank account
-- If set to true = The fine amount is beeing added to the society account after being removed from the player's bank account
Config.QBBankingUse = false

-- Set up your inventory to automatically retrieve images when a weapon is registered at a weapon shop or self-registered.
-- If you're utilizing lj-inventory's latest version from GitHub, no further modifications are necessary. 
-- However, if you're using a different inventory system, please refer to the "Inventory Edit | Automatic Add Weapons with images" section in ps-mdt's README.
Config.InventoryForWeaponsImages = "lj-inventory"

-- Only compatible with ox_inventory
Config.RegisterWeaponsAutomatically = true

-- Set to true to register all weapons that are added via AddItem in ox_inventory
Config.RegisterCreatedWeapons = true

-- "LegacyFuel", "lj-fuel", "ps-fuel"
Config.Fuel = "ps-fuel"

-- Google Docs Link
Config.sopLink = {
    ['police'] = '',
    ['ambulance'] = '',
    ['bcso'] = '',
    ['doj'] = '',
    ['sast'] = '',
    ['sasp'] = '',
    ['doc'] = '',
    ['lssd'] = '',
    ['sapr'] = '',
}

-- Google Docs Link
Config.RosterLink = {
    ['police'] = '',
    ['ambulance'] = '',
    ['bcso'] = '',
    ['doj'] = '',
    ['sast'] = '',
    ['sasp'] = '',
    ['doc'] = '',
    ['lssd'] = '',
    ['sapr'] = '',	
}

Config.PoliceJobs = {
    ['police'] = true,
    ['lspd'] = true,
    ['bcso'] = true,
    ['sast'] = true,
    ['sasp'] = true,
    ['doc'] = true,
    ['lssd'] = true,
    ['sapr'] = true,
    ['pa'] = true
}

Config.AmbulanceJobs = {
    ['ambulance'] = true,
    ['doctor'] = true
}

Config.DojJobs = {
    ['lawyer'] = true,
    ['judge'] = true
}

-- This is a workaround solution because the qb-menu present in qb-policejob fills in an impound location and sends it to the event. 
-- If the impound locations are modified in qb-policejob, the changes must also be implemented here to ensure consistency.

Config.ImpoundLocations = {
    [1] = vector4(436.68, -1007.42, 27.32, 180.0),
    [2] = vector4(-436.14, 5982.63, 31.34, 136.0),
}

-- Support for Wraith ARS 2X. 

Config.UseWolfknightRadar = false
Config.WolfknightNotifyTime = 5000 -- How long the notification displays for in milliseconds (30000 = 30 seconds)
Config.PlateScanForDriversLicense = false -- If true, plate scanner will check if the owner of the scanned vehicle has a drivers license

-- IMPORTANT: To avoid making excessive database queries, modify this config to true 'CONFIG.use_sonorancad = true' setting in the configuration file located at 'wk_wars2x/config.lua'. 
-- Enabling this setting will limit plate checks to only those vehicles that have been used by a player.

Config.LogPerms = {
	['ambulance'] = {
		[4] = true,
	},
	['police'] = {
		[4] = true,
	},
    ['bcso'] = {
		[4] = true,
	},
    ['sast'] = {
		[4] = true,
	},
    ['sasp'] = {
		[4] = true,
	},
    ['sapr'] = {
		[4] = true,
	},
    ['doc'] = {
		[4] = true,
	},
    ['lssd'] = {
		[4] = true,
	},
}

Config.RemoveIncidentPerms = {
	['ambulance'] = {
		[4] = true,
	},
	['police'] = {
		[4] = true,
	},
    ['bcso'] = {
		[4] = true,
	},
    ['sast'] = {
		[4] = true,
	},
    ['sasp'] = {
		[4] = true,
	},
    ['sapr'] = {
		[4] = true,
	},
    ['doc'] = {
		[4] = true,
	},
    ['lssd'] = {
		[4] = true,
	},
}

Config.RemoveReportPerms = {
	['ambulance'] = {
		[4] = true,
	},
	['police'] = {
		[4] = true,
	},
    ['bcso'] = {
		[4] = true,
	},
    ['sast'] = {
		[4] = true,
	},
    ['sasp'] = {
		[4] = true,
	},
    ['sapr'] = {
		[4] = true,
	},
    ['doc'] = {
		[4] = true,
	},
    ['lssd'] = {
		[4] = true,
	},
}

Config.RemoveWeaponsPerms = {
	['ambulance'] = {
		[4] = true,
	},
	['police'] = {
		[4] = true,
	},
    ['bcso'] = {
		[4] = true,
	},
    ['sast'] = {
		[4] = true,
	},
    ['sasp'] = {
		[4] = true,
	},
    ['sapr'] = {
		[4] = true,
	},
    ['doc'] = {
		[4] = true,
	},
    ['lssd'] = {
		[4] = true,
	},
}

Config.PenalCodeTitles = {
    [1] = 'OFFENSES AGAINST PERSONS',
    [2] = 'OFFENSES INVOLVING THEFT',
    [3] = 'OFFENSES INVOLVING FRAUD',
    [4] = 'OFFENSES INVOLVING DAMAGE TO PROPERTY',
    [5] = 'OFFENSES AGAINST PUBLIC ADMINISTRATION',
    [6] = 'OFFENSES AGAINST PUBLIC ORDER',
    [7] = 'OFFENSES AGAINST HEALTH AND MORALS',
    [8] = 'OFFENSES AGAINST PUBLIC SAFETY',
    [9] = 'OFFENSES INVOLVING THE OPERATION OF A VEHICLE',
    [10] = 'OFFENSES INVOLVING THE WELL-BEING OF WILDLIFE',
}

Config.PenalCode = {
    [1] = {
        [1] = {title = 'Assault 3rd Simple Assault', class = 'Misdemeanor', id = '13A-6-21', months = 12, fine = 600, color = 'orange', description = 'w/ intent to cause physical injury to another, any persons.'},
        [2] = {title = 'Unlawful Imprisonment', class = 'Misdemeanor', id = '13A-6-41', months = 10, fine = 600, color = 'orange', description = 'Person restrains another person under circumstances which expose the latter to a risk of serious physical injury.'},
        [3] = {title = 'Reckless Endangerment', class = 'Misdemeanor', id = '13A-6-24', months = 10, fine = 1000, color = 'orange', description = 'Person recklessly engages in conduct which creates a substantial risk of serious physical injury to another person.'},
        [4] = {title = 'Aggravated Assault 1st', class = 'Felony', id = '13A-6-20', months = 20, fine = 3000, color = 'red', description = 'Person recklessly engages in conduct which creates a grave risk of death to another person'},
        [5] = {title = 'Assault 2nd', class = 'Felony', id = '13A-6-21', months = 18, fine = 1200, color = 'red', description = 'Person recklessly causes serious injury to another persons w/ deadly weapon or dangerous instrument.'},
        [6] = {title = 'Assault with a Deadly Weapon', class = 'Felony', id = '13A-6-20', months = 30, fine = 3750, color = 'red', description = 'Person recklessly causes serious injury to another with a deadly weapon.'},
        [7] = {title = 'Involuntary Manslaughter', class = 'Felony', id = '13A-6-3', months = 60, fine = 7500, color = 'red', description = 'It criminalizes lawful as well as unlawful acts that are carried out in a negligent or reckless manner.'},
        [8] = {title = 'Vehicular Manslaughter', class = 'Felony', id = '13A-6-2', months = 60, fine = 8000, color = 'red', description = 'Depending on circumstances a fatal accident could constitute vehicular manslaughter'},
        [9] = {title = 'Attempted Murder of a Civilian', class = 'Felony', id = '13A-6-2', months = 50, fine = 7500, color = 'red', description = 'A person attempts to cause the death of another person.'},
        [10] = {title = 'Second Degree Murder', class = 'Felony', id = '13A-6-2', months = 100, fine = 15000, color = 'red', description = 'Person causes the death of that person or of another person.'},
        [11] = {title = 'Accessory to Second Degree Murder', class = 'Felony', id = '13A-6-2', months = 50, fine = 5000, color = 'red', description = 'Person who assists a principal offender before or after the murder'},
        [12] = {title = 'First Degree Murder', class = 'Felony', id = '13A-6-2', months = 100, fine = 15000, color = 'red', description = 'Person causes the death of that person or of another person.'},
        [13] = {title = 'Accessory to First Degree Murder', class = 'Felony', id = 'P.C. 1011', months = 75, fine = 6500, color = 'red', description = 'Person who assist a principal offender before of after the murder.'},
        [14] = {title = 'Murder of a Public Servant or Peace Officer', class = 'Felony', id = '13A-5-40', months = 100, fine = 20000, color = 'red', description = 'The Murder of any police officer, sheriff, deputy,EMS fire, state trooper, federal law enforcement officer.'},
        [15] = {title = 'Attempted Murder of a Public Servant or Peace Officer', class = 'Felony', id = '13A-5-40', months = 65, fine = 10000, color = 'red', description = 'Attempting to Murder any public servent state or federal'},
        [16] = {title = 'Accessory to the Murder of a Public Servant or Peace Officer', class = 'Felony', id = '13A-5-40', months = 50, fine = 9000, color = 'red', description = 'Anyone that assist or plans the murder of any state or federal servant.'},
        [17] = {title = 'Kidnapping', class = 'Felony', id = '13A-6-43', months = 15, fine = 1000, color = 'red', description = 'Person abducts another person with intent to inflict physical injury or hold ransom'},
        [18] = {title = 'Accessory to Kidnapping', class = 'Felony', id = '13A-6-4', months = 7, fine = 500, color = 'red', description = 'Person assist with any form of helping a person be held ransom'},
        [19] = {title = 'Attempted Kidnapping', class = 'Felony', id = '13A-6-43', months = 10, fine = 700, color = 'red', description = 'Person attempts to abducts another person with intent to hold ransom or inflict physical injury'},
        [20] = {title = 'Hostage Taking', class = 'Felony', id = '13A-6-43', months = 15, fine = 1200, color = 'red', description = 'Person abducts another person with intent to use as a shield or hold ransom'},
        [21] = {title = 'Accessory to Hostage Taking', class = 'Felony', id = '13A-6-43', months = 10, fine = 800, color = 'red', description = 'Person assist in helping take a subject hostage'},
        [22] = {title = 'Unlawful Imprisonment of a Public Servant or Peace Officer', class = 'Felony', id = '13A-6-21', months = 25, fine = 4000, color = 'red', description = 'With intent to prevent a peace officer from performing a lawful duty by physical injury'},
        [23] = {title = 'Criminal Threats', class = 'Felony', id = '13A-10-15', months = 5, fine = 500, color = 'red', description = 'The person intentionally and knowingly makes a statement verbally, in writing, or by means to harm a person'},
        [24] = {title = 'Cannibalism', class = 'Felony', id = '18-5003', months = 15, fine = 8000, color = 'red', description = 'Any person who wilfully ingests the flesh or blood of a human being is guilty of cannibalism.'},
        [25] = {title = 'Torture', class = 'Felony', id = '26-15-3', months = 40, fine = 4500, color = 'red', description = 'Torture, willful abuse'},
        [26] = {title = 'Gang Related Shooting', class = 'Felony', id = '13A-6-26', months = 30, fine = 3000, color = 'red', description = 'The crime of forming a gang and engaging reckless acts with weapons'},
    },
    [2] = {
        [1] = {title = 'Burglary All Degrees', class = 'Misdemeanor', id = '13A-7-5', months = 10, fine = 1000, color = 'orange', description = 'Person if knowlingly and unlawfully enters a premises with intent to commit a crime.'},
        [2] = {title = 'Leaving Without Paying', class = 'Misdemeanor', id = '13A-8-10', months = 2, fine = 500, color = 'orange', description = 'Person intentionally obtains services known by another to be available only for compensation by deception.'},
        [3] = {title = 'Theft of Property 2nd', class = 'Felony', id = '13A-8-4', months = 8, fine = 800, color = 'red', description = 'The theft of property between $500 but not exceeding $2500'},
        [4] = {title = 'Theft of Property 1st', class = 'Felony', id = '13A-8-3', months = 10, fine = 1000, color = 'red', description = 'Any property exceeding $2500, Including motor vehicles and aircrafts'},
        [5] = {title = 'Robbery 2nd', class = 'Felony', id = '13A-8-42', months = 25, fine = 2000, color = 'red', description = 'Uses force against the person of the owner or any person present with intent to overcome his physical resistance or physical power of resistance'},
        [6] = {title = 'Attempted Robbery', class = 'Felony', id = '13A-8-4', months = 20, fine = 1800, color = 'red', description = 'Acting with the intent to commit the crime'},
        [7] = {title = 'Possession of Nonlegal Currency', class = 'Felony', id = '13A-9-6', months = 10, fine = 750, color = 'red', description = 'Marked money AKA Dirty Money'},
        [8] = {title = 'Possession of Government-Issued Items', class = 'Felony', id = '41-16-123', months = 15, fine = 1400, color = 'red', description = 'Any item taken or illegally obtained thats goverment issued'},
        [9] = {title = 'Robbery 1st Degree', class = 'Felony', id = '13A-8-41', months = 30, fine = 3000, color = 'red', description = 'Is armed with a deadly weapon or dangerous instrument or causes serious physical injury during the act'},
        [10] = {title = 'Attempted Armed Robbery', class = 'Felony', id = '13A-8-41', months = 25, fine = 1500, color = 'red', description = 'Acting with the intent to commit the crime armed with deadly weapon.'},
    },
    [3] = {
        [1] = {title = 'Criminal Impersonation', class = 'Misdemeanor', id = '13A-9-18', months = 10, fine = 1250, color = 'orange', description = 'Assumes a false identity and does an act in his assumed character with intent to gain an economic benefit for himself or another'},
        [2] = {title = 'Possession of Stolen Identification', class = 'Misdemeanor', id = '13A-8-192', months = 10, fine = 1000, color = 'orange', description = 'Without the authorization, consent, or permission of the victim.'},
        [3] = {title = 'Possession of Stolen Government Identification', class = 'Misdemeanor', id = '13A-8-192.1', months = 20, fine = 2000, color = 'orange', description = 'Without the authorization, consent, or permission of the victim and uses to act as a Goverment official.'},
        [4] = {title = 'Impersonating a Peace Officer', class = 'Felony', id = '13A-10-11', months = 25, fine = 2750, color = 'red', description = 'Person falsely pretends to be a peace officer and does any act in that capacity'},
        [5] = {title = 'Impersonating a Judge or public servant', class = 'Felony', id = '13A-10-10', months = 25, fine = 2750, color = 'red', description = 'Person falsely pretends to be a public servant / or Judge and does any act in that capacity'},
        [6] = {title = 'Extortion', class = 'Felony', id = '13A-8-13', months = 20, fine = 2000, color = 'red', description = 'Knowingly obtains by threat control over the property of another, with intent to deprive persons of the property'},
        [7] = {title = 'Theft of Services', class = 'Felony', id = '13A-8-10', months = 10, fine = 500, color = 'red', description = 'Fraudulent advertising of services for personal gain'},
        [8] = {title = 'Forgery', class = 'Felony', id = '13A-9-2', months = 15, fine = 1500, color = 'red', description = 'Alters a written instrument which is or purports to be, or which is calculated to become or to represent if completed'},
        [9] = {title = 'Money Laundering', class = 'Felony', id = '18-US-1956', months = 15, fine = 1800, color = 'red', description = 'To avoid a transaction reporting requirement under State or Federal law.'},
    },
    [4] = {
        [1] = {title = 'Trespassing', class = 'Misdemeanor', id = '13A-7-4', months = 10, fine = 800, color = 'orange', description = 'A person is guilty when he knowingly enters or remains unlawfully in or upon a premises.'},
        [2] = {title = 'Criminal Littering', class = 'Misdemeanor', id = '13A-7-29', months = 2, fine = 200, color = 'orange', description = 'Throws, drops, or permits to be thrown or dropped any litter upon or alongside any highway, road, street, or public right-of-way and does not immediately remove the same or cause it to be removed'},
        [3] = {title = 'Felony Trespassing', class = 'Felony', id = '13A-7-2', months = 20, fine = 2500, color = 'red', description = 'Tresspassing Federal or State buildings, Municipalities buildings, critical Infrastructures- Towers ETC.'},
        [4] = {title = 'Arson', class = 'Felony', id = '13A-7-42', months = 15, fine = 1500, color = 'red', description = 'Person intentionally damages a building by starting or maintaining a fire or causing an explosion.'},
        [5] = {title = 'Criminal Mischief 1st', class = 'Felony', id = '13A-7-21', months = 10, fine = 1000, color = 'red', description = 'Intent to damage property, and having no right to do so, person inflicts damages to property $1500 or more'},
        [6] = {title = 'Damage of Government Property', class = 'Felony', id = '13A-7-21.2', months = 20, fine = 1500, color = 'red', description = 'Person who causes any damage to any Goverment Vehicle or Goverment facility State,Local or Federal'},
    },
    [5] = {
        [1] = {title = 'Interference with 911 Call', class = 'Misdemeanor', id = '13A-10-16', months = 5, fine = 600, color = 'orange', description = 'Knowingly and intentionally interferes with the transmission or reception of 911 calls or misuse of 911 Telephone'},
        [2] = {title = 'Resisting Arrest', class = 'Misdemeanor', id = '13A-10-41', months = 5, fine = 500, color = 'orange', description = 'If person intentionally prevents or attempts to prevent a peace officer from affecting a lawful arrest of himself or of another person'},
        [3] = {title = 'Escape in the 3rd', class = 'Misdemeanor', id = '13A-10-31', months = 12, fine = 1800, color = 'orange', description = 'A person commits the offense of escape in the third degree if he/she escapes or attempts to escape from custody'},
        [4] = {title = 'Failure to Appear', class = 'Misdemeanor', id = '45-36-232.29', months = 3, fine = 300, color = 'orange', description = 'Willfully fails to appear before any court or judicial officer as required'},
        [5] = {title = 'Contempt of Court', class = 'Misdemeanor', id = '6-5-156.4', months = 3, fine = 300, color = 'orange', description = 'A violation of any court order issued pursuant to this division is punishable as a contempt of court'},
        [6] = {title = 'Bribery of a Public Servant', class = 'Felony', id = '13A-10-61', months = 20, fine = 3500, color = 'red', description = 'Offers, confers any thing of value upon a public servant with the intent that the public servant be corruptly influenced'},
        [7] = {title = 'Promoting Prison Contraband', class = 'Felony', id = '13A-10-37', months = 25, fine = 1000, color = 'red', description = 'Person intentionally and unlawfully introduces within a detention facility,any narcotic, dangerous drug or controlled substance'},
        [8] = {title = 'Recieving Stolen Property 1st', class = 'Felony', id = '13A-8-17', months = 10, fine = 1200, color = 'red', description = 'Receiving stolen property which exceeds two thousand five hundred dollars'},
        [9] = {title = 'Escape in the 1st', class = 'Felony', id = '13A-10-31', months = 30, fine = 2500, color = 'red', description = 'Having been convicted of a felony, he escapes or attempts to escape from custody with force imposed pursuant to that conviction'},
        [10] = {title = 'Perjury 1st', class = 'Felony', id = '13A-10-101', months = 10, fine = 1200, color = 'red', description = 'When in any official proceeding he swears falsely and his false statement is material to the proceeding in which it is made.'},
        [11] = {title = 'Violation of a Restraining Order', class = 'Felony', id = '13A-6-143', months = 15, fine = 1800, color = 'red', description = 'Violates any rules from a protection order signed off on by a Judge.'},
        [12] = {title = 'Embezzlement', class = 'Felony', id = '34-13-7', months = 45, fine = 10000, color = 'red', description = 'it is illegal for any person to embezzle any funds or money from a companys board'},
        [13] = {title = 'Conspiracy', class = 'Felony', id = '13A-4-3', months = 10, fine = 1000, color = 'red', description = 'Person shall be deemed to have agreed with such other person, whether or not he knows the others identity'},
    },
    [6] = {
        [1] = {title = 'Disorderly Conduct', class = 'Infraction', id = '13A-11-7', months = 3, fine = 500, color = 'green', description = 'With intent to cause public inconvenience, annoyance or alarm, or recklessly creating a risk thereof'},
        [2] = {title = 'Disobeying a Peace Officer -', class = 'Infraction', id = '32-5A-4', months = 0, fine = 1000, color = 'green', description = ''},
        [3] = {title = 'Loitering on Goverment Properties -', class = 'Infraction', id = '13A-11-', months = 0, fine = 500, color = 'green', description = ''},
        [4] = {title = 'Filing False Report', class = 'Misdemeanor', id = '13A-10-9', months = 10, fine = 1000, color = 'orange', description = 'Person knowingly makes a false report or causes the transmission of a false report to law enforcement authorities of a crime or relating to a crime'},
        [5] = {title = 'Harassment', class = 'Misdemeanor', id = '13A-11-8', months = 10, fine = 500, color = 'orange', description = 'With intent to harass, annoy, or alarm another person.'},
        [6] = {title = 'Tampering with Physical Evidence', class = 'Misdemeanor', id = '13A-10-129', months = 10, fine = 1000, color = 'orange', description = 'Destroys, mutilates, conceals, removes or alters physical evidence with intent to impair its use, verity or availability in the pending or prospective official proceeding;'},
        [7] = {title = 'Failure to Identify', class = 'Misdemeanor', id = '15-5-30', months = 15, fine = 1500, color = 'orange', description = 'Fails to give identification after a lawful order from a Duty Sworn Officer after he has reasonable suspecion that you commited and infraction or Crime'},
        [8] = {title = 'Aiding and Abetting', class = 'Misdemeanor', id = '32-8-11', months = 15, fine = 800, color = 'orange', description = 'Comprehends all assistance rendered by acts or words of encouragement, support or presence, actual or constructive, to render assistance should it become necessary'},
        [9] = {title = 'Obstructing Government Operations', class = 'Misdemeanor', id = '13A-10-2', months = 10, fine = 1000, color = 'orange', description = 'By means of intimidation, physical force or interference or by any other independently unlawful act or prevents a public servant from performing duties.'},
        [10] = {title = 'Obstruction of Justice', class = 'Felony', id = '13A-8-194', months = 10, fine = 800, color = 'red', description = 'Person uses identification documents or identifying information of another person or a fictitious person to avoid summons, arrest, prosecution'},
        [11] = {title = 'Inciting a Riot', class = 'Felony', id = '13A-11-4', months = 25, fine = 2000, color = 'red', description = 'Commands, solicits, incites or urges another person to engage in tumultuous and violent conduct of a kind likely to cause or create a grave risk of public terror or alarm'},
        [12] = {title = 'Government Corruption', class = 'Felony', id = '13A-10-61', months = 10, fine = 1500, color = 'red', description = 'Agreement or understanding that his vote, opinion, judgment, exercise of discretion or other action as a public servant will thereby be corruptly influenced'},
        [13] = {title = 'Stalking', class = 'Felony', id = '13A-6-90', months = 40, fine = 3500, color = 'red', description = 'Intentionally and repeatedly follows or harasses another person and makes a threat'},
    },
    [7] = {
        [1] = {title = 'Unlawful Possession of Drug Paraphernelia', class = 'Misdemeanor', id = '13A-12-260', months = 10, fine = 1000, color = 'orange', description = 'Any equipment that is used to produce, conceal, and consume illegal Narcotics'},
        [2] = {title = 'Public Intoxication', class = 'Misdemeanor', id = '13A-11-10', months = 5, fine = 500, color = 'orange', description = 'If persons in a public place under the influence of alcohol, narcotics or other drug to the degree that he endangers himself or another person or property'},
        [3] = {title = 'Indecent Exposure', class = 'Misdemeanor', id = 'P.C. 7037', months = 10, fine = 750, color = 'orange', description = 'Person exposes his or her genitals under circumstances in which he or she knows the conduct is likely to cause affront or alarm.'},
        [4] = {title = 'Possession with Intent to Distribute / Trafficking', class = 'Felony', id = '13A-12-211', months = 35, fine = 4500, color = 'red', description = 'More than eight grams, but less than 28 grams of any listed controlled Substance or with intent to sale'},
        [5] = {title = 'Unlawful Possession of Controlled Substance', class = 'Felony', id = '13A-12-212', months = 20, fine = 3000, color = 'red', description = 'Person possesses a controlled substance enumerated in Schedules 1 through 5 Narcotic, Including Meth, Cocaine etc.'},
        [6] = {title = 'Unlawful Possession of Marijuana 1st', class = 'Felony', id = '13A-12-213', months = 15, fine = 2000, color = 'red', description = 'If the amount exceeds for other than personal use'},
    },
    [8] = {
        [1] = {title = 'Jaywalking', class = 'Infraction', id = '32-5A-212', months = 0, fine = 200, color = 'green', description = 'No pedestrian shall cross a roadway intersection diagonally unless authorized by official traffic-control devices'},
        [2] = {title = 'Criminal Use of Weapon', class = 'Misdemeanor', id = '3A-11-72.3', months = 10, fine = 1000, color = 'orange', description = 'Any act of using a weapon to commit a crime or threaten a crime.'},
        [3] = {title = 'Menacing', class = 'Misdemeanor', id = '13A-6-23', months = 15, fine = 1500, color = 'orange', description = 'The defendant placed or attempted to place another person in fear by Brandishing weapon.'},
        [4] = {title = 'Possession of Illegal Firearm Modifications', class = 'Felony', id = '13A-11-61.3', months = 10, fine = 1100, color = 'red', description = 'Whether or not specific enforcement action has been initiated or threatened against that person or another person'},
        [5] = {title = 'Criminal Use of Explosives', class = 'Felony', id = '13A-7-44', months = 30, fine = 2500, color = 'red', description = 'Person possesses, manufactures, buys, sells or transports any explosive, and intends that the explosive be used in the commission of a crime including violence to persons or property'},
        [6] = {title = 'Weapon Trafficking', class = 'Felony', id = 'H.R 30', months = 15, fine = 2000, color = 'red', description = 'By way of pledge or pawn as security for the payment or repayment of money.'},
        [7] = {title = 'Carrying a Pistol Concealed without a Permit', class = 'Felony', id = '13A-11-85', months = 15, fine = 1000, color = 'red', description = 'No person shall carry a pistol in any vehicle or concealed on or about his or her person without a permit issued'},
        [8] = {title = 'Person Forbidden to Possess Firearm', class = 'Felony', id = '3A-11-72', months = 15, fine = 1800, color = 'red', description = 'No Person who has committed a crime of violence shall own a pistol or have one in his or her possession or under his or her control'},
        [9] = {title = 'Flying into Restricted Airspace', class = 'Felony', id = 'FAA-R2101', months = 20, fine = 2000, color = 'red', description = 'Military bases designated as Department of Defense facilities, Certain critical infrastructure, such as nuclear power plants'},
    },
    [9] = {
        [1] = {title = 'Speeding 1st Degree', class = 'Infraction', id = '32-5A-170.2', months = 0, fine = 800, color = 'green', description = 'Operating a vehicle at speeds exceeding speed limits by 40+ mph on public roads.'},
        [2] = {title = 'Speeding 2nd Degree', class = 'Infraction', id = '32-5A-170.1', months = 0, fine = 500, color = 'green', description = 'Operating a vehicle at speeds exceeding speed limits by 30+ mph on public roads.'},
        [3] = {title = 'Speeding 3rd Degree', class = 'Infraction', id = '32-5A-170', months = 0, fine = 300, color = 'green', description = 'Operating a vehicle at speeds exceeding speed limits over 0 - 20+ mph on public roads.'},
        [4] = {title = 'Improper Parking', class = 'Infraction', id = '32-5A-137', months = 0, fine = 300, color = 'green', description = 'Following is considered Improper Parking in the City of Los Santos: • Where a ""No Parking"" sign is posted. • On a marked or unmarked crosswalk, sidewalk, partially blocking a sidewalk, or in front of a driveway. • In a space designated for parking or fueling zero-emission vehicles which display an identifying decal. • In a tunnel or on a bridge, except where permitted by signs. • Within 15 feet of a fire hydrant or a fire station driveway. • On or within 7½ feet of a railroad track. • Between a safety zone and the curb. • On the wrong side of the street. • At a red curb. • On a freeway, except: In an emergency, when a peace officer or device requires a stop, where a stop is specifically permitted. A vehicle (even if disabled) that is stopped, parked, or left standing on a freeway for more than 1 hour may be removed. • On property without consent from the property owner. • In a space where parking meters are enforced, without paying for parking.'},
        [5] = {title = 'Illegal Turn', class = 'Infraction', id = '32-5A-133', months = 0, fine = 200, color = 'green', description = 'No person shall make any turn when not authorized'},
        [6] = {title = 'Failure to Maintain Lane', class = 'Infraction', id = '32-5A-88', months = 0, fine = 300, color = 'green', description = 'A vehicle shall be driven as practicable within a single lane until the proper signal has been given'},
        [7] = {title = 'Failure to Stop', class = 'Infraction', id = '32-5A-112', months = 0, fine = 600, color = 'green', description = 'Vehicle Must obey all traffic signs that signal stop or yield'},
        [8] = {title = 'Failure to Obey Traffic Control Device', class = 'Infraction', id = '32-5A-31', months = 0, fine = 500, color = 'green', description = 'Driver of any vehicle shall obey any official traffic control device'},
        [9] = {title = 'Failure to Yield to Emergency Vehicle', class = 'Infraction', id = '32-5A-115', months = 0, fine = 800, color = 'green', description = 'Vehicle must Yield to any emergency vehicle with emergency equipment activated'},
        [10] = {title = 'Move Over Law', class = 'Infraction', id = '32-5A-58.2', months = 0, fine = 2000, color = 'green', description = 'Any driver must MOVE OVER for any stopped Emergency Vehicle'},
        [11] = {title = 'U-Turn', class = 'Infraction', id = '32-5A-133', months = 0, fine = 200, color = 'green', description = 'No evasive action can be made right or left without reasonable safety'},
        [12] = {title = 'Improper Passing', class = 'Infraction', id = '32-5A-82', months = 0, fine = 500, color = 'green', description = 'Vehicle May not overtake any vehicle traveling the same direction until the proper roadway marking is displayed'},
        [13] = {title = 'Impeding Traffic', class = 'Infraction', id = '32-5A-174', months = 0, fine = 300, color = 'green', description = 'Persons Shall not drive a vehicle that impedes normal movement of traffic including stalled or broke down vehicles'},
        [14] = {title = 'Driving without Headlights', class = 'Infraction', id = '32-5-240', months = 0, fine = 300, color = 'green', description = 'Headlights must be used at low light hours and during inclement weather.'},
        [15] = {title = 'Disobeying a Peace Officer', class = 'Infraction', id = '32-5A-4', months = 0, fine = 1000, color = 'green', description = 'No person shall willfully fail or refuse to comply with any lawful order or direction of any police officer or fireman'},
        [16] = {title = 'Loitering on Government Properties', class = 'Infraction', id = '13A-11-9', months = 0, fine = 500, color = 'green', description = 'Loiters, remains, or wanders about in a public place for the purpose of begging'},
        [17] = {title = 'Driving While Intoxicated', class = 'Misdemeanor', id = '32-5A-191', months = 5, fine = 1500, color = 'orange', description = 'Shall not be in actual physical control of any vehicle under any substance that alters physical or mental faculties'},
        [18] = {title = 'Reckless Driving', class = 'Misdemeanor', id = '32-5A-190', months = 5, fine = 750, color = 'orange', description = 'Driving without due caution or in a manner likely to endanger any person or property.'},
        [19] = {title = 'Driving without a License Suspended or Revoked', class = 'Misdemeanor', id = '32-6-18', months = 5, fine = 1000, color = 'orange', description = 'Driving a Motor Vehicle with No license or Suspended or Revoked driving status'},
        [20] = {title = 'Hit and Run', class = 'Misdemeanor', id = '32-10-1', months = 10, fine = 2000, color = 'orange', description = 'No driver may leave the scene of any accident unless authorized to do so by authorities'},
        [21] = {title = 'Racing on highway', class = 'Misdemeanor', id = '32-5A-178', months = 15, fine = 2000, color = 'orange', description = 'Any race, Speed Competition, drag race or exhibition of speed or acceleration'},
        [22] = {title = 'Unauthorized Use of a Motor vehicle', class = 'Misdemeanor', id = '32-8-81', months = 10, fine = 800, color = 'orange', description = 'Not entitled to possession of a vehicle without the owners consent.'},
        [23] = {title = 'Attempting to Elude', class = 'Misdemeanor', id = '13A-10-52', months = 8, fine = 2000, color = 'orange', description = 'Person knowlingly flees Law Enforcement to avoid arrest'},
        [24] = {title = 'Vehicular Manslaughter', class = 'Felony', id = '13A-6-2', months = 60, fine = 8000, color = 'red', description = 'Depending on circumstances a fatal accident could constitute vehicular manslaughter'},
        [25] = {title = 'Felony Eluding', class = 'Felony', id = '13A-10-52.1', months = 15, fine = 2500, color = 'red', description = 'Person knowingly fleas Law Enforcement in the act of committing a Felony or emits Severe physical danger to Officers or Public'},
    },
    [10] = {
        [1] = {title = 'Hunting in Restricted Areas', class = 'Infraction', id = '0220-2-11', months = 0, fine = 450, color = 'green', description = 'Hunting in restricted areas such as close to roadways or dwellings'},
        [2] = {title = 'Hunting outside of hunting hours', class = 'Infraction', id = '220-2-55', months = 0, fine = 750, color = 'green', description = 'No hunting widlife during the hours set by fish and game'},
        [3] = {title = 'Unlicensed Hunting', class = 'Infraction', id = '9-11-51', months = 0, fine = 450, color = 'green', description = 'Any person hunting wild game must have the appropriate license.'},
        [4] = {title = 'Animal Cruelty', class = 'Misdemeanor', id = '13A-11-14', months = 10, fine = 450, color = 'orange', description = 'Subjects any animal to cruel mistreatment'},
        [5] = {title = 'Overhunting', class = 'Misdemeanor', id = '9-11-51', months = 10, fine = 1000, color = 'orange', description = 'Hunters may only kill the legal bag limit per person per day'},
        [6] = {title = 'Hunting with a Non-Hunting Weapon', class = 'Misdemeanor', id = '0220-2-10', months = 10, fine = 750, color = 'orange', description = 'Must use the exact weapon authorized by fish and game for the wildlife your hunting.'},
        [7] = {title = 'Poaching', class = 'Felony', id = '9-11-0246', months = 20, fine = 1250, color = 'red', description = 'Hunting without Legal permission from land owner.'},
    },
}

Config.AllowedJobs = {}
for index, value in pairs(Config.PoliceJobs) do
    Config.AllowedJobs[index] = value
end
for index, value in pairs(Config.AmbulanceJobs) do
    Config.AllowedJobs[index] = value
end
for index, value in pairs(Config.DojJobs) do
    Config.AllowedJobs[index] = value
end

Config.ColorNames = {
    [0] = "Metallic Black",
    [1] = "Metallic Graphite Black",
    [2] = "Metallic Black Steel",
    [3] = "Metallic Dark Silver",
    [4] = "Metallic Silver",
    [5] = "Metallic Blue Silver",
    [6] = "Metallic Steel Gray",
    [7] = "Metallic Shadow Silver",
    [8] = "Metallic Stone Silver",
    [9] = "Metallic Midnight Silver",
    [10] = "Metallic Gun Metal",
    [11] = "Metallic Anthracite Grey",
    [12] = "Matte Black",
    [13] = "Matte Gray",
    [14] = "Matte Light Grey",
    [15] = "Util Black",
    [16] = "Util Black Poly",
    [17] = "Util Dark silver",
    [18] = "Util Silver",
    [19] = "Util Gun Metal",
    [20] = "Util Shadow Silver",
    [21] = "Worn Black",
    [22] = "Worn Graphite",
    [23] = "Worn Silver Grey",
    [24] = "Worn Silver",
    [25] = "Worn Blue Silver",
    [26] = "Worn Shadow Silver",
    [27] = "Metallic Red",
    [28] = "Metallic Torino Red",
    [29] = "Metallic Formula Red",
    [30] = "Metallic Blaze Red",
    [31] = "Metallic Graceful Red",
    [32] = "Metallic Garnet Red",
    [33] = "Metallic Desert Red",
    [34] = "Metallic Cabernet Red",
    [35] = "Metallic Candy Red",
    [36] = "Metallic Sunrise Orange",
    [37] = "Metallic Classic Gold",
    [38] = "Metallic Orange",
    [39] = "Matte Red",
    [40] = "Matte Dark Red",
    [41] = "Matte Orange",
    [42] = "Matte Yellow",
    [43] = "Util Red",
    [44] = "Util Bright Red",
    [45] = "Util Garnet Red",
    [46] = "Worn Red",
    [47] = "Worn Golden Red",
    [48] = "Worn Dark Red",
    [49] = "Metallic Dark Green",
    [50] = "Metallic Racing Green",
    [51] = "Metallic Sea Green",
    [52] = "Metallic Olive Green",
    [53] = "Metallic Green",
    [54] = "Metallic Gasoline Blue Green",
    [55] = "Matte Lime Green",
    [56] = "Util Dark Green",
    [57] = "Util Green",
    [58] = "Worn Dark Green",
    [59] = "Worn Green",
    [60] = "Worn Sea Wash",
    [61] = "Metallic Midnight Blue",
    [62] = "Metallic Dark Blue",
    [63] = "Metallic Saxony Blue",
    [64] = "Metallic Blue",
    [65] = "Metallic Mariner Blue",
    [66] = "Metallic Harbor Blue",
    [67] = "Metallic Diamond Blue",
    [68] = "Metallic Surf Blue",
    [69] = "Metallic Nautical Blue",
    [70] = "Metallic Bright Blue",
    [71] = "Metallic Purple Blue",
    [72] = "Metallic Spinnaker Blue",
    [73] = "Metallic Ultra Blue",
    [74] = "Metallic Bright Blue",
    [75] = "Util Dark Blue",
    [76] = "Util Midnight Blue",
    [77] = "Util Blue",
    [78] = "Util Sea Foam Blue",
    [79] = "Uil Lightning blue",
    [80] = "Util Maui Blue Poly",
    [81] = "Util Bright Blue",
    [82] = "Matte Dark Blue",
    [83] = "Matte Blue",
    [84] = "Matte Midnight Blue",
    [85] = "Worn Dark blue",
    [86] = "Worn Blue",
    [87] = "Worn Light blue",
    [88] = "Metallic Taxi Yellow",
    [89] = "Metallic Race Yellow",
    [90] = "Metallic Bronze",
    [91] = "Metallic Yellow Bird",
    [92] = "Metallic Lime",
    [93] = "Metallic Champagne",
    [94] = "Metallic Pueblo Beige",
    [95] = "Metallic Dark Ivory",
    [96] = "Metallic Choco Brown",
    [97] = "Metallic Golden Brown",
    [98] = "Metallic Light Brown",
    [99] = "Metallic Straw Beige",
    [100] = "Metallic Moss Brown",
    [101] = "Metallic Biston Brown",
    [102] = "Metallic Beechwood",
    [103] = "Metallic Dark Beechwood",
    [104] = "Metallic Choco Orange",
    [105] = "Metallic Beach Sand",
    [106] = "Metallic Sun Bleeched Sand",
    [107] = "Metallic Cream",
    [108] = "Util Brown",
    [109] = "Util Medium Brown",
    [110] = "Util Light Brown",
    [111] = "Metallic White",
    [112] = "Metallic Frost White",
    [113] = "Worn Honey Beige",
    [114] = "Worn Brown",
    [115] = "Worn Dark Brown",
    [116] = "Worn straw beige",
    [117] = "Brushed Steel",
    [118] = "Brushed Black steel",
    [119] = "Brushed Aluminium",
    [120] = "Chrome",
    [121] = "Worn Off White",
    [122] = "Util Off White",
    [123] = "Worn Orange",
    [124] = "Worn Light Orange",
    [125] = "Metallic Securicor Green",
    [126] = "Worn Taxi Yellow",
    [127] = "police car blue",
    [128] = "Matte Green",
    [129] = "Matte Brown",
    [130] = "Worn Orange",
    [131] = "Matte White",
    [132] = "Worn White",
    [133] = "Worn Olive Army Green",
    [134] = "Pure White",
    [135] = "Hot Pink",
    [136] = "Salmon pink",
    [137] = "Metallic Vermillion Pink",
    [138] = "Orange",
    [139] = "Green",
    [140] = "Blue",
    [141] = "Mettalic Black Blue",
    [142] = "Metallic Black Purple",
    [143] = "Metallic Black Red",
    [144] = "Hunter Green",
    [145] = "Metallic Purple",
    [146] = "Metaillic V Dark Blue",
    [147] = "MODSHOP BLACK1",
    [148] = "Matte Purple",
    [149] = "Matte Dark Purple",
    [150] = "Metallic Lava Red",
    [151] = "Matte Forest Green",
    [152] = "Matte Olive Drab",
    [153] = "Matte Desert Brown",
    [154] = "Matte Desert Tan",
    [155] = "Matte Foilage Green",
    [156] = "DEFAULT ALLOY COLOR",
    [157] = "Epsilon Blue",
    [158] = "Unknown",
}

Config.ColorInformation = {
    [0] = "black",
    [1] = "black",
    [2] = "black",
    [3] = "darksilver",
    [4] = "silver",
    [5] = "bluesilver",
    [6] = "silver",
    [7] = "darksilver",
    [8] = "silver",
    [9] = "bluesilver",
    [10] = "darksilver",
    [11] = "darksilver",
    [12] = "matteblack",
    [13] = "gray",
    [14] = "lightgray",
    [15] = "black",
    [16] = "black",
    [17] = "darksilver",
    [18] = "silver",
    [19] = "utilgunmetal",
    [20] = "silver",
    [21] = "black",
    [22] = "black",
    [23] = "darksilver",
    [24] = "silver",
    [25] = "bluesilver",
    [26] = "darksilver",
    [27] = "red",
    [28] = "torinored",
    [29] = "formulared",
    [30] = "blazered",
    [31] = "gracefulred",
    [32] = "garnetred",
    [33] = "desertred",
    [34] = "cabernetred",
    [35] = "candyred",
    [36] = "orange",
    [37] = "gold",
    [38] = "orange",
    [39] = "red",
    [40] = "mattedarkred",
    [41] = "orange",
    [42] = "matteyellow",
    [43] = "red",
    [44] = "brightred",
    [45] = "garnetred",
    [46] = "red",
    [47] = "red",
    [48] = "darkred",
    [49] = "darkgreen",
    [50] = "racingreen",
    [51] = "seagreen",
    [52] = "olivegreen",
    [53] = "green",
    [54] = "gasolinebluegreen",
    [55] = "mattelimegreen",
    [56] = "darkgreen",
    [57] = "green",
    [58] = "darkgreen",
    [59] = "green",
    [60] = "seawash",
    [61] = "midnightblue",
    [62] = "darkblue",
    [63] = "saxonyblue",
    [64] = "blue",
    [65] = "blue",
    [66] = "blue",
    [67] = "diamondblue",
    [68] = "blue",
    [69] = "blue",
    [70] = "brightblue",
    [71] = "purpleblue",
    [72] = "blue",
    [73] = "ultrablue",
    [74] = "brightblue",
    [75] = "darkblue",
    [76] = "midnightblue",
    [77] = "blue",
    [78] = "blue",
    [79] = "lightningblue",
    [80] = "blue",
    [81] = "brightblue",
    [82] = "mattedarkblue",
    [83] = "matteblue",
    [84] = "matteblue",
    [85] = "darkblue",
    [86] = "blue",
    [87] = "lightningblue",
    [88] = "yellow",
    [89] = "yellow",
    [90] = "bronze",
    [91] = "yellow",
    [92] = "lime",
    [93] = "champagne",
    [94] = "beige",
    [95] = "darkivory",
    [96] = "brown",
    [97] = "brown",
    [98] = "lightbrown",
    [99] = "beige",
    [100] = "brown",
    [101] = "brown",
    [102] = "beechwood",
    [103] = "beechwood",
    [104] = "chocoorange",
    [105] = "yellow",
    [106] = "yellow",
    [107] = "cream",
    [108] = "brown",
    [109] = "brown",
    [110] = "brown",
    [111] = "white",
    [112] = "white",
    [113] = "beige",
    [114] = "brown",
    [115] = "brown",
    [116] = "beige",
    [117] = "steel",
    [118] = "blacksteel",
    [119] = "aluminium",
    [120] = "chrome",
    [121] = "wornwhite",
    [122] = "offwhite",
    [123] = "orange",
    [124] = "lightorange",
    [125] = "green",
    [126] = "yellow",
    [127] = "blue",
    [128] = "green",
    [129] = "brown",
    [130] = "orange",
    [131] = "white",
    [132] = "white",
    [133] = "darkgreen",
    [134] = "white",
    [135] = "pink",
    [136] = "pink",
    [137] = "pink",
    [138] = "orange",
    [139] = "green",
    [140] = "blue",
    [141] = "blackblue",
    [142] = "blackpurple",
    [143] = "blackred",
    [144] = "darkgreen",
    [145] = "purple",
    [146] = "darkblue",
    [147] = "black",
    [148] = "purple",
    [149] = "darkpurple",
    [150] = "red",
    [151] = "darkgreen",
    [152] = "olivedrab",
    [153] = "brown",
    [154] = "tan",
    [155] = "green",
    [156] = "silver",
    [157] = "blue",
    [158] = "black",
}

Config.ClassList = {
    [0] = "Compact",
    [1] = "Sedan",
    [2] = "SUV",
    [3] = "Coupe",
    [4] = "Muscle",
    [5] = "Sport Classic",
    [6] = "Sport",
    [7] = "Super",
    [8] = "Motorbike",
    [9] = "Off-Road",
    [10] = "Industrial",
    [11] = "Utility",
    [12] = "Van",
    [13] = "Bike",
    [14] = "Boat",
    [15] = "Helicopter",
    [16] = "Plane",
    [17] = "Service",
    [18] = "Emergency",
    [19] = "Military",
    [20] = "Commercial",
    [21] = "Train"
}

function GetJobType(job)
	if Config.PoliceJobs[job] then
		return 'police'
	elseif Config.AmbulanceJobs[job] then
		return 'ambulance'
	elseif Config.DojJobs[job] then
		return 'doj'
	else
		return nil
	end
end
