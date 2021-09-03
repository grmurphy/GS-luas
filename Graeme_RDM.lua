-- 
-- @author Thefoxdanger of Asura
-- RDM.lua v1.0
--
-- 
-- Intermediate RDM lua created to streamline play with as few toggles and other things to press as possible. Designed to be similar in 
-- fuction to the rest of Spicyryan's luas in the Github However, this is a job that naturally has a lot of levers to throw, so take time 
-- to get used to the keybinds below. It also has A LOT of gear fields, which is for a good reason. Make sure to read over comments, reviewing 
-- the current gear in slots to understand what goes there if you don't have my exact gearsets. Everything is very clearly labeled, and if 
-- a set seems to be a duplicate, check that it isn't a version that takes Melee_mode into account.
--
-- I plan to maintain this lua as a template, however if you get a hold of this it is YOUR responsibility to understand its use
-- and to troubleshoot issues within. I will not fix your lua if I do not know you (and probably wont if I do know you). 
-- Have fun~!
-- 	

	
--binds--
-- 4 sets you will toggle frequently
send_command("bind F9 gs c toggle TP set") -- F9 switches between melee sets
send_command("bind !F9 gs c toggle TP set reverse") -- Alt+F9 switches between melee sets in reverse

send_command("bind F10 gs c toggle Range set") -- F10 switches between range sets
send_command("bind !F10 gs c toggle Range set reverse") -- Alt+F10 switches between range sets in reverse

send_command("bind F11 gs c toggle WS set") -- F11 switches between WS sets
send_command("bind !F11 gs c toggle WS set reverse") -- Alt+F11 switches between WS sets in reverse

send_command("bind F12 gs c toggle Idle set") -- F12 switches between idle sets
send_command("bind !F12 gs c toggle Idle set reverse") -- Alt+F12 switches between idle sets in reverse

-- less frequently changed/'setup' toggles
send_command("bind @q gs c toggle Melee Weapon set") -- WIN+Q swap melee weapon combinations (defaults to Sacro Bulwark in offhand when mage mode)
send_command("bind @e gs c toggle Range Weapon set") -- WIN+E swap for Ullr use in melee/WS sets

send_command("bind !f8 gs c toggle DW set") -- Alt+F8 swap between DualWield and SingleWield for melee sets (can only be toggled if DW is available)
send_command("bind @f8 gs c toggle Melee Mode") -- WIN+F8 swap between mage and melee modes (Determines if weapons swap with casts)
send_command("bind !` gs c toggle Burst Mode") -- Alt+` switches Magic Burst sets on/off
send_command("bind @W gs c toggle Weapon Lock") -- WIN+W manually overrides and prevents swaps for main/sub/range/ammo slots
send_command("bind != gs c toggle Saboteur Mode") -- Alt+= toggles Saboteur Mode between NM and Regular mobs to determine duration potencies


--numpad controls for WS's
-- -- CTRL key for Sword WS
send_command('bind ^numpad0 @input /ws "Savage Blade" <t>')
send_command('bind ^numpad1 @input /ws "Death Blossom" <t>')
send_command('bind ^numpad2 @input /ws "Requiescat" <t>')
send_command('bind ^numpad3 @input /ws "Chant du Cygne" <t>')
send_command('bind ^numpad4 @input /ws "Sanguine Blade" <t>')
send_command('bind ^numpad5 @input /ws "Seraph Blade" <t>')
send_command('bind ^numpad6 @input /ws "Knights of Round" <t>')
send_command('bind ^numpad7 @input /ws "Flat Blade" <t>')
send_command('bind ^numpad8 @input /ws "Shining Blade" <t>')
send_command('bind ^numpad9 @input /ws "Red Lotus Blade" <t>')
-- -- Alt key for Club / Dagger / Ranged WS
send_command('bind !numpad0 @input /ws "Black Halo" <t>')
send_command('bind !numpad1 @input /ws "Seraph Strike" <t>')
send_command('bind !numpad2 @input /ws "Shining Strike" <t>')
send_command('bind !numpad3 @input /ws "True Strike" <t>')
send_command('bind !numpad4 @input /ws "Evisceration" <t>')
send_command('bind !numpad5 @input /ws "Aeolian Edge" <t>')
send_command('bind !numpad6 @input /ws "Energy Drain" <t>')
send_command('bind !numpad7 @input /ws "Flaming Arrow" <t>')
send_command('bind !numpad8 @input /ws "Empyreal Arrow" <t>')
send_command('bind !numpad9 @input /ws "Moonlight" <t>')

	
function file_unload()
	--unbinds when job unloads--
	send_command("unbind F9")
	send_command("unbind !F9")
	
	send_command("unbind F10")
	send_command("unbind !F10")

	send_command("unbind F12")
	send_command("unbind !F12")	

	send_command("unbind @q")
	send_command("unbind @e")
	
	send_command("unbind !f8")
	send_command("unbind @f8")
	send_command("unbind !`")
	send_command("unbind @W")
	send_command("unbind !=")
	
	send_command('unbind ^numpad0')
	send_command('unbind ^numpad1')
	send_command('unbind ^numpad2')
	send_command('unbind ^numpad3')
	send_command('unbind ^numpad4')
	send_command('unbind ^numpad5')
	send_command('unbind ^numpad6')
	send_command('unbind ^numpad7')
	send_command('unbind ^numpad8')
	send_command('unbind ^numpad9')
	
	send_command('unbind !numpad0')
	send_command('unbind !numpad1')
	send_command('unbind !numpad2')
	send_command('unbind !numpad3')
	send_command('unbind !numpad4')
	send_command('unbind !numpad5')
	send_command('unbind !numpad6')
	send_command('unbind !numpad7')
	send_command('unbind !numpad8')
	send_command('unbind !numpad9')
end


