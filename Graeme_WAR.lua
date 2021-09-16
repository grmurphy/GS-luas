---------------------------
--         Binds         --
---------------------------

send_command('bind !numpad1 input /ws "Savage Blade" <t>')
send_command('bind !numpad2 input /ws "Decimation" <t>')
send_command('bind !numpad3 input /ws "Cloudsplitter" <t>')
send_command('bind !numpad4 input /ws "Steel Cyclone" <t>')
send_command('bind !numpad5 input /ws "Upheaval" <t>')
send_command('bind !numpad6 input /ws "Ukko\'s Fury <t>') 
send_command('bind !numpad7 empty')
send_command('bind !numpad9 empty')
send_command('bind f9 gs c toggle TP set') --This toggles through sets, whether in TP or in DT modes
send_command('bind f10 gs c toggle DT') --This turns DT set ON/OFF
send_command('bind f11 gs c toggle Idle set') --This toggles Idle sets between normal(regen, regain, etc.) and DT (DT, obviously)
send_command('bind !r input /item "Remedy" <me>') --ALT+R uses Remedy          \\\
send_command('bind !p input /item "Panacea" <me>') --ALT+P uses Panacea		    >>>  These might be redundant, but wanted to add them so you could have manual control should you need it
send_command('bind !h input /item "Holy Water" <me>') --ALT+H uses Holy Water  ///
send_command('bind !t gs c toggle TH') --ALT+T toggles Treasure Hunter ON/OFF
send_command('bind !w input /equip ring2 "Warp Ring"; /echo Warping; wait 11; input /item "Warp Ring" <me>;') --ALT+W uses Warp Ring
send_command('bind ^f8 gs c toggle Weapon set')

function file_unload()

	send_command('unbind f9')
	send_command('unbind f10')
	send_command('unbind f11')
	send_command('unbind !r')
	send_command('unbind !p')
	send_command('unbind !h')
	send_command('unbind !t')
	send_command('unbind ^f8')
	send_command('unbind !w')