function get_sets() 
	--Calls spell mapping (don't remove)
	maps()


	-- Set Macro Book/Set Here	
	set_macros(1,7)
	---Set Lockstyle Here
	set_style(19)	
	
	--SubJob list--
	--Do not change these
	sets.SJ = {}
	sets.SJ.index = {"Other", "Ninja", "Dancer"}
	SJ_ind = 1	


	--Weapon Sets--
	sets.Weapon_melee = {} -- sets weapon combo for melee-mode
	sets.Weapon_melee.index = {"Kaja Sword", "LightDamage", "Enspell", "Excalibur", "Sequence", "Tauret", "lolRange", "Endagger"}
	Wm_ind = 1
	sets.Weapon_melee.Naegling = {
		main = "Kaja Sword",
		sub = "Machaera +2",
		ammo = "Coiste Bodhar"
	}
	sets.Weapon_melee.LightDamage = {
		main = "Vitiation Sword",
		sub = "Daybreak",
		ammo = "Coiste Bodhar"
	}
	sets.Weapon_melee.Enspell = {
		main = "Vitiation Sword",
		sub = "Ternion Dagger +1",
		range = "Ullr"
	}
	sets.Weapon_melee.Excalibur = {
		main = "Excalibur",
		sub = "Ternion Dagger +1",
		ammo = "Coiste Bodhar"
	}
	sets.Weapon_melee.Sequence = {
		main = "Sequence",
		sub = "Machaera +2",
		ammo = "Coiste Bodhar"
	}	
	sets.Weapon_melee.Tauret = {
		main = "Tauret",
		sub = "Gleti's Knife",
		ammo = "Coiste Bodhar"
	}
	--Next two intended for use with Ullr toggle active
	sets.Weapon_melee.lolRange = {
		main = "Vitiation Sword",
		sub = "Bunzi's Rod"
	}
	sets.Weapon_melee.Endagger = {
		main = "Esikuva",
		sub = "Norgish Dagger"
	}	

	-- sets weapon combo for ranged use
	-- for SC compatibility, Enspell MAcc, and niche Flaming Arrow shenanigans
	sets.Weapon_range = {} 
	sets.Weapon_range.index = {"none", "Ullr"} 
	Wr_ind = 1
	sets.Weapon_range.Ullr = {
		range = "Ullr",
		ammo = "Beryllium Arrow"
	}
	sets.Weapon_range.none = {}


	sets.DW_mode = {}
	sets.DW_mode.index = {"DW", "notDW"}
	DW_mode_ind = 1

	sets.DW_mode.DW = {}
	sets.DW_mode.notDW = {sub = "Sacro Bulwark"} -- 0/0/10


	--Idle Sets--
	-- mage-mode
	sets.Idle = {}
	sets.Idle.index = {"Standard", "DT", "Refresh"}
	Idle_ind = 1
	
	sets.Idle.Standard = {
	ammo="Staunch Tathlum",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Twilight Torque",
    waist="Flume Belt",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    right_ear="Eabani Earring",
    left_ring="Defending Ring",
    right_ring="Shneddick Ring",
    back={ name="Sucellos's Cape", augments={'"Dual Wield"+10',}},} 
	
	sets.Idle.DT = {
	ammo="Staunch Tathlum",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Twilight Torque",
    waist="Flume Belt",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    right_ear="Eabani Earring",
    left_ring="Defending Ring",
    right_ring="Shneddick Ring",
    back={ name="Sucellos's Cape", augments={'"Dual Wield"+10',}},} 
	
	sets.Idle.Refresh = {
	ammo="Homiliary",
    head={ name="Viti. Chapeau +1", augments={'Enfeebling Magic duration','Magic Accuracy',}},
    body="Jhakri Robe +1",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Twilight Torque",
    waist="Flume Belt",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    right_ear="Eabani Earring",
    left_ring="Defending Ring",
    right_ring="Shneddick Ring",
    back={ name="Sucellos's Cape", augments={'"Dual Wield"+10',}},} 
	
	-- melee-mode (DW)
	sets.Idle_melee_DW = {}
	sets.Idle_melee_DW.index = {"Standard", "DT", "Refresh"}
	Idle_melee_DW_ind = 1
	
	sets.Idle_melee_DW.Standard = {
	ammo="Ginsen",
    head="Aya. Zucchetto +1",
    body="Ayanmo Corazza +2",
    hands="Nyame Gauntlets",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet={ name="Carmine Greaves +1", augments={'HP+80','MP+80','Phys. dmg. taken -4',}},
    neck="Sanctity Necklace",
    waist="Windbuffet Belt +1",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    right_ear="Telos Earring",
    left_ring="Petrov Ring",
    right_ring="Ayanmo Ring",
    back={ name="Sucellos's Cape", augments={'"Dual Wield"+10',}},} -- 20/3/33
	
	sets.Idle_melee_DW.DT = {
	ammo="Ginsen",
    head="Aya. Zucchetto +1",
    body="Ayanmo Corazza +2",
    hands="Nyame Gauntlets",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet={ name="Carmine Greaves +1", augments={'HP+80','MP+80','Phys. dmg. taken -4',}},
    neck="Sanctity Necklace",
    waist="Windbuffet Belt +1",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    right_ear="Telos Earring",
    left_ring="Petrov Ring",
    right_ring="Ayanmo Ring",
    back={ name="Sucellos's Cape", augments={'"Dual Wield"+10',}},} -- 20/3/31
	
	sets.Idle_melee_DW.Refresh = {
	ammo="Ginsen",
    head="Aya. Zucchetto +1",
    body="Ayanmo Corazza +2",
    hands="Nyame Gauntlets",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet={ name="Carmine Greaves +1", augments={'HP+80','MP+80','Phys. dmg. taken -4',}},
    neck="Sanctity Necklace",
    waist="Windbuffet Belt +1",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    right_ear="Telos Earring",
    left_ring="Petrov Ring",
    right_ring="Ayanmo Ring",
    back={ name="Sucellos's Cape", augments={'"Dual Wield"+10',}},} -- 20/3/27
	
	-- melee-mode (Single-Wield)
	sets.Idle_melee_SW = {}
	sets.Idle_melee_SW.index = {"Standard", "DT", "Refresh"}
	Idle_melee_SW_ind = 1
	
	sets.Idle_melee_SW.Standard = {
	ammo="Ginsen",
    head="Aya. Zucchetto +1",
    body="Ayanmo Corazza +2",
    hands="Nyame Gauntlets",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet={ name="Carmine Greaves +1", augments={'HP+80','MP+80','Phys. dmg. taken -4',}},
    neck="Sanctity Necklace",
    waist="Windbuffet Belt +1",
    left_ear="Cessance Earring",
    right_ear="Telos Earring",
    left_ring="Petrov Ring",
    right_ring="Ayanmo Ring",
    back={ name="Sucellos's Cape", augments={'"Dual Wield"+10',}},} -- 20/3/24	
	
	sets.Idle_melee_SW.DT = {
	ammo="Ginsen",
    head="Aya. Zucchetto +1",
    body="Ayanmo Corazza +2",
    hands="Nyame Gauntlets",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet={ name="Carmine Greaves +1", augments={'HP+80','MP+80','Phys. dmg. taken -4',}},
    neck="Sanctity Necklace",
    waist="Windbuffet Belt +1",
    left_ear="Cessance Earring",
    right_ear="Telos Earring",
    left_ring="Petrov Ring",
    right_ring="Ayanmo Ring",
    back={ name="Sucellos's Cape", augments={'"Dual Wield"+10',}},} -- 20/3/32
	
	sets.Idle_melee_SW.Refresh = {
	ammo="Ginsen",
    head="Aya. Zucchetto +1",
    body="Ayanmo Corazza +2",
    hands="Nyame Gauntlets",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet={ name="Carmine Greaves +1", augments={'HP+80','MP+80','Phys. dmg. taken -4',}},
    neck="Sanctity Necklace",
    waist="Windbuffet Belt +1",
    left_ear="Cessance Earring",
    right_ear="Telos Earring",
    left_ring="Petrov Ring",
    right_ring="Ayanmo Ring",
    back={ name="Sucellos's Cape", augments={'"Dual Wield"+10',}},} -- 27/2/24	


	--TP Sets--
	sets.TP = {}
	sets.TP.index = {"Standard", "DT", "Enspells_high_damage"}
	TP_ind = 1

	sets.TP.Standard = {}
	sets.TP.Standard.index = {"Other", "Ninja", "Dancer"}
	sets.TP.Standard.Other = {
	ammo="Ginsen",
    head="Aya. Zucchetto +1",
    body="Ayanmo Corazza +2",
    hands="Nyame Gauntlets",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet={ name="Carmine Greaves +1", augments={'HP+80','MP+80','Phys. dmg. taken -4',}},
    neck="Sanctity Necklace",
    waist="Windbuffet Belt +1",
    left_ear="Cessance Earring",
    right_ear="Telos Earring",
    left_ring="Petrov Ring",
    right_ring="Ayanmo Ring",
    back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +2','Enha.mag. skill +4','Mag. Acc.+5','Enh. Mag. eff. dur. +20',}},} 
	
	sets.TP.Standard.Ninja = {
    ammo="Ginsen",
    head="Aya. Zucchetto +1",
    body="Ayanmo Corazza +2",
    hands="Nyame Gauntlets",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet={ name="Carmine Greaves +1", augments={'HP+80','MP+80','Phys. dmg. taken -4',}},
    neck="Sanctity Necklace",
    waist="Windbuffet Belt +1",
    left_ear="Suppanomimi",
    right_ear="Telos Earring",
    left_ring="Petrov Ring",
    right_ring="Ayanmo Ring",
    back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +2','Enha.mag. skill +4','Mag. Acc.+5','Enh. Mag. eff. dur. +20',}},} 
	
	sets.TP.Standard.Dancer = {
	ammo="Ginsen",
    head="Aya. Zucchetto +1",
    body="Ayanmo Corazza +2",
    hands="Nyame Gauntlets",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet={ name="Carmine Greaves +1", augments={'HP+80','MP+80','Phys. dmg. taken -4',}},
    neck="Sanctity Necklace",
    waist="Windbuffet Belt +1",
    left_ear="Suppanomimi",
    right_ear="Telos Earring",
    left_ring="Petrov Ring",
    right_ring="Ayanmo Ring",
    back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +2','Enha.mag. skill +4','Mag. Acc.+5','Enh. Mag. eff. dur. +20',}},} 

	sets.TP.DT = {}
	sets.TP.DT.index = {"Other", "Ninja", "Dancer"}
	sets.TP.DT.Other = {
	ammo="Ginsen",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Fotia Gorget",
    waist="Flume Belt",
    left_ear="Telos Earring",
    right_ear="Cessance Earring",
    left_ring="Defending Ring",
    right_ring="Ayanmo Ring",
    back="Moonbeam Cape",} 
	
	sets.TP.DT.Ninja = {
	ammo="Ginsen",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Fotia Gorget",
    waist="Flume Belt",
    left_ear="Eabani Earring",
    right_ear="Suppanomimi",
    left_ring="Defending Ring",
    right_ring="Ayanmo Ring",
    back="Moonbeam Cape",} 
	
	sets.TP.DT.Dancer = {
	ammo="Ginsen",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Fotia Gorget",
    waist="Flume Belt",
    left_ear="Eabani Earring",
    right_ear="Suppanomimi",
    left_ring="Defending Ring",
    right_ring="Ayanmo Ring",
    back="Moonbeam Cape",} 

	-- Enspell-Focused sets
	sets.TP.Enspells_high_damage = {}
	sets.TP.Enspells_high_damage.index = {"Other", "Ninja", "Dancer"}
	sets.TP.Enspells_high_damage.Other = {
	hands="Aya. Manopolas +1",
    back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +2','Enha.mag. skill +4','Mag. Acc.+5','Enh. Mag. eff. dur. +20',}},} 

	sets.TP.Enspells_high_damage.Ninja = {
	hands="Aya. Manopolas +1",
    back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +2','Enha.mag. skill +4','Mag. Acc.+5','Enh. Mag. eff. dur. +20',}},}
	
	sets.TP.Enspells_high_damage.Dancer = {
	hands="Aya. Manopolas +1",
    back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +2','Enha.mag. skill +4','Mag. Acc.+5','Enh. Mag. eff. dur. +20',}},} 
	

	sets.Ranged = {}
	sets.Ranged.index = {"Standard", "HighAccuracy"}
	Ranged_ind = 1
	
	sets.Ranged.Standard = {}
	
	sets.Ranged.HighAccuracy = {}


	--Weaponskill Sets--
	--Sword
	sets.WS = {}
	sets.WS.index = {"Attack", "AttackCapped"}
	WS_ind = 1

	sets.Knights = {} -- leave blank
	sets.Knights.Attack = {}
	
	sets.Knights.AttackCapped = {}

	sets.SavageBlade = {} -- leave blank
	sets.SavageBlade.Attack = {
	ammo="Yetshila",
    head={ name="Viti. Chapeau +1", augments={'Enfeebling Magic duration','Magic Accuracy',}},
    body="Lethargy Sayon +1",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    right_ear="Lifestorm Earring",
    left_ring="Rufescent Ring",
    right_ring="Stikini Ring",
    back="Pahtli Cape",}
	
	sets.SavageBlade.AttackCapped = {
	ammo="Yetshila",
    head={ name="Viti. Chapeau +1", augments={'Enfeebling Magic duration','Magic Accuracy',}},
    body="Lethargy Sayon +1",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    right_ear="Lifestorm Earring",
    left_ring="Rufescent Ring",
    right_ring="Stikini Ring",
    back="Pahtli Cape",}
	
	sets.DeathBlossom = {} -- leave blank
	sets.DeathBlossom.Attack = {
	ammo="Yetshila",
    head={ name="Viti. Chapeau +1", augments={'Enfeebling Magic duration','Magic Accuracy',}},
    body="Lethargy Sayon +1",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    right_ear="Lifestorm Earring",
    left_ring="Rufescent Ring",
    right_ring="Stikini Ring",
    back="Pahtli Cape",}
	
	sets.DeathBlossom.AttackCapped = {
	ammo="Yetshila",
    head={ name="Viti. Chapeau +1", augments={'Enfeebling Magic duration','Magic Accuracy',}},
    body="Lethargy Sayon +1",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    right_ear="Lifestorm Earring",
    left_ring="Rufescent Ring",
    right_ring="Stikini Ring",
    back="Pahtli Cape",}
	
	sets.CDC = {} -- leave blanks
	sets.CDC.Attack = {
	ammo="Yetshila",
    head={ name="Taeon Chapeau", augments={'Mag. Evasion+18','"Conserve MP"+5','Phalanx +3',}},
    body={ name="Taeon Tabard", augments={'"Fast Cast"+5','"Regen" potency+3',}},
    hands={ name="Taeon Gloves", augments={'"Fast Cast"+5','"Regen" potency+3',}},
    legs={ name="Taeon Tights", augments={'Mag. Evasion+16','Spell interruption rate down -9%','Phalanx +3',}},
    feet="Aya. Gambieras +1",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    right_ear="Telos Earring",
    left_ring="Rufescent Ring",
    right_ring="Ramuh Ring",
    back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +2','Enha.mag. skill +4','Mag. Acc.+5','Enh. Mag. eff. dur. +20',}},}
	
	sets.CDC.AttackCapped = {
	ammo="Yetshila",
    head={ name="Taeon Chapeau", augments={'Mag. Evasion+18','"Conserve MP"+5','Phalanx +3',}},
    body={ name="Taeon Tabard", augments={'"Fast Cast"+5','"Regen" potency+3',}},
    hands={ name="Taeon Gloves", augments={'"Fast Cast"+5','"Regen" potency+3',}},
    legs={ name="Taeon Tights", augments={'Mag. Evasion+16','Spell interruption rate down -9%','Phalanx +3',}},
    feet="Aya. Gambieras +1",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    right_ear="Telos Earring",
    left_ring="Rufescent Ring",
    right_ring="Ramuh Ring",
    back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +2','Enha.mag. skill +4','Mag. Acc.+5','Enh. Mag. eff. dur. +20',}},}

	sets.Requiescat = {} -- leave blank
	sets.Requiescat.Attack = {}
	
	sets.Requiescat.AttackCapped = {}	
	
	sets.SanguineBlade = {} -- leave blank
	sets.SanguineBlade.Attack = {}
	
	sets.SanguineBlade.AttackCapped = {}

	sets.RedLotusBlade = {} -- leave blank
	sets.RedLotusBlade.Attack = {}
	
	sets.RedLotusBlade.AttackCapped = {}	
	
	sets.BurningBlade = {} -- leave blank
	sets.BurningBlade.Attack = {}
	
	sets.BurningBlade.AttackCapped = {}	
	
	sets.SeraphBlade = {} -- leave blank
	sets.SeraphBlade.Attack = {}
	
	sets.SeraphBlade.AttackCapped = {}

	sets.ShiningBlade = {}
	sets.ShiningBlade.Attack = {}
	
	sets.ShiningBlade.AttackCapped = {}	

	--Dagger
	sets.Evisceration = {}
	sets.Evisceration.Attack = {}
	
	sets.Evisceration.AttackCapped = {}
	
	sets.AeolianEdge = {}
	sets.AeolianEdge.Attack = {}
	
	sets.AeolianEdge.AttackCapped = {}

	--Club
	sets.BlackHalo = {}
	sets.BlackHalo.Attack = {}
	
	sets.BlackHalo.AttackCapped = {}
	
	sets.TrueStrike = {}
	sets.TrueStrike.Attack = {}
	
	sets.TrueStrike.AttackCapped = {}	
	
	sets.ShiningStrike = {}
	sets.ShiningStrike.Attack = {}
	
	sets.ShiningStrike.AttackCapped = {}	
	
	sets.SeraphStrike = {}
	sets.SeraphStrike.Attack = {}
	
	sets.SeraphStrike.AttackCapped = {}		
	
	--Ranged
	sets.FlamingArrow = {}
	sets.FlamingArrow.Attack = {}
	
	sets.FlamingArrow.AttackCapped = {}	
	
	sets.EmpyrealArrow = {}
	sets.EmpyrealArrow.Attack = {}
	
	sets.EmpyrealArrow.AttackCapped = {}	

	
	--All Other
	sets.OtherWS = {}
	sets.OtherWS.Attack = {}
	
	sets.OtherWS.Accuracy = {}

	sets.RangedWS = {}
	sets.RangedWS.Attack = {}
	
	sets.RangedWS.Accuracy = {}

	--Job Ability Sets--
	sets.JA = {}
	sets.JA.Chainspell = {body = ""}
	sets.JA.Convert = {main = ""}
	
	sets.Waltz ={}
	
	sets.precast = {}
	sets.precast.FastCast = {
	ammo="Ginsen",
    head="Atro. Chapeau +1",
    body={ name="Viti. Tabard +1", augments={'Enhances "Chainspell" effect',}},
    hands={ name="Gende. Gages +1", augments={'Phys. dmg. taken -4%','"Cure" spellcasting time -5%',}},
    legs="Aya. Cosciales +2",
    feet={ name="Carmine Greaves +1", augments={'HP+80','MP+80','Phys. dmg. taken -4',}},
    neck="Voltsurge Torque",
    waist="Embla Sash",
    left_ear="Loquac. Earring",
    right_ear="Etiolation Earring",
    left_ring="Lebeche Ring",
    right_ring="Prolix Ring",
    back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +2','Enha.mag. skill +4','Mag. Acc.+5','Enh. Mag. eff. dur. +20',}},} -- 
	
	sets.precast.FastCast_impact = {
	ammo="Ginsen",
    head="Atro. Chapeau +1",
    body={ name="Viti. Tabard +1", augments={'Enhances "Chainspell" effect',}},
    hands={ name="Gende. Gages +1", augments={'Phys. dmg. taken -4%','"Cure" spellcasting time -5%',}},
    legs="Aya. Cosciales +2",
    feet={ name="Carmine Greaves +1", augments={'HP+80','MP+80','Phys. dmg. taken -4',}},
    neck="Voltsurge Torque",
    waist="Embla Sash",
    left_ear="Loquac. Earring",
    right_ear="Etiolation Earring",
    left_ring="Lebeche Ring",
    right_ring="Prolix Ring",
    back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +2','Enha.mag. skill +4','Mag. Acc.+5','Enh. Mag. eff. dur. +20',}},} -- 
	
	--This is here if you need it for Utsusemi
	sets.precast.NinjutsuFastCast = set_combine(sets.precast.FastCast, {})
	
	sets.midcast = {}
	-- FC here will lower recasts until cap, but its a good idea to put -DT% in midcasts
	sets.midcast.FastRecast = {} --  

	--Weapon combos specific to mage-only mode
	sets.Weapon_magic = {}
	sets.Weapon_magic.Enhancing_skill_SW = {} -- 
	sets.Weapon_magic.Enhancing_skill_DW = {} -- 
	sets.Weapon_magic.Enhancing_duration_SW = {} -- 

	sets.Weapon_magic.Enhancing_phalanx_SW = {
	ammo="Ombre Tathlum",
    head={ name="Taeon Chapeau", augments={'Mag. Evasion+18','"Conserve MP"+5','Phalanx +3',}},
    body={ name="Taeon Tabard", augments={'Mag. Evasion+15','Spell interruption rate down -10%','Phalanx +3',}},
    hands={ name="Taeon Gloves", augments={'Mag. Evasion+15','Spell interruption rate down -9%','Phalanx +3',}},
    legs={ name="Taeon Tights", augments={'Mag. Evasion+16','Spell interruption rate down -9%','Phalanx +3',}},
    feet={ name="Taeon Boots", augments={'Mag. Evasion+16','Spell interruption rate down -10%','Phalanx +3',}},
    neck="Melic Torque",
    waist="Olympus Sash",
    left_ear="Etiolation Earring",
    right_ear="Mimir Earring",
    left_ring="Stikini Ring",
    right_ring="Stikini Ring",
    back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +2','Enha.mag. skill +4','Mag. Acc.+5','Enh. Mag. eff. dur. +20',}},} 
	
	sets.Weapon_magic.Enhancing_phalanx_DW = {
	ammo="Ombre Tathlum",
    head={ name="Taeon Chapeau", augments={'Mag. Evasion+18','"Conserve MP"+5','Phalanx +3',}},
    body={ name="Taeon Tabard", augments={'Mag. Evasion+15','Spell interruption rate down -10%','Phalanx +3',}},
    hands={ name="Taeon Gloves", augments={'Mag. Evasion+15','Spell interruption rate down -9%','Phalanx +3',}},
    legs={ name="Taeon Tights", augments={'Mag. Evasion+16','Spell interruption rate down -9%','Phalanx +3',}},
    feet={ name="Taeon Boots", augments={'Mag. Evasion+16','Spell interruption rate down -10%','Phalanx +3',}},
    neck="Melic Torque",
    waist="Olympus Sash",
    left_ear="Etiolation Earring",
    right_ear="Mimir Earring",
    left_ring="Stikini Ring",
    right_ring="Stikini Ring",
    back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +2','Enha.mag. skill +4','Mag. Acc.+5','Enh. Mag. eff. dur. +20',}},} 
	
	sets.Weapon_magic.Enhancing_regen_SW = {
	ammo="Oreiad's Tathlum",
    head={ name="Telchine Cap", augments={'Enh. Mag. eff. dur. +10',}},
    body={ name="Telchine Chas.", augments={'Enh. Mag. eff. dur. +10',}},
    hands={ name="Telchine Gloves", augments={'Enh. Mag. eff. dur. +10',}},
    legs={ name="Telchine Braconi", augments={'Enh. Mag. eff. dur. +10',}},
    feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +10',}},
    neck="Melic Torque",
    waist="Olympus Sash",
    left_ear="Etiolation Earring",
    right_ear="Mimir Earring",
    left_ring="Stikini Ring",
    right_ring="Stikini Ring",
    back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +2','Enha.mag. skill +4','Mag. Acc.+5','Enh. Mag. eff. dur. +20',}},} -- 

	--Enhancing Magic
	--Note that any amounts noted are generalization before calculation.
	-- --For example, if the "total duration+" is noted for a set this is not the calculated duration.
	-- --Sets will be calculated for totals in the notes below based on proper weapon combos (assumes mage-mode)
	--
	--
	--Duration Formula:
	-- -- (Base Duration + (6s × RDM Group 2 Merit Point Level) + (3s × RDM Relic Hands Group 2 Merit Point Level Augment) 
	-- -- + RDM Job Points + Gear that list Seconds) × (Augments Composure Bonus) × (Duration listed on Gear + Naturalist's Roll) 
	-- -- × (Duration Augments on Gear) × (Rune Fencer Gifts) = Duration
	
	
	--Skill -> Duration+ -> CMP
	--Uncapped Skill Spells: Enspells | Gain-spells | Temper | Temper II
	sets.midcast.Enhancing_skill = {} -- 
	
	--Skill -> Duration+ -> CMP
	--Uncapped Skill Spells (others): Enspells
	sets.midcast.Enhancing_skill_other = {} -- 
	
	-- Redundant set, left in for future gear considerations
	-- --Skill -> Duration+ -> CMP
	-- --Uncapped Skill Spells (others): Enspells
	-- sets.midcast.Enhancing_skill_other_composure = {
		-- head = "Lethargy Chappel +1", -- (35*)
		-- neck = "Incanter's Torque", -- +10
        -- body = "Lethargy Sayon +1", -- (35*)
		-- ear1 = "Mimir Earring", -- +10
		-- ear2 = "Andoaa Earring", -- +5
		-- hands = "Atrophy Gloves +3", -- (20)
		-- ring1 = "Stikini Ring", -- +5
		-- ring2 = "Stikini Ring", -- +5
        -- back = "Ghostfyre Cape", -- +7(20**)
		-- waist = "Olympus Sash", -- +5
		-- legs = "Leth. Fuseau +1", -- (35*)
		-- feet = "Lethargy Houseaux +1" -- +25 (30 + 35*)
	-- } -- +72 skill	| +105% Duration (* indicates set total - 4 pieces) (** denotes augmented +% duration)
	
	--Duration+ -> CMP
	--Skill-less spells: Haste / Protect / Shell / Storm
	sets.midcast.Enhancing_duration = {
	ammo="Oreiad's Tathlum",
    head={ name="Telchine Cap", augments={'Enh. Mag. eff. dur. +10',}},
    body={ name="Telchine Chas.", augments={'Enh. Mag. eff. dur. +10',}},
    hands="Atrophy Gloves +1",
    legs="Atrophy Tights +1",
    feet="Leth. Houseaux +1",
    neck="Melic Torque",
    waist="Olympus Sash",
    left_ear="Etiolation Earring",
    right_ear="Mimir Earring",
    left_ring="Sheltered Ring",
    right_ring="Stikini Ring",
    back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +2','Enha.mag. skill +4','Mag. Acc.+5','Enh. Mag. eff. dur. +20',}},} -- 
	
	--Duration+ -> CMP
	--Skill-less spells: Haste / Protect / Shell / Storm
	sets.midcast.Enhancing_duration_other = {
	ammo="Oreiad's Tathlum",
    head={ name="Telchine Cap", augments={'Enh. Mag. eff. dur. +10',}},
    body={ name="Telchine Chas.", augments={'Enh. Mag. eff. dur. +10',}},
    hands="Atrophy Gloves +1",
    legs="Atrophy Tights +1",
    feet="Leth. Houseaux +1",
    neck="Melic Torque",
    waist="Olympus Sash",
    left_ear="Etiolation Earring",
    right_ear="Mimir Earring",
    left_ring="Sheltered Ring",
    right_ring="Stikini Ring",
    back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +2','Enha.mag. skill +4','Mag. Acc.+5','Enh. Mag. eff. dur. +20',}},} -- 
	
	--Composure duration is self buff only for this spell, nothing else affects this due to being Dark Magic
	-- -- This only exists as future-proofing in the unlikely event SE changes Klimaform 
	sets.midcast.Enhancing_duration_other_klimaform = {
	ammo="Oreiad's Tathlum",
    head={ name="Telchine Cap", augments={'Enh. Mag. eff. dur. +10',}},
    body={ name="Telchine Chas.", augments={'Enh. Mag. eff. dur. +10',}},
    hands="Atrophy Gloves +1",
    legs="Atrophy Tights +1",
    feet="Leth. Houseaux +1",
    neck="Melic Torque",
    waist="Olympus Sash",
    left_ear="Etiolation Earring",
    right_ear="Mimir Earring",
    left_ring="Sheltered Ring",
    right_ring="Stikini Ring",
    back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +2','Enha.mag. skill +4','Mag. Acc.+5','Enh. Mag. eff. dur. +20',}},} -- 
	
	--Phalanx+ -> 500 Skill -> Duration+ -> CMP
	--Spells: Phalanx
	sets.midcast.Enhancing_phalanx = {
	ammo="Ombre Tathlum",
    head={ name="Taeon Chapeau", augments={'Mag. Evasion+18','"Conserve MP"+5','Phalanx +3',}},
    body={ name="Taeon Tabard", augments={'Mag. Evasion+15','Spell interruption rate down -10%','Phalanx +3',}},
    hands={ name="Taeon Gloves", augments={'Mag. Evasion+15','Spell interruption rate down -9%','Phalanx +3',}},
    legs={ name="Taeon Tights", augments={'Mag. Evasion+16','Spell interruption rate down -9%','Phalanx +3',}},
    feet={ name="Taeon Boots", augments={'Mag. Evasion+16','Spell interruption rate down -10%','Phalanx +3',}},
    neck="Melic Torque",
    waist="Olympus Sash",
    left_ear="Etiolation Earring",
    right_ear="Mimir Earring",
    left_ring="Stikini Ring",
    right_ring="Stikini Ring",
    back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +2','Enha.mag. skill +4','Mag. Acc.+5','Enh. Mag. eff. dur. +20',}},}  
	
	--Hit 500 skill -> Duration+ -> CMP
	--Spells: Phalanx / Phalanx II
	sets.midcast.Enhancing_phalanx_other = {
	ammo="Ombre Tathlum",
    head={ name="Taeon Chapeau", augments={'Mag. Evasion+18','"Conserve MP"+5','Phalanx +3',}},
    body={ name="Taeon Tabard", augments={'Mag. Evasion+15','Spell interruption rate down -10%','Phalanx +3',}},
    hands={ name="Taeon Gloves", augments={'Mag. Evasion+15','Spell interruption rate down -9%','Phalanx +3',}},
    legs={ name="Taeon Tights", augments={'Mag. Evasion+16','Spell interruption rate down -9%','Phalanx +3',}},
    feet={ name="Taeon Boots", augments={'Mag. Evasion+16','Spell interruption rate down -10%','Phalanx +3',}},
    neck="Melic Torque",
    waist="Olympus Sash",
    left_ear="Etiolation Earring",
    right_ear="Mimir Earring",
    left_ring="Stikini Ring",
    right_ring="Stikini Ring",
    back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +2','Enha.mag. skill +4','Mag. Acc.+5','Enh. Mag. eff. dur. +20',}},}  
	
	--Hit 355 Skill -> Aquaveil+ -> Duration+ -> CMP
	--Spells: Aquaveil
	sets.midcast.Enhancing_aquaveil = {
	ammo="Oreiad's Tathlum",
    head={ name="Telchine Cap", augments={'Enh. Mag. eff. dur. +10',}},
    body={ name="Telchine Chas.", augments={'Enh. Mag. eff. dur. +10',}},
    hands="Atrophy Gloves +1",
    legs="Atrophy Tights +1",
    feet="Leth. Houseaux +1",
    neck="Melic Torque",
    waist="Olympus Sash",
    left_ear="Etiolation Earring",
    right_ear="Mimir Earring",
    left_ring="Sheltered Ring",
    right_ring="Stikini Ring",
    back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +2','Enha.mag. skill +4','Mag. Acc.+5','Enh. Mag. eff. dur. +20',}},} -- 
	
	--Stoneskin+ -> Duration+ -> CMP
	--Spells: Stoneskin
	sets.midcast.Enhancing_stoneskin = {
	ammo="Oreiad's Tathlum",
    head={ name="Telchine Cap", augments={'Enh. Mag. eff. dur. +10',}},
    body={ name="Telchine Chas.", augments={'Enh. Mag. eff. dur. +10',}},
    hands="Atrophy Gloves +1",
    legs="Atrophy Tights +1",
    feet="Leth. Houseaux +1",
    neck="Melic Torque",
    waist="Olympus Sash",
    left_ear="Etiolation Earring",
    right_ear="Mimir Earring",
    left_ring="Sheltered Ring",
    right_ring="Stikini Ring",
    back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +2','Enha.mag. skill +4','Mag. Acc.+5','Enh. Mag. eff. dur. +20',}},} -- 
	
	--Refresh+ -> Duration+ -> CMP
	--Spells: Refresh / Refresh II
	sets.midcast.Enhancing_refresh = {
	ammo="Oreiad's Tathlum",
    head={ name="Viti. Chapeau +1", augments={'Enfeebling Magic duration','Magic Accuracy',}},
    body="Atrophy Tabard +1",
    hands="Atrophy Gloves +1",
    legs="Leth. Fuseau +1",
    feet="Leth. Houseaux +1",
    neck="Melic Torque",
    waist="Olympus Sash",
    left_ear="Etiolation Earring",
    right_ear="Mimir Earring",
    left_ring="Sheltered Ring",
    right_ring="Stikini Ring",
    back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +2','Enha.mag. skill +4','Mag. Acc.+5','Enh. Mag. eff. dur. +20',}},} -- 
	
	--Refresh+ -> Duration+ -> CMP
	--Spells: Refresh / Refresh II
	sets.midcast.Enhancing_refresh_other = {
	ammo="Oreiad's Tathlum",
    head={ name="Viti. Chapeau +1", augments={'Enfeebling Magic duration','Magic Accuracy',}},
    body="Atrophy Tabard +1",
    hands="Atrophy Gloves +1",
    legs="Leth. Fuseau +1",
    feet="Leth. Houseaux +1",
    neck="Melic Torque",
    waist="Olympus Sash",
    left_ear="Etiolation Earring",
    right_ear="Mimir Earring",
    left_ring="Sheltered Ring",
    right_ring="Stikini Ring",
    back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +2','Enha.mag. skill +4','Mag. Acc.+5','Enh. Mag. eff. dur. +20',}},} -- 	

	--500 Skill -> Barspell+ -> Duration+ -> CMP
	--Spells: Barstone / Barwater / Baraero / Barfire / Barblizzard / Barthunder
	sets.midcast.Enhancing_barspell = {} -- 
	
	--500 Skill -> Barspell+ -> Duration+ -> CMP
	--Spells: Barstone / Barwater / Baraero / Barfire / Barblizzard / Barthunder
	--			Barstonra / Barwatera / Baraera / Barfira / Barblizzara / Barthundra
	sets.midcast.Enhancing_barspell_other = {} -- 

	--Regen+ -> Duration+ -> CMP
	--Skill-less spells: Haste / Protect / Shell
	sets.midcast.Enhancing_regen = {
	ammo="Oreiad's Tathlum",
    head={ name="Telchine Cap", augments={'Enh. Mag. eff. dur. +10',}},
    body={ name="Telchine Chas.", augments={'Enh. Mag. eff. dur. +10',}},
    hands={ name="Telchine Gloves", augments={'Enh. Mag. eff. dur. +10',}},
    legs={ name="Telchine Braconi", augments={'Enh. Mag. eff. dur. +10',}},
    feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +10',}},
    neck="Melic Torque",
    waist="Olympus Sash",
    left_ear="Etiolation Earring",
    right_ear="Mimir Earring",
    left_ring="Stikini Ring",
    right_ring="Stikini Ring",
    back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +2','Enha.mag. skill +4','Mag. Acc.+5','Enh. Mag. eff. dur. +20',}},} -- 	


	--Weapon combos specific to mage-only mode
	sets.Weapon_magic.Enfeebling_skill = {} -- 
	sets.Weapon_magic.Enfeebling_accuracy = {} -- 
	sets.Weapon_magic.Enfeebling_dispelga = {} -- 


	--Enfeebles
	--Note that any amounts noted are generalization before calculation.
	-- --For example, if the "total duration+" is noted for a set this is not the calculated duration.
	-- --Sets will be calculated for totals in the notes below based on proper weapon combos (assumes mage-mode)
	--
	--
	-- Potency Formula:
	-- -- floor(floor((Base Potency × Saboteur) + {dStat Modifier}) × (Enfeebling Magic Effect+ Gear))
	--
	-- Duration Formula:
	-- -- floor[((Base Duration × Saboteur) + (6s × RDM Group 2 Merit Point Level) + (3s × RDM Relic Head Group 2 Merit Point Level Augment) 
	-- -- + RDM Enfeebling Job Points + RDM Stymie Job Points + Gear that list Seconds) × (Augments Composure Bonus) × (Duration listed on Gear) 
	-- -- × (Duration Augments on Gear)] = Duration
	
	
	--Effect+ -> 625 Skill -> MND -> MAcc -> Duration+
	--Spells: Frazzle III | Poison II
	--Theoretical max of -274 MEva possible vs NMs if 625 skill can be reached along with all potency+/Saboteur+ gear
	--Current max skill possible with potency+ is 616 (potential -267 MEva)
	--Capping skill with current sets available provides a max of only 44% potency+ (potential -256 MEva)
	sets.midcast.Enfeebling_skill_frazzle3 = {} -- 
	
	--625 Skill -> Effect+ -> MND -> MAcc -> Duration+
	--Spells: Frazzle III | Poison II
	--Theoretical max of -274 MEva possible vs NMs if 625 skill can be reached along with all potency+/Saboteur+ gear
	--Current max skill possible with potency+ is 616 (potential -267 MEva)
	--Capping skill with current sets available provides a max of only 44% potency+ (potential -256 MEva)
	--This set lacks skill due to no weapon swaps on cast (meleemode)
	sets.midcast.Enfeebling_skill_frazzle3_melee = {} -- 	
	
	--MAcc -> Effect+ -> MND -> Duration+
	--Spells: Frazzle II
	sets.midcast.Enfeebling_skill_frazzle2 = {} -- 
	
	--Effect+ -> 610 Skill -> MND -> MAcc -> Duration+
	--Spells: Distract III
	sets.midcast.Enfeebling_skill_distract3 = {} -- 
	
	--610 Skill -> Effect+ -> MND -> MAcc -> Duration+
	--Spells: Distract III
	--This set lacks skill due to no weapon swaps on cast (meleemode)
	sets.midcast.Enfeebling_skill_distract3_melee = {} -- 
	
	--Effect+ -> MND -> MAcc -> Duration+
	--Spells: Slow II | Paralyze II | Addle II
	sets.midcast.Enfeebling_MND = {} -- 
	
	--Effect+ -> Duration+
	--Spells: Dia III | Inundation (Due to being longest duration normal set)
	sets.midcast.Enfeebling_effect = {} -- 
	
	--MAcc -> Duration+
	--Spells: Sleep | Sleep II | Sleepga | Bind | Break | Dispel | Dispelga
	--			Gravity | Gravity II | Blind* | Blind II* | Silence
	--			Burn | Choke | Shock | Drown | Rasp | Frost
	-- (*Technically dINT-Based, but landing is often more important than ~5-50 Acc Down lost)
	sets.midcast.Enfeebling_macc = {} -- 
	
	--MAcc -> CMP
	--Spells: Impact
	--Not Enfeebling Magic, but MAcc is paramount for the spell
	sets.midcast.Enfeebling_impact = {} -- 
	
	--Stymie / Elemental Seal
	--Effect+ -> Lethargy Set Bonus / Duration+ -> Skill -> Mods
	--Best used with Composure bonuses for long, long enfeebs aside from just ensuring something lands.
	-- --Not optimal for potency, Frazzle III / Distract III will be excluded from this set
	-- --in the rules below to stop players from landing bad enfeebles.
	sets.midcast.Enfeebling_stymie = {} -- 

	
	--White Magic
	--Cures
	sets.midcast.Cure = {
	main="Chatoyant Staff",
    sub="Achaq Grip",
	ammo="Oreiad's Tathlum",
    head={ name="Vanya Hood", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
    body={ name="Vanya Robe", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
    hands={ name="Vanya Cuffs", augments={'MP+50','"Cure" potency +7%','Enmity-6',}},
    legs={ name="Vanya Slops", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
    feet={ name="Vanya Clogs", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}},
    neck="Incanter's Torque",
    waist="Gishdubar Sash",
    left_ear="Healing Earring",
    right_ear="Beatific Earring",
    left_ring="Ephedra Ring",
    right_ring="Haoma's Ring",
    back="Tempered Cape +1",} -- 
	
	sets.midcast.Cure_melee = {
	ammo="Oreiad's Tathlum",
    head={ name="Vanya Hood", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
    body={ name="Vanya Robe", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
    hands={ name="Vanya Cuffs", augments={'MP+50','"Cure" potency +7%','Enmity-6',}},
    legs={ name="Vanya Slops", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
    feet={ name="Vanya Clogs", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}},
    neck="Incanter's Torque",
    waist="Gishdubar Sash",
    left_ear="Healing Earring",
    right_ear="Beatific Earring",
    left_ring="Ephedra Ring",
    right_ring="Haoma's Ring",
    back="Tempered Cape +1",} -- 
	
	--Cursna+ -> Healing Skill -> Haste -> FastCast
	sets.midcast.Cursna = {}

	--Banish Effect+
	sets.midcast.Banish_effect = {}


	--Black Magic
	--Elemental
	sets.Weapon_magic.Elemental_mab = {} -- 
	
	sets.midcast.Elemental_mab = {} -- +196 MAcc / +312 MAB
	
	sets.midcast.Elemental_burst = {} -- 31 MBB / 32 MBBII | +208 MAcc / +271 MAB
	
	sets.midcast.Elemental_burst_melee = {} -- 40 MBB / 25 MBBII | +221 MAcc / +230 MAB
	
	--Dark
	sets.Weapon_magic.Dark_drain = {} -- +20 Drain/Aspir Potency | +18 Skill | +66 MAcc	
	
	sets.midcast.Dark_drain = {} -- +20 Skill | +218 MAcc | +67 Potency
	sets.midcast.Dark_aspir = sets.midcast.Dark_drain
	
	--Macc -> Skill
	sets.midcast.Dark_stun = {} -- +20 Skill | +325 MAcc

	--Macc -> Skill
	--Only here if you wish to customize these spells
	sets.midcast.Dark_absorb = {} -- +20 Skill | +325 MAcc | +10% Duration / +5% Absorb Effect
	

	--Other special gear--
	sets.obi = {}
	
	sets.Doom = {} -- Actually get the gear for this set. It isnt hard and it makes Doom trivial to remove.
	
	-- Set to be enabled when you are unable to act
	-- Sleep / Terror / Stun / Petrification
	-- You can dance if you want to.
	sets.SafetyDance = {} -- 20/3/35
	
	sets.Enmity = {}
	
	sets.Swipe = {} -- +196 MAcc / +312 MAB
	
	sets.Swipe_MB = {} -- 40 MBB / 25 MBBII | +221 MAcc / +230 MAB

	--Precast Sets--
	--Expand on these sets as your needs require
	--Assumes no Flurry and 5/5 SS merits, +60 needed to cap
	sets.snapshot = {} --21/11
	--Assumes Flurry1 and 5/5 SS merits, +45 needed to cap
	sets.snapshotF1 = {} --21/11
	--Assumes Flurry2 and 5/5 SS merits, +30 needed to cap
	sets.snapshotF2 = {} --21/11

	
	--Determines SJ on load for later use, DO NOT REMOVE--
	determine_sub()	
	prep_startup()
end


------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Do Not Adjust Anything Below This Point Unless You Know What You Are Doing--
------------------------------------------------------------------------------
------------------------------------------------------------------------------
function maps()
	--Mapping--
    Effect_enfeebles = S{
		'Dia', 'Dia II', 'Dia III', 'Diaga', 'Inundation'}
	
	Skill_enfeebles = S{
		'Frazzle III', 'Distract III'}
	
	MAcc_enfeebles = S{
		'Sleep', 'Sleep II', 'Sleepga', 'Silence', 'Dispel', 'Dispelga', 'Bind', 'Break', 'Gravity', 'Gravity II',
		'Blind', 'Blind II', 'Burn', 'Choke', 'Shock', 'Drown', 'Rasp', 'Frost', 'Repose'}
		
	MND_enfeebles = S{'Slow', 'Slow II', 'Paralyze', 'Paralyze II', 'Addle', 'Addle II'}
		
	Cure_spells = S{
		'Cure', 'Cure II', 'Cure III', 'Cure IV', 'Curaga', 'Curaga II', 'Cura',
		'Healing Breeze', 'Wild Carrot'}
	
    Skill_spells = S{
        'Temper', 'Temper II', 'Enfire', 'Enfire II', 'Enblizzard', 'Enblizzard II', 'Enaero', 'Enaero II',
        'Enstone', 'Enstone II', 'Enthunder', 'Enthunder II', 'Enwater', 'Enwater II', 'Gain-STR', 'Gain-DEX', 
		'Gain-VIT', 'Gain-AGI', 'Gain-INT', 'Gain-MND', 'Gain-CHR'}
		
	Duration_spells = S{
		'Haste', 'Haste II', 'Klimaform', 
		'Aurorastorm', 'Voidstorm', 'Sandstorm', 'Rainstorm', 'Windstorm', 'Firestorm', 'Hailstorm', 'Thunderstorm',
		'Protect', 'Protect II', 'Protect III', 'Protect IV', 'Protect V', 'Protectra', 'Protectra II', 'Protectra III', 
		'Shell', 'Shell II', 'Shell III', 'Shell IV', 'Shell V', 'Shellra', 'Shellra II'}
	
	Barspells = S{
		'Barthunder', 'Barblizzard', 'Barfire', 'Baraero', 'Barwater', 'Barstone', 
		'Barthundra', 'Barblizzara', 'Barfira', 'Baraera', 'Barwatera', 'Barstonra', }
	
	Absorb_spells = S{
		'Absorb-STR', 'Absorb-DEX', 'Absorb-VIT', 'Absorb-AGI', 'Absorb-INT', 'Absorb-MND', 'Absorb-CHR', 'Absorb-ACC'}
		
	Nuke_spells = S{
		'Stone', 'Stone II', 'Stone III', 'Stone IV', 'Stone V', 'Stonega', 'Stonega II', 
		'Water', 'Water II', 'Water III', 'Water IV', 'Water V', 'Waterga', 'Waterga II', 
		'Aero', 'Aero II', 'Aero III', 'Aero IV', 'Aero V', 'Aeroga', 'Aeroga II',
		'Fire', 'Fire II', 'Fire III', 'Fire IV', 'Fire V', 'Firaga', 
		'Blizzard', 'Blizzard II', 'Blizzard III', 'Blizzard IV', 'Blizzard V', 'Blizzaga', 
		'Thunder', 'Thunder II', 'Thunder III', 'Thunder IV', 'Thunder V', 'Thundaga'}
		
	Elemental_WS = S{
		'Sanguine Blade', 'Seraph Blade', 'Shining Blade', 'Red Lotus Blade', 'Burning Blade', 
		'Seraph Strike', 'Shining Strike', 'Flaming Arrow', 'Aeolian Edge'}
		
	LethargySet = S{
		'Lethargy Chappel', 'Leth. Chappel +1', 'Lethargy Sayon', 'Lethargy Sayon +1', 'Lethargy Gantherots', 'Lethargy Gantherots +1', 
		'Lethargy Fuseau', 'Leth. Fuseau +1', 'Lethargy Houseaux', 'Leth. Houseaux +1'}	
		
	Unusable_buff = {
		spell={'Charm','Mute','Omerta','Petrification','Silence','Sleep','Stun','Terror'},
		ability={'Amnesia','Charm','Impairment','Petrification','Sleep','Stun','Terror'}}	

	Enmity_actions = S{'Sentinel', 'Shield Bash', 'Souleater', 'Weapon Bash', 'Vallation', 'Swordplay', 'Pflug', 'Provoke'}

	--Master Base Enfeebling Duration Table (seconds)
	duration30 = S{
		'Break', 'Bind'} --No conclusive data found on min Bind duration
	duration60 = S{
		'Sleep', 'Sleepga', 'Gravity II', 'Dia'} --No conclusive data found on min Gravity II duration
	duration90 = S{
		'Sleep II'}
	duration120 = S{
		'Paralyze', 'Paralyze II', 'Silence', 'Gravity', 'Poison', 'Poison II', 'Dia II'}
	duration180 = S{
		'Slow', 'Slow II', 'Blind', 'Blind II', 'Dia III'}
	duration300 = S{
		'Frazzle', 'Frazzle II', 'Frazzle III', 'Distract', 'Distract II', 'Distract III', 'Inundation'}
	------------------------------------------------------------------------------		
end

--Variables
--
-- Sets the default mode for weapons swaps
-- -- Melee(true): Disallows weapon swaps during casts
-- -- Mage(false): Allows weapon swaps during casts
Melee_mode = false


-- Sets the default mode for magic bursts
Burst_mode = false


-- Sets the default mode for weapon lock
Weapon_lock = false 


-- Sets default for Saboteur Mode between NM and regular mobs
Notorious_monster = false


-- Sets Merits/Job Gifts related to Enfeebling Duration for calculations later
-- -- Replace with the # of Merits you have in this cetegory (5 max)
EnfeeblingDurationMerits = 5
-- -- Replace with the # of Job Points you have in this cetegory (20 max)
EnfeeblingDurationGifts = 20
-- -- Replace with the # of Job Points you have in this cetegory (20 max)
StymieDurationGifts = 20 


--Additional related variables
Category2 = 6.00 * EnfeeblingDurationMerits
Category2Head = 3.00 * EnfeeblingDurationMerits
Composure = 1.00
Stymie = 0.00
base = 0.00
FlatGearBonus = 0.00
GearAugments = 1.00
MultiplicativeGearBonus = 1.00
DurationTotal = 0.00

-- Select default macro book on initial load or subjob change.
function set_macros(sheet,book)
    if book then
        send_command('@input /macro book '..tostring(book)..';wait .1;input /macro set '..tostring(sheet))
        return
    end
end

function set_style(sheet)
    send_command('@input ;wait 5.0;input /lockstyleset '..sheet)
end

function buff_change(n,gain,buff_table)
	local name
    name = string.lower(n)
	if name == "doom" then
		if gain then
			equip(sets.Doom)
			disable('neck','ring1','ring2','waist')
			send_command("@input /p Doomed.")
		else
			enable('neck','ring1','ring2','waist')
			determine_equip_set()
			send_command("@input /p Doom off.")
		end
	end
	--Ensures gear slots unlock if you die
	if name == "Weakness" and gain then
		enable('neck','ring1','ring2','waist')
	end
	if S{"terror", "petrification", "sleep", "stun"}:contains(name) then
        if gain then
            equip(sets.SafetyDance)
        else
			if not has_any_buff_of({"terror", "petrification", "sleep", "stun"}) then
				determine_equip_set()
			end
        end
	end
	if name == "charm" then
        if gain then
            send_command('@input /p Charmed!')
        else
            send_command('@input /p Charm off.')
        end	
	end
end

function prep_startup()
	--Streamlines Variables on load
	-- --Redundant, but I like this to be available to 'standardize'
	-- --startup from one location.
	Melee_mode = false
	Burst_mode = false
	Notorious_monster = false
	Weapon_lock = false
	DW_mode_ind = 2
	
	send_command('@input /echo RDM Loaded, Current Modes::: Melee_mode: OFF | Burst_mode: OFF | Saboteur Mode: Normal | Weapon Lock: OFF | DW_mode: SW')
end

function pretarget(spell)
	--Locks you in safety set when disabled
	if (spell.type == 'WhiteMagic' or spell.type == 'BlackMagic' or spell.type == 'Ninjutsu') then
		if has_any_buff_of({"terror", "petrification", "sleep", "stun", "silence", "mute"}) then
			cancel_spell()
		end
		if (spell.type == 'JobAbility' and has_any_buff_of({"terror", "petrification", "sleep", "stun", "amnesia"})) then
			cancel_spell()
		end
	end
end

-- Job Control Functions
function precast(spell)
	reset_enfeebling_variables()
	if spell.english == "Ranged" then
		if buffactive['Flurry II'] then
			equip(sets.snapshotF2)
		elseif buffactive['Flurry'] then
			equip(sets.snapshotF1)
		else
			equip(sets.snapshot)
		end
	elseif (spell.type == 'WhiteMagic' or spell.type == 'BlackMagic') then
		if spell.english == "Dispelga" then
			equip(set_combine(sets.Weapon_magic.Enfeebling_dispelga, sets.precast.FastCast))
		elseif spell.english == "Impact" then
			if Melee_mode == true then
				equip(sets.precast.FastCast_impact)
			else
				equip(set_combine(sets.Weapon_magic.Enfeebling_accuracy, sets.precast.FastCast_impact))
			end
		else
			equip(sets.precast.FastCast)
		end
	elseif spell.type == 'Ninjutsu' then
		equip(sets.precast.NinjutsuFastCast)
	elseif spell.type == 'Waltz' then
		equip(sets.Waltz)
	elseif spell.type == "WeaponSkill" then
		if player.tp >= 1000 then
			--handles ranged WS's
			if spell.target.distance <= 21.5 then
				if spell.english == "Empyreal Arrow" then
					equip(sets.EmpyrealArrow[sets.WS.index[WS_ind]])
				end
				if spell.english == "Flaming Arrow" then
					equip(sets.FlamingArrow[sets.WS.index[WS_ind]])
					if world.day_element == "Fire" or world.weather_element == "Fire" then
						equip(sets.obi)
					end
				end
				--generic ranged WS
				if spell.english == "Sidewinder" or
						spell.english == "Dulling Arrow" or
						spell.english == "Piercing Arrow" then
					equip(sets.RangedWS[sets.WS.index[WS_ind]])
				end						
			else
				cancel_spell()
				send_command("@input /echo Canceled " .. spell.name .. " " .. spell.target.name .. " is Too Far")
			end
			--handles close-range WS's
			if spell.target.distance <= 5.5 then			
				if spell.english == "Knights of Round" then
					equip(sets.Knights[sets.WS.index[WS_ind]])
				end
				if spell.english == "Savage Blade" then
					equip(sets.SavageBlade[sets.WS.index[WS_ind]])
				end
				if spell.english == "Chant du Cygne" then
					equip(sets.CDC[sets.WS.index[WS_ind]])
				end
				if spell.english == "Requiescat" then
					equip(sets.Requiescat[sets.WS.index[WS_ind]])
				end
				if spell.english == "Death Blossom" then
					equip(sets.DeathBlossom[sets.WS.index[WS_ind]])
				end
				if spell.english == "Sanguine Blade" then
					equip(sets.SanguineBlade[sets.WS.index[WS_ind]])
					if world.day_element == "Dark" or world.weather_element == "Dark" then
						equip(sets.obi)
					end
				end
				if spell.english == "Seraph Blade" then
					equip(sets.SeraphBlade[sets.WS.index[WS_ind]])
					if world.day_element == "Light" or world.weather_element == "Light" then
						equip(sets.obi)
					end
				end
				if spell.english == "Shining Blade" then
					equip(sets.ShiningBlade[sets.WS.index[WS_ind]])
					if world.day_element == "Light" or world.weather_element == "Light" then
						equip(sets.obi)
					end
				end
				if spell.english == "Red Lotus Blade" then
					equip(sets.RedLotusBlade[sets.WS.index[WS_ind]])
					if world.day_element == "Fire" or world.weather_element == "Fire" then
						equip(sets.obi)
					end
				end
				if spell.english == "Burning Blade" then
					equip(sets.BurningBlade[sets.WS.index[WS_ind]])
					if world.day_element == "Fire" or world.weather_element == "Fire" then
						equip(sets.obi)
					end
				end
				if spell.english == "Black Halo" then
					equip(sets.BlackHalo[sets.WS.index[WS_ind]])
				end
				if spell.english == "Seraph Strike" then
					equip(sets.SeraphStrike[sets.WS.index[WS_ind]])
					if world.day_element == "Light" or world.weather_element == "Light" then
						equip(sets.obi)
					end
				end
				if spell.english == "Shining Strike" then
					equip(sets.SeraphStrike[sets.WS.index[WS_ind]])
					if world.day_element == "Light" or world.weather_element == "Light" then
						equip(sets.obi)
					end
				end
				if spell.english == "Evisceration" then
					equip(sets.Evisceration[sets.WS.index[WS_ind]])
				end
				if spell.english == "Aeolian Edge" then
					equip(sets.AeolianEdge)
					if world.day_element == "Wind" or world.weather_element == "Wind" then
						equip(sets.obi)
					end
				end
				if spell.english == "Evisceration" then
					equip(sets.Evisceration[sets.WS.index[WS_ind]])
				end
				if spell.english == "Fast Blade" or 
						spell.english == "Flat Blade" or 
						spell.english == "Circle Blade" or
						spell.english == "Vorpal Blade"
				then
					equip(sets.OtherWS[sets.WS.index[WS_ind]])
				elseif spell.type == "WeaponSkill" then
					equip(sets.OtherWS[sets.WS.index[WS_ind]])
				end
			else
				cancel_spell()
				send_command("@input /echo Canceled " .. spell.name .. " " .. spell.target.name .. " is Too Far")
			end
			
		end
	elseif (spell.english == "Convert" and Melee_mode == false) then
		equip(sets.JA.Convert)
	elseif spell.english == "Chainspell" then
		equip(sets.JA.Chainspell)
	elseif Enmity_actions:contains(spell.english) then  
		equip(sets.Enmity)
	elseif spell.english == "Swipe" then  
		if Burst_mode == true then
			equip(sets.Swipe_MB)
		else
			equip(sets.Swipe)
		end
	end
	
	--Hooks for JA/WS Obi swaps
	--This is redundant with the statments above, but covers a list 
	--that can be edited if user wants to remove some for any reason
	if (Elemental_WS:contains(spell.english) or spell.english == "Swipe")
		and 
		(spell.element == world.day_element or spell.element == world.weather_element)
	then
		equip(sets.Obi)
	end
end

function midcast(spell, buff, act)
	--Handles generic recasts as a fallback
	if (spell.type == 'WhiteMagic' or spell.type == 'BlackMagic' or spell.type == 'Ninjutsu' or spell.type == 'Trust') then
		equip(sets.midcast.FastRecast)
	end
	
	
	--Enfeebling Magic
	if (spell.english == "Frazzle III" or spell.english == "Poison II") then
		if Melee_mode == true then
			equip(sets.midcast.Enfeebling_skill_frazzle3_melee)
		else
			equip(set_combine(sets.Weapon_magic.Enfeebling_skill, sets.midcast.Enfeebling_skill_frazzle3))
		end
	end
	if spell.english == "Distract III" then
		if Melee_mode == true then
			equip(sets.midcast.Enfeebling_skill_distract3_melee)
		else
			equip(set_combine(sets.Weapon_magic.Enfeebling_skill, sets.midcast.Enfeebling_skill_distract3))
		end
	end
	if spell.english == "Frazzle II" then
		if Melee_mode == true then
			equip(sets.midcast.Enfeebling_skill_frazzle2)
		else
			equip(set_combine(sets.Weapon_magic.Enfeebling_accuracy, sets.midcast.Enfeebling_skill_frazzle2))
		end
	end
	if MND_enfeebles:contains(spell.english) then
		if Melee_mode == true then
			equip(sets.midcast.Enfeebling_MND)
		else
			equip(set_combine(sets.Weapon_magic.Enfeebling_accuracy, sets.midcast.Enfeebling_MND))
		end
	end
	if (Effect_enfeebles:contains(spell.english) or spell.english == "Inundation") then
		if Melee_mode == true then
			equip(sets.midcast.Enfeebling_effect)
		else
			equip(set_combine(sets.Weapon_magic.Enfeebling_accuracy, sets.midcast.Enfeebling_effect))
		end
	end
	if spell.english == 'Impact' then
		if Melee_mode == true then
			equip(sets.midcast.Enfeebling_impact)
		else
			equip(set_combine(sets.Weapon_magic.Enfeebling_accuracy, sets.midcast.Enfeebling_impact))
		end
	end
	if MAcc_enfeebles:contains(spell.english) then
		if spell.english == "Dispelga" then
			equip(set_combine(sets.Weapon_magic.Enfeebling_dispelga, sets.midcast.Enfeebling_macc))
		elseif Melee_mode == true then
			equip(sets.midcast.Enfeebling_macc)
		else
			equip(set_combine(sets.Weapon_magic.Enfeebling_accuracy, sets.midcast.Enfeebling_macc))
		end
	end

	
	--Enhancing Magic
	if Skill_spells:contains(spell.english) 
		and 
			spell.target.type == 'SELF' or
			(spell.target.type ~= 'SELF' and buffactive['Composure'] == false)
		then
		if Melee_mode == true then
			equip(sets.midcast.Enhancing_skill)
		else
			if DW_mode_ind ~= 1 then
				equip(set_combine(sets.Weapon_magic.Enhancing_skill_SW, sets.midcast.Enhancing_skill))
			else
				equip(set_combine(sets.Weapon_magic.Enhancing_skill_DW, sets.midcast.Enhancing_skill))
			end
		end
	end
	if Skill_spells:contains(spell.english) 
		and 
			buffactive['Composure']
		and
			(buffactive['Accession'] or spell.target.type ~= 'SELF')
		then
		if Melee_mode == true then
			equip(sets.midcast.Enhancing_skill_other)
		else
			if DW_mode_ind ~= 1 then
				equip(set_combine(sets.Weapon_magic.Enhancing_skill_SW, sets.midcast.Enhancing_skill_other))
			else
				equip(set_combine(sets.Weapon_magic.Enhancing_skill_DW, sets.midcast.Enhancing_skill_other))
			end
		end
	end
	
	if Duration_spells:contains(spell.english) 
		and 
			spell.target.type == 'SELF' or
			(spell.target.type ~= 'SELF' and buffactive['Composure'] == false)
		then
		if Melee_mode == true then
			equip(sets.midcast.Enhancing_duration)
		else
			equip(set_combine(sets.Weapon_magic.Enhancing_duration_SW, sets.midcast.Enhancing_duration))
		end
	end
	if Duration_spells:contains(spell.english) 
		and	
			buffactive['Composure']
		and
			((buffactive['Accession'] or spell.target.type ~= 'SELF') or
			(buffactive['Manifestation'] and spell.english == "Klimaform"))
		then
			if Melee_mode == true then
				equip(sets.midcast.Enhancing_duration_other)
			else
				equip(set_combine(sets.Weapon_magic.Enhancing_duration_SW, sets.midcast.Enhancing_duration_other))
			end
		if spell.english == "Klimaform" then
			equip(sets.midcast.Enhancing_duration_other_klimaform)
		end
	end	

	if (spell.english == "Phalanx" or spell.english == "Phalanx II") 
		and 
			spell.target.type == 'SELF' or
			(spell.target.type ~= 'SELF' and buffactive['Composure'] == false)
		then
		if Melee_mode == true then
			equip(sets.midcast.Enhancing_phalanx)
		else
			if DW_mode_ind ~= 1 then
				equip(set_combine(sets.Weapon_magic.Enhancing_phalanx_SW, sets.midcast.Enhancing_phalanx))
			else
				equip(set_combine(sets.Weapon_magic.Enhancing_phalanx_DW, sets.midcast.Enhancing_phalanx))
			end
		end
	end
	if (spell.english == "Phalanx" or spell.english == "Phalanx II")
		and 
			buffactive['Composure']
		and
			(buffactive['Accession'] or spell.target.type ~= 'SELF')
		then
		if Melee_mode == true then
			equip(sets.midcast.Enhancing_phalanx_other)
		else
			if DW_mode_ind ~= 1 then
				equip(set_combine(sets.Weapon_magic.Enhancing_duration_SW, sets.midcast.Enhancing_phalanx_other))
			else
				equip(set_combine(sets.Weapon_magic.Enhancing_duration_DW, sets.midcast.Enhancing_phalanx_other))
			end
		end
	end	
	
	if spell.english == "Aquaveil" 
		and 
			spell.target.type == 'SELF' or
			(spell.target.type ~= 'SELF' and buffactive['Composure'] == false)
		then
		if Melee_mode == true then
			equip(sets.midcast.Enhancing_aquaveil)
		else
			if DW_mode_ind ~= 1 then
				equip(set_combine(sets.Weapon_magic.Enhancing_duration_SW, sets.midcast.Enhancing_aquaveil))
			else
				equip(set_combine(sets.Weapon_magic.Enhancing_duration_SW, sets.midcast.Enhancing_aquaveil))
			end
		end
	end
	if spell.english == "Aquaveil"
		and 
			buffactive['Composure']
		and
			(buffactive['Accession'] or spell.target.type ~= 'SELF')
		then
		if Melee_mode == true then
			equip(sets.midcast.Enhancing_duration_other)
		else
			equip(set_combine(sets.Weapon_magic.Enhancing_duration_SW, sets.midcast.Enhancing_duration_other))
		end
	end	
	
	if spell.english == "Stoneskin" 
		and 
			spell.target.type == 'SELF' or
			(spell.target.type ~= 'SELF' and buffactive['Composure'] == false)
		then
		if Melee_mode == true then
			equip(sets.midcast.Enhancing_stoneskin)
		else
			equip(set_combine(sets.Weapon_magic.Enhancing_duration_SW, sets.midcast.Enhancing_stoneskin))
		end
	end
	if spell.english == "Stoneskin"
		and 
			buffactive['Composure']
		and
			(buffactive['Accession'] or spell.target.type ~= 'SELF')
		then
		if Melee_mode == true then
			equip(sets.midcast.Enhancing_duration_other)
		else
			equip(set_combine(sets.Weapon_magic.Enhancing_duration_SW, sets.midcast.Enhancing_duration_other))
		end
	end
	
	if (spell.english == "Refresh" or spell.english == "Refresh II" or spell.english == "Refresh III")
		and 
			spell.target.type == 'SELF' or
			(spell.target.type ~= 'SELF' and buffactive['Composure'] == false)
		then
		if Melee_mode == true then
			equip(sets.midcast.Enhancing_refresh)
		else
			equip(set_combine(sets.Weapon_magic.Enhancing_duration_SW, sets.midcast.Enhancing_refresh))
		end
	end
	if (spell.english == "Refresh" or spell.english == "Refresh II" or spell.english == "Refresh III")
		and 
			buffactive['Composure']
		and
			(buffactive['Accession'] or spell.target.type ~= 'SELF')
		then
		if Melee_mode == true then
			equip(sets.midcast.Enhancing_refresh_other)
		else
			equip(set_combine(sets.Weapon_magic.Enhancing_duration_SW, sets.midcast.Enhancing_refresh_other))
		end
	end

	if Barspells:contains(spell.english)
		and 
			spell.target.type == 'SELF' or
			(spell.target.type ~= 'SELF' and buffactive['Composure'] == false)
		then
		if Melee_mode == true then
			equip(sets.midcast.Enhancing_barspell)
		else
			equip(set_combine(sets.Weapon_magic.Enhancing_duration_SW, sets.midcast.Enhancing_barspell))
		end
	end
	if Barspells:contains(spell.english)
		and 
			buffactive['Composure']
		and
			(buffactive['Accession'] or spell.target.type ~= 'Self')
		then
		if Melee_mode == true then
			equip(sets.midcast.Enhancing_barspell_other)
		else
			equip(set_combine(sets.Weapon_magic.Enhancing_duration_SW, sets.midcast.Enhancing_barspell_other))
		end
	end

	if (spell.english == "Regen" or spell.english == "Regen II") then
		if Melee_mode == true then
			equip(sets.midcast.Enhancing_regen)
		else
			equip(set_combine(sets.Weapon_magic.Enhancing_regen_SW, sets.midcast.Enhancing_regen))
		end
	end


	--Cures / Cursna / Banish Effect
	if Cure_spells:contains(spell.english) then
		if Melee_mode == true then
			equip(sets.midcast.Cure_melee)
		else
			equip(sets.midcast.Cure)
		end
	end
	if spell.english == "Cursna" then
		equip(sets.midcast.Cursna)
	end
	if (spell.english == "Banish" or spell.english == "Banish II" or spell.english == "Banishga" or spell.english == "Banishga II") then
		equip(sets.midcast.Banish)
		if (spell.english == "Banish" or spell.english == "Banishga") then
			send_command('timers create "'.. spell.english .. ': ' .. spell.target.name .. '" 15 down')
		else
			send_command('timers create "'.. spell.english .. ': ' .. spell.target.name .. '" 30 down')
		end
	end
	if spell.english == "Flash" then
		equip(sets.Enmity)
	end
	

	
	--Nukes
	if Nuke_spells:contains(spell.english) then
		if Burst_mode == false then
			if Melee_mode == true then
				equip(sets.midcast.Elemental_mab)
			else
				equip(set_combine(sets.Weapon_magic.Elemental_mab, sets.midcast.Elemental_mab))
			end
		else
			if Melee_mode == true then
				equip(sets.midcast.Elemental_burst_melee)
			else
				equip(set_combine(sets.Weapon_magic.Elemental_mab, sets.midcast.Elemental_burst))
			end
		end
	end

	
	--Dark Magic
	if (spell.english == "Drain" or spell.english == "Aspir") then
		if Melee_mode == true then
			equip(sets.midcast.Dark_drain)
		else
			equip(set_combine(sets.Weapon_magic.Dark_drain, sets.midcast.Dark_drain))
		end
	end
	if spell.english == "Stun" then
		if Melee_mode == true then
			equip(sets.midcast.Dark_stun)
		else
			equip(set_combine(sets.Weapon_magic.Enfeebling_accuracy, sets.midcast.Dark_stun))
		end
	end
	if Absorb_spells:contains(spell.english) then
		if Melee_mode == true then
			equip(sets.midcast.Dark_absorb)
		else
			equip(set_combine(sets.Weapon_magic.Dark_drain, sets.midcast.Dark_absorb))
		end
	end
	
	
	--Spell Hooks for Obi
	if (Cure_spells:contains(spell.english) or 
		Nuke_spells:contains(spell.english) or 
		(spell.english == "Drain" or spell.english == "Aspir")) 
		and 
		(spell.element == world.day_element or spell.element == world.weather_element) 
	then
		equip(sets.Obi)
	end
	
	
	--Conditional Stymie / Elemental Seal override
	if (buffactive['Stymie'] or buffactive['Elemental Seal']) and (Skill_enfeebles:contains(spell.english) == false and buffactive['Composure']) then
		equip(set_combine(sets.Weapon_magic.Enfeebling_skill, sets.midcast.Enfeebling_stymie))
	end
end

function aftercast(spell)
	if spell.skill == "Enfeebling Magic" and (spell.english ~= "Dispel" and spell.english ~= "Dispelga") then
		if not spell.interrupted then
			set_enfeebling_duration_timer(spell)
		end
	end
	determine_equip_set()
end

function status_change(new, old)
	if new ~= 'Engaged' then
		if Melee_mode == true then
			if (SJ_ind == 2 or SJ_ind == 3) then
				melee_mode_idle_DW_set()
			else
				melee_mode_idle_SW_set()
			end
		else
			if (SJ_ind == 2 or SJ_ind == 3) then
				mage_mode_idle_DW_set()
			else
				mage_mode_idle_SW_set()
			end
		end
	else
		if Melee_mode == true then
			melee_mode_engaged_set()
		else
			mage_mode_engaged_set()
		end
	end
end

function determine_sub()
	if player.sub_job == 'NIN' then 
		SJ_ind = 2 --DW25
		DW_mode_ind = 1
		send_command("@input /echo SJ is Ninja")
	elseif player.sub_job == 'DNC' then
		SJ_ind = 3 --DW15
		DW_mode_ind = 1
		send_command("@input /echo SJ is Dancer")
	else
		SJ_ind = 1 --No DW
		DW_mode_ind = 2
		send_command("unbind !f8")
		send_command("@input /echo SJ is non-DW")
	end
	determine_equip_set()
end

function determine_equip_set()
	if player.status ~= 'Engaged' then
		if (SJ_ind == 2 or SJ_ind == 3) then -- handles nin and dnc SJ swaps
			if Melee_mode == true then -- melee mode
				melee_mode_idle_DW_set()
			else -- mage mode
				mage_mode_idle_DW_set()
			end
		else -- handles other SJ swaps
			if Melee_mode == true then -- melee mode SW idle
				melee_mode_idle_SW_set()
			else -- mage mode SW idle
				mage_mode_idle_SW_set()
			end
		end
	else 
		if Melee_mode == true then -- melee mode engaged
			melee_mode_engaged_set()
		else -- mage mode engaged
			mage_mode_engaged_set()
		end
	end
end

function melee_mode_idle_DW_set()
	equip(
		set_combine(
			sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]],
			sets.Weapon_range[sets.Weapon_range.index[Wr_ind]],
			sets.Idle_melee_DW[sets.Idle_melee_DW.index[Idle_melee_DW_ind]],
			sets.DW_mode[sets.DW_mode.index[DW_mode_ind]]
		)
	)
end

function melee_mode_idle_SW_set()
	equip(
		set_combine(
			sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]],
			sets.Weapon_range[sets.Weapon_range.index[Wr_ind]],
			sets.Idle_melee_SW[sets.Idle_melee_SW.index[Idle_melee_SW_ind]],
			sets.DW_mode[sets.DW_mode.index[DW_mode_ind]]
		)
	)
end

function mage_mode_idle_DW_set()
	equip(
		set_combine(
			sets.Weapon_range[sets.Weapon_range.index[Wr_ind]],			
			sets.Idle[sets.Idle.index[Idle_ind]],
			sets.DW_mode[sets.DW_mode.index[DW_mode_ind]]
		)
	)
end

function mage_mode_idle_SW_set()
	equip(
		set_combine(
			sets.Weapon_range[sets.Weapon_range.index[Wr_ind]],
			sets.Idle[sets.Idle.index[Idle_ind]],
			sets.DW_mode[sets.DW_mode.index[DW_mode_ind]]
		)
	)
end

function melee_mode_engaged_set()
	equip(	
		set_combine(
			sets.TP[sets.TP.index[TP_ind]][sets.SJ.index[SJ_ind]],
			sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]],
			sets.Weapon_range[sets.Weapon_range.index[Wr_ind]],
			sets.DW_mode[sets.DW_mode.index[DW_mode_ind]]
		)
	)
end

function mage_mode_engaged_set()
	equip(	
		set_combine(
			sets.TP[sets.TP.index[TP_ind]][sets.SJ.index[SJ_ind]],
			sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]],
			sets.Weapon_range[sets.Weapon_range.index[Wr_ind]],
			sets.DW_mode[sets.DW_mode.index[DW_mode_ind]]
		)
	)
end

function self_command(command)
	if command == "toggle TP set" then
		TP_ind = TP_ind + 1
		if TP_ind > #sets.TP.index then
			TP_ind = 1
		end
		send_command("@input /echo <----- TP Set changed to " .. sets.TP.index[TP_ind] .. " ----->")
		determine_equip_set()
	elseif command == "toggle TP set reverse" then
		TP_ind = TP_ind - 1
		if TP_ind < 1 then
			TP_ind = #sets.TP.index
		end
		send_command("@input /echo <----- TP Set changed to " .. sets.TP.index[TP_ind] .. " ----->")
		determine_equip_set()
	elseif command == "toggle Range set" then
		Ranged_ind = Ranged_ind + 1
		if Ranged_ind > #sets.Ranged.index then
			Ranged_ind = 1
		end
		send_command("@input /echo <----- Ranged Set changed to " .. sets.Ranged.index[Ranged_ind] .. " ----->")		
		if player.status ~= 'Engaged' then
			if Melee_mode == true then
				if (SJ_ind == 2 or SJ_ind == 3) then
					melee_mode_idle_DW_set()
				else
					melee_mode_idle_SW_set()
				end
			else
				if (SJ_ind == 2 or SJ_ind == 3) then
					mage_mode_idle_DW_set()
				else
					mage_mode_idle_SW_set()
				end
			end
		else
			if Melee_mode == true then
				melee_mode_engaged_set()
			else
				mage_mode_engaged_set()
				equip(sets.Weapon_range[sets.Weapon_range.index[Wr_ind]])
			end
		end
	elseif command == "toggle Range set reverse" then
		Ranged_ind = Ranged_ind - 1
		if Ranged_ind < 1 then
			Ranged_ind = #sets.Ranged.index
		end
		send_command("@input /echo <----- Ranged Set changed to " .. sets.Range.index[Range_ind] .. " ----->")
		if player.status ~= 'Engaged' then
			if Melee_mode == true then
				if (SJ_ind == 2 or SJ_ind == 3) then
					melee_mode_idle_DW_set()
				else
					melee_mode_idle_SW_set()
				end
			else
				if (SJ_ind == 2 or SJ_ind == 3) then
					mage_mode_idle_DW_set()
				else
					mage_mode_idle_SW_set()
				end
			end
		else
			if Melee_mode == true then
				melee_mode_engaged_set()
			else
				mage_mode_engaged_set()
				equip(sets.Weapon_range[sets.Weapon_range.index[Wr_ind]])
			end
		end
	elseif command == "toggle WS set" then
		WS_ind = WS_ind + 1
		if WS_ind > #sets.WS.index then
			WS_ind = 1
		end
		send_command("@input /echo <----- WS Set changed to " .. sets.WS.index[WS_ind] .. " ----->")
		determine_equip_set()
	elseif command == "toggle WS set reverse" then
		WS_ind = WS_ind - 1
		if WS_ind < 1 then
			WS_ind = #sets.WS.index
		end
		send_command("@input /echo <----- WS Set changed to " .. sets.WS.index[WS_ind] .. " ----->")
		determine_equip_set()	
	elseif command == "toggle Melee Weapon set" then
		Wm_ind = Wm_ind + 1
		if Wm_ind > #sets.Weapon_melee.index then
			Wm_ind = 1
		end
		send_command("@input /echo <----- Melee weapon changed to " .. sets.Weapon_melee.index[Wm_ind] .. " ----->")
		determine_equip_set()
	elseif command == "toggle Range Weapon set" then
		Wr_ind = Wr_ind + 1
		if Wr_ind > #sets.Weapon_range.index then
			Wr_ind = 1
		end
		send_command("@input /echo <----- Range weapon changed to " .. sets.Weapon_range.index[Wr_ind] .. " ----->")
		if Wr_ind == 2 then
			equip(sets.Weapon_range[sets.Weapon_range.index[Wr_ind]])
			disable(range,ammo)
			determine_equip_set()
			send_command("@input /echo Range/Ammo disabled")
		else
			enable(range,ammo)
			determine_equip_set()
			send_command("@input /echo Range/Ammo enabled")
		end
	elseif command == "toggle DW set" then
		DW_mode_ind = DW_mode_ind + 1
		
		if DW_mode_ind > #sets.DW_mode.index then
			DW_mode_ind = 1
			
		end
		if (player.sub_job == 'DNC' and DW_mode_ind == 1) then
			SJ_ind = 3
			equip(sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]])
		elseif (player.sub_job == 'NIN' and DW_mode_ind == 1) then
			SJ_ind = 2
			equip(sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]])
		else
			SJ_ind = 1
			equip(
				sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]],
				sets.DW_mode[sets.DW_mode.index[DW_mode_ind]]
			)			
		end
		send_command("@input /echo <----- DW status changed to " .. sets.DW_mode.index[DW_mode_ind] .. " ----->")
		determine_equip_set()
	elseif command == "toggle Idle set" then
		Idle_ind = Idle_ind + 1
		Idle_melee_DW_ind = Idle_melee_DW_ind + 1
		Idle_melee_SW_ind = Idle_melee_SW_ind + 1		
		if Idle_ind > #sets.Idle.index then
			Idle_ind = 1
			Idle_melee_DW_ind = 1
			Idle_melee_SW_ind = 1			
		end
		send_command("@input /echo <----- Idle Set changed to " .. sets.Idle.index[Idle_ind] .. " ----->")
		determine_equip_set()
	elseif command == "toggle Idle set reverse" then
		Idle_ind = Idle_ind - 1
		Idle_melee_DW_ind = Idle_melee_DW_ind - 1
		Idle_melee_SW_ind = Idle_melee_SW_ind - 1
		if Idle_ind < 1 then
			Idle_ind = #sets.Idle.index
			Idle_melee_DW_ind = #sets.Idle_melee_DW.index
			Idle_melee_SW_ind = #sets.Idle_melee_SW.index
		end
		send_command("@input /echo <----- Idle Set changed to " .. sets.Idle.index[Idle_ind] .. " ----->")
		determine_equip_set()
	elseif command == "toggle Burst Mode" then
		if Burst_mode == false then
			Burst_mode = true
			send_command("@input /echo <----- Burst Mode ON ----->")
		else
			Burst_mode = false
			send_command("@input /echo <----- Burst Mode OFF ----->")
		end
	elseif command == "toggle Melee Mode" then
		if Melee_mode == false then
			Melee_mode = true
			if (SJ_ind == 2 or SJ_ind == 3) then
				melee_mode_idle_DW_set()
			else
				melee_mode_idle_SW_set()
			end
			send_command("@input /echo <----- Melee Mode ----->")
		else
			Melee_mode = false
			if (SJ_ind == 2 or SJ_ind == 3) then
				mage_mode_idle_DW_set()
			else
				mage_mode_idle_SW_set()
			end
			send_command("@input /echo <----- Mage Mode ----->")
		end
	elseif command == "toggle Weapon Lock" then
		if Weapon_lock == false then
			Weapon_lock = true
			send_command("@input /echo <----- Weapon Lock ON ----->")
		else
			Weapon_lock = false
			send_command("@input /echo <----- Weapon Lock OFF ----->")
		end
	elseif command == "toggle Saboteur Mode" then
		if Notorious_monster == true then
			Notorious_monster = false
			send_command("@input /echo <----- Saboteur Mode: Normal ----->")
		else
			Notorious_monster = true
			send_command("@input /echo <----- Saboteur Mode: Notorious Monster ----->")
		end
	end
end


------------------------------------------------------------------------------
------------------------------------------------------------------------------


------------------------------------------------------------------------------
------------------------------------------------------------------------------
	

--Duration Formula:
-- -- floor[((Base Duration × Saboteur) + (6s × RDM Group 2 Merit Point Level) + (3s × RDM Relic Head Group 2 Merit Point Level Augment) 
-- -- + RDM Enfeebling Job Points + RDM Stymie Job Points + Gear that list Seconds) × (Augments Composure Bonus) × (Duration listed on Gear)
-- -- × (Duration Augments on Gear)] = Duration
-- Base
-- Category2
-- Category2Head
-- JobGiftsAndGear (gear is only gear displaying seconds)
-- ComposureBonus
-- GearDuration
-- GearDurationAugments

function reset_enfeebling_variables()
	Category2 = 6.00 * EnfeeblingDurationMerits
	Category2Head = 3.00 * EnfeeblingDurationMerits
	Composure = 1.00
	Stymie = 0.00
	base = 0.00
	FlatGearBonus = 0.00
	GearAugments = 1.00
	MultiplicativeGearBonus = 1.00
	DurationTotal = 0.00		
end

function create_custom_timer(DurationTotal, spell)
	send_command('timers create "'.. spell.english .. ': ' .. spell.target.name .. '" ' .. DurationTotal .. ' down')
end

function set_enfeebling_duration_timer(spell, buff)
	if duration30:contains(spell.english) then
		base = 30.00
	end
	if duration60:contains(spell.english) then
		base = 60.00
	end
	if duration90:contains(spell.english) then
		base = 90.00
	end
	if duration120:contains(spell.english) then
		base = 120.00
	end
	if duration180:contains(spell.english) then
		base = 180.00
	end
	if duration300:contains(spell.english) then
		base = 300.00
	end
	if buffactive['Saboteur'] then -- need to find a way to distinguish NMs (currently uses a toggle; Default: NM)
		if Notorious_monster == false then
			if player.equipment.hands == "Lethargy Gantherots" or player.equipment.hands == "Lethargy Gantherots +1" then
				base = base * 2.12
			else
				base = base * 2.00
			end
		else
			if player.equipment.hands == "Lethargy Gantherots" or player.equipment.hands == "Lethargy Gantherots +1" then
				base = base * 1.37
			else
				base = base * 1.25
			end
		end
	end
	--5/5 bonus
	if LethargySet:contains(player.equipment.head) and
		LethargySet:contains(player.equipment.body) and
		LethargySet:contains(player.equipment.hands) and
		LethargySet:contains(player.equipment.legs) and
		LethargySet:contains(player.equipment.feet)
	then
		Composure = 1.50
	--2/5 bonus
	elseif (
		(LethargySet:contains(player.equipment.head) and
		(LethargySet:contains(player.equipment.body) or
		LethargySet:contains(player.equipment.hands) or
		LethargySet:contains(player.equipment.legs) or
		LethargySet:contains(player.equipment.feet)))
		or
		(LethargySet:contains(player.equipment.body) and
		(LethargySet:contains(player.equipment.head) or
		LethargySet:contains(player.equipment.hands) or
		LethargySet:contains(player.equipment.legs) or
		LethargySet:contains(player.equipment.feet)))
		or
		(LethargySet:contains(player.equipment.hands) and
		(LethargySet:contains(player.equipment.head) or
		LethargySet:contains(player.equipment.body) or
		LethargySet:contains(player.equipment.legs) or
		LethargySet:contains(player.equipment.feet)))
		or
		(LethargySet:contains(player.equipment.legs) and
		(LethargySet:contains(player.equipment.head) or
		LethargySet:contains(player.equipment.body) or
		LethargySet:contains(player.equipment.hands) or
		LethargySet:contains(player.equipment.feet)))
		or
		(LethargySet:contains(player.equipment.feet) and
		(LethargySet:contains(player.equipment.head) or
		LethargySet:contains(player.equipment.body) or
		LethargySet:contains(player.equipment.hands) or
		LethargySet:contains(player.equipment.legs)))
		)
	then
		Composure = 1.10
	--3/5 bonus
	elseif (
		((LethargySet:contains(player.equipment.head) and LethargySet:contains(player.equipment.body)) and
		(LethargySet:contains(player.equipment.hands) or
		LethargySet:contains(player.equipment.legs) or
		LethargySet:contains(player.equipment.feet)))
		or
		((LethargySet:contains(player.equipment.body) and LethargySet:contains(player.equipment.hands)) and
		(LethargySet:contains(player.equipment.head) or
		LethargySet:contains(player.equipment.legs) or
		LethargySet:contains(player.equipment.feet)))
		or
		((LethargySet:contains(player.equipment.hands) and LethargySet:contains(player.equipment.legs)) and
		(LethargySet:contains(player.equipment.head) or
		LethargySet:contains(player.equipment.body) or
		LethargySet:contains(player.equipment.feet)))
		or
		((LethargySet:contains(player.equipment.legs) and LethargySet:contains(player.equipment.feet)) and
		(LethargySet:contains(player.equipment.head) or
		LethargySet:contains(player.equipment.body) or
		LethargySet:contains(player.equipment.hands)))
		or
		((LethargySet:contains(player.equipment.feet) and LethargySet:contains(player.equipment.head)) and
		(LethargySet:contains(player.equipment.body) or
		LethargySet:contains(player.equipment.hands) or
		LethargySet:contains(player.equipment.legs)))
		or
		((LethargySet:contains(player.equipment.head) and LethargySet:contains(player.equipment.hands)) and
		(LethargySet:contains(player.equipment.body) or
		LethargySet:contains(player.equipment.legs) or
		LethargySet:contains(player.equipment.feet)))
		or
		((LethargySet:contains(player.equipment.head) and LethargySet:contains(player.equipment.legs)) and
		(LethargySet:contains(player.equipment.body) or
		LethargySet:contains(player.equipment.hands) or
		LethargySet:contains(player.equipment.feet)))
		or
		((LethargySet:contains(player.equipment.body) and LethargySet:contains(player.equipment.feet)) and
		(LethargySet:contains(player.equipment.head) or
		LethargySet:contains(player.equipment.hands) or
		LethargySet:contains(player.equipment.legs)))
		or
		((LethargySet:contains(player.equipment.hands) and LethargySet:contains(player.equipment.feet)) and
		(LethargySet:contains(player.equipment.head) or
		LethargySet:contains(player.equipment.body) or
		LethargySet:contains(player.equipment.legs)))
		) 
	then
		Composure = 1.20
	--4/5 bonus	
	elseif (
		((LethargySet:contains(player.equipment.head) and LethargySet:contains(player.equipment.body) and LethargySet:contains(player.equipment.hands)) and
		(LethargySet:contains(player.equipment.legs) or
		LethargySet:contains(player.equipment.feet)))
		or
		((LethargySet:contains(player.equipment.body) and LethargySet:contains(player.equipment.hands) and LethargySet:contains(player.equipment.legs)) and
		(LethargySet:contains(player.equipment.head) or
		LethargySet:contains(player.equipment.feet)))
		or
		((LethargySet:contains(player.equipment.hands) and LethargySet:contains(player.equipment.legs) and LethargySet:contains(player.equipment.feet)) and
		(LethargySet:contains(player.equipment.head) or
		LethargySet:contains(player.equipment.body)))
		or
		((LethargySet:contains(player.equipment.legs) and LethargySet:contains(player.equipment.feet) and LethargySet:contains(player.equipment.head)) and
		(LethargySet:contains(player.equipment.body) or
		LethargySet:contains(player.equipment.hands)))
		or
		((LethargySet:contains(player.equipment.feet) and LethargySet:contains(player.equipment.head) and LethargySet:contains(player.equipment.body)) and
		(LethargySet:contains(player.equipment.hands) or
		LethargySet:contains(player.equipment.legs)))
		or
		((LethargySet:contains(player.equipment.head) and LethargySet:contains(player.equipment.hands) and LethargySet:contains(player.equipment.feet)) and
		(LethargySet:contains(player.equipment.body) or
		LethargySet:contains(player.equipment.legs)))
		or
		((LethargySet:contains(player.equipment.head) and LethargySet:contains(player.equipment.hands) and LethargySet:contains(player.equipment.legs)) and
		(LethargySet:contains(player.equipment.body) or
		LethargySet:contains(player.equipment.feet)))
		or
		((LethargySet:contains(player.equipment.body) and LethargySet:contains(player.equipment.legs) and LethargySet:contains(player.equipment.feet)) and
		(LethargySet:contains(player.equipment.head) or
		LethargySet:contains(player.equipment.hands)))
		or
		((LethargySet:contains(player.equipment.body) and LethargySet:contains(player.equipment.hands) and LethargySet:contains(player.equipment.feet)) and
		(LethargySet:contains(player.equipment.head) or
		LethargySet:contains(player.equipment.legs)))
		or
		((LethargySet:contains(player.equipment.head) and LethargySet:contains(player.equipment.body) and LethargySet:contains(player.equipment.legs)) and
		(LethargySet:contains(player.equipment.hands) or
		LethargySet:contains(player.equipment.feet)))
		)
	then
		composure = 1.35
	end
	if player.equipment.neck == "Dls. Torque" then
		GearAugments = GearAugments + 0.15
	elseif player.equipment.neck == "Dls. Torque +1" then
		GearAugments = GearAugments + 0.20
	elseif player.equipment.neck == "Dls. Torque +2" then
		GearAugments = GearAugments + 0.25
	end
	if (player.equipment.left_ear == "Snotra Earring" or player.equipment.right_ear == "Snotra Earring") then
		MultiplicativeGearBonus = MultiplicativeGearBonus + 0.10
	end
	if player.equipment.hands == "Regal Cuffs" then
		MultiplicativeGearBonus = MultiplicativeGearBonus + 0.20
	end
	if (player.equipment.left_ring == "Kishar Ring" or player.equipment.right_ring == "Kishar Ring") then
		MultiplicativeGearBonus = MultiplicativeGearBonus + 0.10
	end
	if player.equipment.waist == "Obstin. Sash" then
		MultiplicativeGearBonus = MultiplicativeGearBonus + 0.05
	end
	if buffactive['Stymie'] then
		Stymie = StymieDurationGifts
	end
	if player.equipment.head == "Vitiation Chapeau" or 
		player.equipment.head == "Vitiation Chapeau +1" or 
		player.equipment.head == "Vitiation Chapeau +2" or 
		player.equipment.head == "Vitiation Chapeau +3" 
	then
		Category2Head = 3.00 * EnfeeblingDurationMerits
	end
	
	DurationTotal = (base + Category2 + Category2Head + EnfeeblingDurationGifts + Stymie + FlatGearBonus) * Composure * MultiplicativeGearBonus * GearAugments	
	create_custom_timer(DurationTotal, spell)
end



function has_any_buff_of(buff_set)
    for i,v in pairs(buff_set) do
        if buffactive[v] ~= nil then 
			return true 
		end
    end
end