end
--------------------------
--		END Binds		--
--------------------------
function get_sets()

	maps()
	
	--------------------------
	---AUGMENTED GEAR TABLE---
	--------------------------
	
	--Use this space to create tables for augmented (ie herc, odys, valor gear). 
	--This way you clean up your sets by using HercHands.ACC instead of "Herculean Hands" (AUG = asd;lkfhjasdlkjfasdkjf)
	--See example below:
	
	--AdhemarHelm = {}
	--AdhemarHelm.ACC = { name="Adhemar Bonnet", augments={'DEX+10','AGI+10','Accuracy+15',}}
	--AdhemarHelm.ATK = { name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20',}}
	
	--AdhemarBody = {}
	--AdhemarBody.FC = { name="Adhemar Jacket", augments={'HP+80','"Fast Cast"+7','Magic dmg. taken -3',}}
	--AdhemarBody.ATK = { name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}}
	
	--JSEback = {}
	--JSEback.TP = { name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}}
	--JSEback.WSD = { name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}}
	
	
	----------------
	---START SETS---
	----------------
	
	-------------
	--Idle Sets--
	-------------
	sets.Idle = {}
	sets.Idle.index = { 'Standard', 'DT' }
	Idle_ind = 1
	--Regen, Regain, Sheltered Ring, etc.
	sets.Idle.Standard = {
	ammo="Staunch Tathlum",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Twilight Torque",
    waist="Flume Belt",
    left_ear="Cessance Earring",
    right_ear="Telos Earring",
    left_ring="Defending Ring",
    right_ring="Shneddick Ring",
    back="Moonbeam Cape",}
	
	--Totals // DT: XX%   PDT: XX%   MDT: XX%
	sets.Idle.DT = {
	ammo="Staunch Tathlum",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Twilight Torque",
    waist="Flume Belt",
    left_ear="Cessance Earring",
    right_ear="Telos Earring",
    left_ring="Defending Ring",
    right_ring="Shneddick Ring",
    back="Moonbeam Cape",}
	
	sets.Idle.Town = sets.Idle.Standard
	
	-----------
	--TP SETS--
	-----------
	sets.TP = {}
	sets.TP.index = {'TwoHandTP', 'HighACC', 'DualWep', 'Fencer'}	
    TP_ind = 1

	sets.TP.TwoHandTP = {
	ammo="Aurgelmir Orb",
    head="Flam. Zucchetto +2",
    body={ name="Valorous Mail", augments={'"Dbl.Atk."+5','Accuracy+4','Attack+8',}},
    hands="Sulev. Gauntlets +2",
    legs="Pumm. Cuisses +2",
    feet="Pumm. Calligae +3",
    neck={ name="War. Beads +2", augments={'Path: A',}},
    waist="Ioskeha Belt +1",
    left_ear="Brutal Earring",
    right_ear="Cessance Earring",
    left_ring="Rajas Ring",
    right_ring="Petrov Ring",
    back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}

	--Add a high acc TP set here, shoot for 1350-1400 ACC with food. Use this for Omen bosses and wave 2+
	sets.TP.HighACC = {
	ammo="Aurgelmir Orb",
    head="Flam. Zucchetto +2",
    body={ name="Valorous Mail", augments={'"Dbl.Atk."+5','Accuracy+4','Attack+8',}},
    hands="Sulev. Gauntlets +2",
    legs="Pumm. Cuisses +2",
    feet="Pumm. Calligae +3",
    neck={ name="War. Beads +2", augments={'Path: A',}},
    waist="Ioskeha Belt +1",
    left_ear="Brutal Earring",
    right_ear="Cessance Earring",
    left_ring="Rajas Ring",
    right_ring="Petrov Ring",
    back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}
	
	sets.TP.DualWep = {
	ammo="Ginsen",
    head="Flam. Zucchetto +2",
    body={ name="Emicho Haubert", augments={'HP+50','DEX+10','Accuracy+15',}},
    hands={ name="Emi. Gauntlets +1", augments={'Accuracy+25','"Dual Wield"+6','Pet: Accuracy+25',}},
    legs="Pumm. Cuisses +2",
    feet="Pumm. Calligae +3",
    neck={ name="War. Beads +2", augments={'Path: A',}},
    waist="Ioskeha Belt +1",
    left_ear="Suppanomimi",
    right_ear="Cessance Earring",
    left_ring="Rajas Ring",
    right_ring="Petrov Ring",
    back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}
	
	sets.TP.Fencer = {
	ammo="Ginsen",
    head="Flam. Zucchetto +2",
    body={ name="Valorous Mail", augments={'"Dbl.Atk."+5','Accuracy+4','Attack+8',}},
    hands="Sulev. Gauntlets +2",
    legs="Pumm. Cuisses +2",
    feet="Pumm. Calligae +3",
    neck={ name="War. Beads +2", augments={'Path: A',}},
    waist="Ioskeha Belt +1",
    left_ear="Brutal Earring",
    right_ear="Cessance Earring",
    left_ring="Rajas Ring",
    right_ring="Petrov Ring",
    back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}
	
	-----------
	--DT Sets--
	-----------
    sets.DT = {}
    sets.DT.index = { 'DT', 'DTHybrid', 'MEVA' }
    DT_ind = 1 
	
	-- Running Total: DT/PDT/MT/MEVA: XX%/XX%/X%/+XXX
	-- Full DT, all forms cap @50%. Stack MEVA afterwards.
	-- 21% MDT to cap with Shell V, 19% MDT to cap with Shell V + Sheltered Ring
	sets.DT.DT = {
	ammo="Staunch Tathlum",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Twilight Torque",
    waist="Flume Belt",
    left_ear="Cessance Earring",
    right_ear="Telos Earring",
    left_ring="Defending Ring",
    right_ring="Moonbeam Ring",
   back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}
	
	-- Running Total: DT/PDT/MDT: XX%/XX%/XX%
	-- No more than ~30%DT, should be mostly TP gear
	sets.DT.DTHybrid = {
	ammo="Staunch Tathlum",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Warrior's Beads",
    waist="Ioskeha Belt +1",
    left_ear="Cessance Earring",
    right_ear="Telos Earring",
    left_ring="Defending Ring",
    right_ring="Moonbeam Ring",
    back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}
    
	-- Running Total: DT/PDT/MT/MEVA: %/%/%/+
	-- As much MEVA as possible
	sets.DT.MEVA = {
	ammo="Staunch Tathlum",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Twilight Torque",
    waist="Flume Belt",
    left_ear="Cessance Earring",
    right_ear="Telos Earring",
    left_ring="Defending Ring",
    right_ring="Moonbeam Ring",
    back="Moonbeam Cape",}
	
	-------------
	---WS SETS---
	-------------
	sets.WS = {}
	sets.WS.base = {
	ammo="Knobkierrie",
    head={ name="Agoge Mask +2", augments={'Enhances "Savagery" effect',}},
    body="Pumm. Lorica +2",
    hands="Sulev. Gauntlets +2",
    legs={ name="Valorous Hose", augments={'Accuracy+18 Attack+18','Weapon skill damage +4%','DEX+6',}},
    feet="Sulev. Leggings +2",
    neck={ name="War. Beads +2", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    left_ring="Rufescent Ring",
    right_ring="Ifrit Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},}
	
	sets.WS.SanguineBlade = {
	ammo="Knobkierrie",
    head="Flam. Zucchetto +2",
    body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}},
    hands={ name="Argosy Mufflers", augments={'STR+10','DEX+10','Attack+15',}},
    legs={ name="Argosy Breeches", augments={'STR+10','DEX+10','Attack+15',}},
    feet="Pumm. Calligae +3",
    neck="Warrior's Beads",
    waist="Chuq'aba Belt",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    right_ear="Thrud Earring",
    left_ring="Petrov Ring",
    right_ring="Flamma Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},}

	sets.WS.Upheaval = {
	ammo="Knobkierrie",
    head={ name="Agoge Mask +2", augments={'Enhances "Savagery" effect',}},
    body="Pumm. Lorica +2",
    hands="Sulev. Gauntlets +2",
    legs={ name="Valorous Hose", augments={'Accuracy+18 Attack+18','Weapon skill damage +4%','DEX+6',}},
    feet="Sulev. Leggings +2",
    neck={ name="War. Beads +2", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    left_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
    right_ring="Supershear Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},}
	
	sets.WS.BlackHalo = {}

	sets.WS.UkkosFury = {
	ammo="Knobkierrie",
    head={ name="Agoge Mask +2", augments={'Enhances "Savagery" effect',}},
    body="Pumm. Lorica +2",
    hands="Sulev. Gauntlets +2",
    legs={ name="Valorous Hose", augments={'Accuracy+18 Attack+18','Weapon skill damage +4%','DEX+6',}},
    feet="Sulev. Leggings +2",
    neck={ name="War. Beads +2", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    left_ring="Rufescent Ring",
    right_ring="Ifrit Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},}

	sets.WS.FellCleave = {
	ammo="Knobkierrie",
    head={ name="Agoge Mask +2", augments={'Enhances "Savagery" effect',}},
    body="Pumm. Lorica +2",
    hands="Sulev. Gauntlets +2",
    legs={ name="Valorous Hose", augments={'Accuracy+18 Attack+18','Weapon skill damage +4%','DEX+6',}},
    feet="Sulev. Leggings +2",
    neck={ name="War. Beads +2", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    left_ring="Rufescent Ring",
    right_ring="Ifrit Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},}
	
	sets.WS.Resolution = {
	ammo="Knobkierrie",
    ammo="Knobkierrie",
    head={ name="Agoge Mask +2", augments={'Enhances "Savagery" effect',}},
    body="Pumm. Lorica +2",
    hands="Sulev. Gauntlets +2",
    legs={ name="Valorous Hose", augments={'Accuracy+18 Attack+18','Weapon skill damage +4%','DEX+6',}},
    feet="Sulev. Leggings +2",
    neck={ name="War. Beads +2", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    left_ring="Rufescent Ring",
    right_ring="Ifrit Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},}	

	sets.WS.GroundStrike = {
	ammo="Knobkierrie",
    head="Flam. Zucchetto +2",
    body={ name="Argosy Hauberk", augments={'STR+10','DEX+10','Attack+15',}},
    hands={ name="Argosy Mufflers", augments={'STR+10','DEX+10','Attack+15',}},
    legs={ name="Argosy Breeches", augments={'STR+10','DEX+10','Attack+15',}},
    feet="Pumm. Calligae +3",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    right_ear="Thrud Earring",
    left_ring="Petrov Ring",
    right_ring="Flamma Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},}

	sets.WS.ImpulseDrive = {
	ammo="Knobkierrie",
    head={ name="Agoge Mask +2", augments={'Enhances "Savagery" effect',}},
    body="Pumm. Lorica +2",
    hands="Sulev. Gauntlets +2",
    legs={ name="Valorous Hose", augments={'Accuracy+18 Attack+18','Weapon skill damage +4%','DEX+6',}},
    feet="Sulev. Leggings +2",
    neck={ name="War. Beads +2", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    left_ring="Rufescent Ring",
    right_ring="Ifrit Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},}
	
	sets.WS.SteelCyclone = {
	ammo="Knobkierrie",
    head={ name="Agoge Mask +2", augments={'Enhances "Savagery" effect',}},
    body="Pumm. Lorica +2",
    hands="Sulev. Gauntlets +2",
    legs={ name="Valorous Hose", augments={'Accuracy+18 Attack+18','Weapon skill damage +4%','DEX+6',}},
    feet="Sulev. Leggings +2",
    neck={ name="War. Beads +2", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    left_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
    right_ring="Ifrit Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},}
	
	sets.WS.RaidenThrust = {}
	
	sets.WS.SavageBlade = {
	ammo="Knobkierrie",
    head={ name="Agoge Mask +2", augments={'Enhances "Savagery" effect',}},
    body="Pumm. Lorica +2",
    hands="Sulev. Gauntlets +2",
    legs={ name="Valorous Hose", augments={'Accuracy+18 Attack+18','Weapon skill damage +4%','DEX+6',}},
    feet="Sulev. Leggings +2",
    neck={ name="War. Beads +2", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    left_ring="Rufescent Ring",
    right_ring="Ifrit Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},}
	
	sets.WS.Judgment = {
	ammo="Knobkierrie",
    head={ name="Agoge Mask +2", augments={'Enhances "Savagery" effect',}},
    body="Pumm. Lorica +2",
    hands="Sulev. Gauntlets +2",
    legs={ name="Valorous Hose", augments={'Accuracy+18 Attack+18','Weapon skill damage +4%','DEX+6',}},
    feet="Sulev. Leggings +2",
    neck={ name="War. Beads +2", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    left_ring="Rufescent Ring",
    right_ring="Ifrit Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},}
	
	sets.WS.Decimation = {
	ammo="Knobkierrie",
    head={ name="Agoge Mask +2", augments={'Enhances "Savagery" effect',}},
    body="Pumm. Lorica +2",
    hands="Sulev. Gauntlets +2",
    legs={ name="Valorous Hose", augments={'Accuracy+18 Attack+18','Weapon skill damage +4%','DEX+6',}},
    feet="Sulev. Leggings +2",
    neck={ name="War. Beads +2", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    left_ring="Rufescent Ring",
    right_ring="Ifrit Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},}
	
	sets.WS.Cloudsplitter = {
	ammo="Knobkierrie",
    head={ name="Agoge Mask +2", augments={'Enhances "Savagery" effect',}},
    body="Pumm. Lorica +2",
    hands="Sulev. Gauntlets +2",
    legs={ name="Valorous Hose", augments={'Accuracy+18 Attack+18','Weapon skill damage +4%','DEX+6',}},
    feet="Sulev. Leggings +2",
    neck={ name="War. Beads +2", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    left_ring="Rufescent Ring",
    right_ring="Ifrit Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},}
	
	----------------------
	---Weapon Sets--------
	----------------------
	sets.Weapon = {}
    sets.Weapon.index = { 'GA', 'Pole', 'Sword', 'Club' }
    Weapon_ind = 1
	
	sets.Weapon.GA = {main="Kaja Chopper", sub="Utu Grip"}
	sets.Weapon.Pole = {main="Kaja Spear", sub="Utu Grip"}
	sets.Weapon.Sword = {main="Naegling", sub="Blurred Shield +1"}
	sets.Weapon.Club = {main="Mafic Cudgel", sub="Blurred Shield +1"}
	
	----------------------
	---JOB ABILITY SETS---
	----------------------
	
	sets.JA = {}
	
	sets.JA.Warcry = {head="Agoge Mask +2"}
	sets.JA.MightyStrikes = {hands="Agoge Mufflers"}
	sets.JA.Tomahawk = {ammo="Thr. Tomahawk", feet="Agoge Calligae +2"}
	sets.JA.Berserk = {back ="Chicol's Mantle", feet="Agoge Calligae +2", body= "Pumm. Lorica +2"}
	sets.JA.Aggressor = {body="Agoge Lorica +1", head = "Pummeler's mask +2"}
	sets.JA.Bloodrage = {body="Boii Lorica"}
	sets.JA.Retaliation = {feet = "Boii Calligae +1", hands = "Pumm. Mufflers+2"}
	sets.JA.Restraint = {hands="Boii mufflers"}
	sets.JA.WarriorsCharge = {legs="Agoge Cuisses +1"}
	
	sets.JA.Provoke = {
	ammo="Aqreqaq Bomblet",
    head="Halitus Helm",
    body={ name="Souv. Cuirass +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    hands="Pumm. Mufflers +2",
    legs="Sulevia's Cuisses",
    feet={ name="Souveran Schuhs", augments={'HP+50','Attack+20','Magic dmg. taken -3',}},
    left_ring="Apeile Ring +1",
    right_ring="Apeile Ring",}
	
	----------------
	--UTILITY SETS--
	----------------
	--   Sets for one thing or another.
	--   Macro in game with: 

	--   /console gs equip sets.butts.andfronts
	--   /console gs c lockgearindex

	sets.Utility = {}
	
	sets.Utility.Doom = {ring2 = "Saida Ring", waist = "Gishdubar Sash"} --ring1 = "Purity Ring",
	
	-- This set gets called in automatically when you are disabled thought various status effects
	-- Focus DT and MEVA (survivability)
	sets.Utility.DerpDT = {
	ammo="Staunch Tathlum",
    head="Pummeler's Mask +2",
    body="Sulevia's Plate. +1",
    hands="Pumm. Mufflers +2",
    legs="Pumm. Cuisses +2",
    feet={ name="Souveran Schuhs", augments={'HP+50','Attack+20','Magic dmg. taken -3',}},
    neck="Twilight Gorget",
    waist="Flume Belt",
    left_ear="Brutal Earring",
    right_ear="Eabani Earring",
    left_ring="Defending Ring",
    right_ring="Moonbeam Ring",
    back="Moonbeam Cape",}
	
	--Put Treasure Hunter gear here
	sets.Utility.TH = {ammo="Perfect Lucky Egg", head="White Rarab Cap +1",}
	--Chaac Belt
	
	----------------------
	--   Precast Sets   --
	----------------------
	sets.precast = {}
	
	sets.precast.FastCast = {right_ear="Loquac. Earring", right_ring="Prolix Ring",}
	--FC = XX%
	--Put FC items in here even if you never think you'll use them
	sets.precast.FastCast.Standard = { }

end

----------------------------------------------------------------------------------------END OF GEAR----------------------------------------------------------------------------------

-------------------------------------
---------                   ---------
------                         ------
---         Start of Maps         ---
------                         ------
---------                   ---------
------------------------------------- 

------------------------
--   Town Gear List   --
------------------------

function maps()

Town = S {
    "Ru'Lude Gardens", "Upper Jeuno", "Lower Jeuno", "Port Jeuno",
    "Port Windurst", "Windurst Waters", "Windurst Woods", "Windurst Walls", "Heavens Tower",
    "Port San d'Oria", "Northern San d'Oria", "Southern San d'Oria", "Chateau d'Oraguille",
	"Port Bastok", "Bastok Markets", "Bastok Mines", "Metalworks",
    "Aht Urhgan Whitegate", "Nashmau",
    "Selbina", "Mhaura", "Norg",  "Kazham", "Tavanazian Safehold",
    "Eastern Adoulin", "Western Adoulin", "Celennia Memorial Library", "Mog Garden"
}

end

---End of Maps----------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------
---------                    ---------
------                          ------
---         Start of Rules         ---
------                          ------
---------                    ---------
-------------------------------------- 

----------------------------------------------
--   Macro and Style Change on Job Change   --
----------------------------------------------
function set_macros(sheet,book)
    if book then 
        send_command('@input /macro book '..tostring(book)..';wait .1;input /macro set '..tostring(sheet))
        return
    end
    send_command('@input /macro set '..tostring(sheet))
end

function set_style(sheet)
    send_command('@input ;wait 5.0;input /lockstyleset '..sheet)
	add_to_chat (55, 'You are on '..('WARRIOR '):color(5)..''..('btw. '):color(55)..''..('Macros set!'):color(121))
--	add_to_chat (23, '""')
end

--Page, Book--
set_macros(1,2)
--Use the Lockstyle Number-- 
set_style(3)
-------------------------------
--         Variables         --
-------------------------------
SetLocked = false --Used to Check if set is locked before changing equipment
LockedEquipSet = {} --Placeholder to store desired lock set
LockGearSet = {}
equipSet = {} --Currently Equiped Gearset
LockGearIndex = false
LockGearIndex = false
TargetDistance = 0
TH = false --TH rule default
DT = false
SkillchainPending = false 
AllowSkillchainGear = false   --Whether or not the skillchainPending system should be disabled
SkillchainTimer = 0

------------------------------------
--         Windower Hooks         --
------------------------------------

function buff_change(n, gain, buff_table)
	local name
    name = string.lower(n)
    if S{"terror","petrification","sleep","stun"}:contains(name) then
        if gain then
            ChangeGear(sets.Utility.DerpDT)
        elseif not has_any_buff_of({"terror","petrification","sleep","stun"}) then
            if player.status == 'Engaged' then
                if LockGearIndex then
                    ChangeGear(LockGearSet)
                elseif not LockGearIndex then
					if DT == true then
                        ChangeGear(sets.DT[sets.DT.index[DT_ind]])
                    else
                        ChangeGear(sets.TP[sets.TP.index[TP_ind]])
                    end
                end
            elseif player.status == 'Idle' then
                if LockGearIndex then
                    ChangeGear(LockGearSet)
                elseif not LockGearIndex then
                    ChangeGear(sets.Idle[sets.Idle.index[Idle_ind]])
                end
            end
        end
    elseif name == "doom" then
        if gain then
            ChangeGear(sets.Utility.Doom)
            disable('ring1','ring2','waist')
        else
            if player.status == 'Engaged' then
                if LockGearIndex then
                    enable('ring1','ring2','waist')
                    ChangeGear(LockGearSet)
                else
                    enable('ring1','ring2','waist')
					if DT == true then
                        ChangeGear(sets.DT[sets.DT.index[DT_ind]])
                    else
                        ChangeGear(sets.TP[sets.TP.index[TP_ind]])
                    end
                end
            elseif player.status == 'Idle' then
                if LockGearIndex then
                    enable('ring1','ring2','waist')
                    ChangeGear(LockGearSet)					
                else
                    enable('ring1','ring2','waist')
                    ChangeGear(sets.Idle[sets.Idle.index[Idle_ind]])
                end
            end
        end
    elseif name == "charm" then
        if gain then
            send_command('@input /p Charmed!')
        else
            send_command('@input /p Charm is off')
        end
	end	
end

function has_any_buff_of(buff_set)--returns true if you have any of the buffs given
    for i,v in pairs(buff_set) do
        if buffactive[v] ~= nil then return true end
    end
end

--------------------------------------
--         Console Commands         --
--------------------------------------
function self_command(command)
	if command == 'togglelock' then
		if SetLocked == false then
			msg("Equipment Set LOCKED !!!")
		else
			SetLocked = false
			msg("Equipment Set UNLOCKED!")
		end
	elseif command == 'lockgearindex' then
		if LockGearIndex == false then
			LockGearIndex = true
			LockGearSet = {
				ammo = player.equipment.ammo,
				head = player.equipment.head,
				neck = player.equipment.neck,
				ear1 = player.equipment.left_ear,
				ear2 = player.equipment.right_ear,
				body = player.equipment.body,
				hands = player.equipment.hands,
				ring1 = player.equipment.left_ring,
				ring2 = player.equipment.right_ring,
				back = player.equipment.back,
				waist = player.equipment.waist,
				legs = player.equipment.legs,
				feet = player.equipment.feet
			}
			msg("Gear Index Locked !!!")
		else
			LockGearIndex = false
			msg("Gear Index Unlocked")
			if player.status == 'Engaged' then
                if DT == true then
                    ChangeGear(sets.DT[sets.DT.index[DT_ind]])
                else
                    ChangeGear(sets.TP[sets.TP.index[TP_ind]])
                end
            else
                ChangeGear(sets.Idle[sets.Idle.index[Idle_ind]])
            end
        end
    end
	if command == 'toggle Weapon set' then
        Weapon_ind = Weapon_ind + 1
        if Weapon_ind > #sets.Weapon.index then Weapon_ind = 1 end
        send_command('@input /echo <----- Weapon changed to ' .. sets.Weapon.index[Weapon_ind] .. ' ----->')
        ChangeGear(sets.Weapon[sets.Weapon.index[Weapon_ind]])    
    end
	if command == 'toggle TP set' then
		if DT == true then
            DT_ind = DT_ind + 1
            if DT_ind > #sets.DT.index then DT_ind = 1 end
            send_command('@input /echo <----- DT Set changed to ' .. sets.DT.index[DT_ind] .. ' ----->')
            ChangeGear(sets.DT[sets.DT.index[DT_ind]])
        elseif DT == false then
        TP_ind = TP_ind + 1
        if TP_ind > #sets.TP.index then TP_ind = 1 end
        send_command('@input /echo <----- TP Set changed to ' .. sets.TP.index[TP_ind] .. ' ----->')
			if player.status == 'Engaged' then
                    ChangeGear(sets.TP[sets.TP.index[TP_ind]])
            end
		end
	elseif command == 'toggle Idle set' then
        Idle_ind = Idle_ind + 1
        if Idle_ind > #sets.Idle.index then Idle_ind = 1 end
        send_command('@input /echo <----- Idle Set changed to ' .. sets.Idle.index[Idle_ind] .. ' ----->')
        if player.status == 'Idle' then
            ChangeGear(sets.Idle[sets.Idle.index[Idle_ind]])
        end
	elseif command == 'toggle DT set' then
		DT_ind = DT_ind + 1
		if DT_ind > #sets.DT.index then DT_ind = 1 end
		send_command('@input /echo <----- DT Set changed to ' .. sets.DT.index[DT_ind] .. ' ----->')
			if DT == true then
				ChangeGear(sets.DT[sets.DT.index[DT_ind]])
			end
    elseif command == 'toggle DT' then
        if DT == true then
            DT = false
            send_command('@input /echo <----- DT TP: [Off] ----->')
        else
            DT = true
            send_command('@input /echo <----- DT TP: [On] ----->')
        end
        status_change(player.status)
	elseif command == 'toggle TH' then
		if TH == true then
			TH = false
			send_command('@input /echo <----- Treasure Hunter TP: [Off] ----->')
        else
			TH = true
			send_command('@input /echo <----- Treasure Hunter TP: [On] ----->')
		end

		status_change(player.status)
	elseif command == 'ZoneChange' then
		IdleState()
    elseif command == 'AllowSkillchainGear' then
        AllowSkillchainGear = not AllowSkillchainGear
        add_to_chat (56, 'Allow use of skillchain damage gear: ' ..tostring(AllowSkillchainGear))
    elseif string.sub(command, 0, 4) == '-cd ' then     --If the first 4 characters of the command are '-cd '
        add_to_chat (30, string.sub(command, 5, string.len(command)))      --add everything after '-cd ' to a message in the chat
	end
end

--------------------------------------
--         Character States         --
--------------------------------------
function IdleState()
	if LockGearIndex then
		ChangeGear(LockGearSet)
	elseif DT == true then
        ChangeGear(sets.DT[sets.DT.index[DT_ind]])
    else
        ChangeGear(sets.Idle[sets.Idle.index[Idle_ind]])
    end
	
	if Town:contains(world.area) then
		ChangeGear(sets.Idle.Town)
	end
	
end

windower.raw_register_event('zone change',function()
windower.send_command('@wait 9; input //gs c ZoneChange')
end)

function RestingState()

end

function EngagedState()
	if LockGearIndex then
        ChangeGear(LockGearSet)
    elseif not LockGearIndex then
		if DT == true then
            ChangeGear(sets.DT[sets.DT.index[DT_ind]])
        else
            ChangeGear(sets.TP[sets.TP.index[TP_ind]])
        end
    end
end
function user_setup()
state.WeaponSet = M{['description']='WeaponSet', 'GreatAxe', 'Spear', 'Sword', 'Club'}
end
-----------------------------
--      Spell control      --
-----------------------------
unusable_buff = {
	spell={'Charm','Mute','Omerta','Petrification','Silence','Sleep','Stun','Terror'},
    ability={'Amnesia','Charm','Impairment','Petrification','Sleep','Stun','Terror'}}
  --check_recast('ability',spell.recast_id)  check_recast('spell',spell.recast_id)
function check_recast(typ,id) --if spell can be cast(not in recast) return true
    local recasts = windower.ffxi['get_'..typ..'_recasts']()
    if id and recasts[id] and recasts[id] == 0 then
        return true
    else
        return false
    end
end
 --return true if spell/ability is unable to be used at this time
function spell_control(spell)
	if spell.type == "Item" then
		return false
	--Stops spell if you do not have a target
	elseif spell.target.name == nil and not spell.target.raw:contains("st") then
		return true
	--Stops spell if a blocking buff is active
	elseif spell.action_type == 'Ability' and spell.type ~= 'WeaponSkill' and (has_any_buff_of(unusable_buff.ability) or not check_recast('ability',spell.recast_id)) then
		return true
	elseif spell.type == 'WeaponSkill' and player.tp < 1000 then
		return true
	elseif spell.type == 'WeaponSkill' and (has_any_buff_of(unusable_buff.ability)) then
		msg("Weapon Skill Canceled, Can't")
		return true
	elseif spell.action_type == 'Magic' and (has_any_buff_of(unusable_buff.spell)
      or not check_recast('spell',spell.recast_id)) then
		return true
    --Stops spell if you do not have enuf mp/tp to use
	elseif spell.mp_cost and spell.mp_cost > player.mp and not has_any_buff_of({'Manawell','Manafont'}) then
        msg("Spell Canceled, Not Enough MP")
		return true
	end
    --Calculate how many finishing moves your char has up to 6
	local fm_count = 0
	for i, v in pairs(buffactive) do
		if tostring(i):startswith('finishing move') or tostring(i):startswith('?????????') then
			fm_count = tonumber(string.match(i, '%d+')) or 1
		end
	end
    --Stops flourishes if you do not have enough finishing moves
	local min_fm_for_flourishes = {['Animated Flourish']=1,['Desperate Flourish']=1,['Violent Flourish']=1,['Reverse Flourish']=1,['Building Flourish']=1,
                                   ['Wild Flourish']=2,['Climactic Flourish']=1,['Striking Flourish']=2,['Ternary Flourish']=3,}
	if min_fm_for_flourishes[spell.en] then
		if min_fm_for_flourishes[spell.en] > fm_count and not buffactive[507] then
			return true
		end
	end
	--Reomves Sneak when casting Spectral Jig
	if spell.en == 'Spectral Jig' then
		send_command('cancel 71')
	end
	if spell.english == 'Utsusemi: Ichi' and overwrite and buffactive['Copy Image (3)'] then
		return true
	end
	if player.tp >= 1000 and player.target and player.target.distance and player.target.distance > 7 and spell.type == 'WeaponSkill' then
		msg("Weapon Skill Canceled  Target Out of Range")
		return true
	end
end

-----------------------------
--         Precast         --
-----------------------------
function pc_JA(spell, act)
	if spell.english=="Warcry" then
		equip(sets.JA.Warcry)	
	elseif spell.english=="Mighty Strikes" then
		equip(sets.JA.MightyStrikes)	
	elseif spell.english=="Tomahawk" then
		equip(sets.JA.Tomahawk)
	elseif spell.english=="Berserk" then
		equip(sets.JA.Berserk)
	elseif spell.english=="Aggressor" then
		equip(sets.JA.Aggressor)
	elseif spell.english=="Blood Rage" then
		equip(sets.JA.Bloodrage)
	elseif spell.english=="Provoke" then
		equip(sets.JA.Provoke)
	elseif spell.english=="Retaliation" then
		equip(sets.JA.Retaliation)
	elseif spell.english=="Restraint" then
		equip(sets.JA.Restraint)
	elseif spell.english=="Warrior's Charge" then
		equip(sets.JA.WarriorsCharge)
	end
		
	if spell.type=="WeaponSkill" then
        if spell.english=="Impulse Drive" then
			equip(sets.WS.ImpulseDrive)
		elseif spell.english=="Resolution" then
			equip(sets.WS.Resolution)
		elseif spell.english=="Steel Cyclone" then
			equip(sets.WS.SteelCyclone)
		elseif spell.english=="Fell Cleave" then
			equip(sets.WS.FellCleave)
		elseif spell.english=="Ukko's Fury" then
			equip(sets.WS.UkkosFury)	
		elseif spell.english=="Upheaval" then
			equip(sets.WS.Upheaval)	
		elseif spell.english=="Ground Strike" then
			equip(sets.WS.GroundStrike)
		elseif spell.english=="Raiden Thrust" then
			equip(sets.WS.RaidenThrust)
		elseif spell.english=="Savage Blade" then
			equip(sets.WS.SavageBlade)
		elseif spell.english=="Judgment" then
			equip(sets.WS.Judgment)
		elseif spell.english=="Sanguine Blade" then
			equip(sets.WS.SanguineBlade)
		elseif spell.english=="Black Halo" then
			equip(sets.WS.BlackHalo)
		elseif spell.english=="Cloudsplitter" then
			equip(sets.WS.Cloudsplitter)
		elseif spell.english=="Decimation" then
			equip(sets.WS.Decimation)
		end
	end
end
		
function pc_Magic(spell, act)
	if spell.action_type == 'Magic' then
		ChangeGear(sets.precast.FastCast.Standard)
	end
end

function pc_Item(spell, act)
end

-----------------------------
--         Midcast         --
-----------------------------

function mc_JA(spell, act)
end

function mc_Magic(spell, act)
end

function mc_Item(spell, act)
end

--------------------------------
--         After Cast         --
--------------------------------
function ac_JA(spell)
end

function ac_Magic(spell)
end

function ac_Item(spell)
end

function ac_Global()
    if LockGearIndex == true then
        ChangeGear(LockGearSet)
        msg("Lock Gear is ON -- Swapping Gear")
    else
        if player.status == 'Engaged' then
            EngagedState()
        else
            IdleState()
        end
    end
end

------------------------------------
--         Framework Core         --
------------------------------------
function status_change(new, old)
	if new == 'Idle' then
		IdleState()
	elseif new == 'Resting' then
		RestingState()
	elseif new == 'Engaged' then
		EngagedState()
	end
	
	if player.status == 'Engaged' and TH == true then
		ChangeGear(set_combine(equipSet, sets.Utility.TH))	
	end
	
	if DT == true and LockGearIndex == false then
        ChangeGear(sets.DT[sets.DT.index[DT_ind]])
    end
	if player.equipment.main ~= 'empty' then -- Changes 1H/2H TP during status change, combat, spell, etc.
        local weapon_skill = gearswap.res.items:with('en', player.equipment.main).skill
		if weapon_skill and S{1,4,6,7,8,10,12}:contains(weapon_skill) or player.equipment.main == 'empty' then --Checks mainhand weapon for TP set choice. See bottom notes.
            TwoHandedTP = true
        else
            TwoHandedTP = false
        end
    else
        msg("!!Main Weapon Not Equiped!!")
    end
end
	--Numbers in the 1H 2H TP mode rule:
--1 = Hand-to-Hand
--2 = Dagger
--3 = Sword
--4 = Great Sword
--5 = Axe
--6 = Great Axe
--7 = Scythe
--8 = Polearm
--9 = Katana
--10 = Great Katana
--11 = Club
--12 = Staff	
	
function precast(spell, act, spellMap, eventArgs)
	if spell_control(spell) then
        cancel_spell()
        return
    end
	if spell.action_type == 'Ability' then
		pc_JA(spell, act)
	elseif spell.action_type == 'Magic' then
		pc_Magic(spell, act)
	else
		pc_Item(spell, act)
	end
	
if spell.type:lower() == "weaponskill" and SkillchainPending == true then           
        if (os.time() - SkillchainTimer) <= 9 and AllowSkillchainGear == true then
			if buffactive["Allies' Roll"] then
				equip(sets.SCDmgAllies)
			else
				equip(sets.SCDmg)			-- If the current operating system time (in seconds) 
			end								-- minus SkillchainTimer variable is less than 9, equip skillchain gear 
		else
			SkillchainPending = false
		end                                      
    end
end

function midcast(spell, act)
	if spell.action_type == 'Ability' and TH == true then
		ChangeGear(set_combine(equipSet, sets.Utility.TH))
	elseif spell.action_type == 'Ability' then
		mc_JA(spell, act)
	elseif spell.action_type == 'Magic' then
		mc_Magic(spell, act)
	else
		mc_Item(spell, act)
	end
end

function aftercast(spell, act, spellMap, eventArgs)
	if spell.action_type == 'Ability' then
		ac_JA(spell)
	elseif spell.action_type == 'Magic' then
		ac_Magic(spell)
	else
		ac_Item(spell)
	end
	ac_Global()
	
	--Countdowns--
	if not spell.interrupted then
		if spell.english == "Berserk" then
			send_command('wait 289;gs c -cd '..spell.name..': [Ready In 10 Seconds!];wait 10;gs c -cd '..spell.name..': [Ready !]')
		elseif spell.english == "Aggressor" then
			send_command('wait 289;gs c -cd '..spell.name..': [Ready In 10 Seconds!];wait 10;gs c -cd '..spell.name..': [Ready !]')
		elseif spell.english == "Meditate" then
			send_command('wait 169;gs c -cd '..spell.name..': [Ready In 10 Seconds!];wait 10;gs c -cd '..spell.name..': [Ready !]')
		elseif spell.english == "Sekkanoki" then
			send_command('wait 289;gs c -cd '..spell.name..': [Ready In 10 Seconds!];wait 10;gs c -cd '..spell.name..': [Ready !]')
		elseif spell.english == "Feint" then
			send_command('timers create "Feint Duration" 30 down')
		elseif spell.english == "Bully" then
			send_command('timers create "Bully Duration" 30 down')
        elseif spell.type == "WeaponSkill" then
            SkillchainPending = true
            SkillchainTimer = os.time()    -- sets SkillchainTimer variable to the current time of the operating system (in seconds)
        end 
    end

    if not spell.interrupted then
        if spell.english == 'Utsusemi: Ichi' then
            overwrite = false
        elseif spell.english == 'Utsusemi: Ni' then
            overwrite = true
        end
    end
	
end

function ChangeGear(GearSet)
	equipSet = GearSet
	equip(GearSet)
end

function LockGearSet(GearSet)
	LockedEquipSet = GearSet
	equip(GearSet)
	SetLocked = true
end

function UnlockGearSet()
	locked = false
	equip(equipSet)
end

function msg(str)
	send_command('@input /echo <----- ' .. str .. ' ----->')
end

---End of Rules-------------------------------------------------------------------------------------------------------------------------------------------------------

