TP_Set_Names = {"None", "Single" ,"Dual"}
TP_Index = 1

Idle_Set_Names = {'MDT','PDT'}
Idle_Index = 1

Kiting = false

send_command('bind f9 gs c cycle TP set')
send_command('bind f10 gs c equip pdt')
send_command('bind f11 gs c equip mdt')
send_command('bind f12 gs c refresh set')
send_command('bind ^k gs c toggle kiting')

function file_unload()
    send_command('unbind f9')
    send_command('unbind f10')
    send_command('unbind f11')
    send_command('unbind f12')
    send_command('unbind ^k')
end

function help()
    add_to_chat(122, 'Keyboard Bindings:')
    add_to_chat(122, 'F9: Cycle TP set')
    add_to_chat(122, 'F10: Turn on idle pdt')
    add_to_chat(122, 'F11: Turn on idle mdt')
    add_to_chat(122, 'F12: Refresh gear and turn on job abilities')
    add_to_chat(122, 'Ctrl + k: Toggle kiting')
end

help()

function get_sets()

    sets = {}
    
     -- Buff sets: Gear that needs to be worn to actively enhance a current player buff.
     sets.divine_caress = {hands="Ebers mitts +1"}
     sets.afflatus_solace = {body="Ebers Bliaud +1"}

	--- Sets for Enhanced Job Abilities ---
	
	sets.ja = {}
	
    sets.ja['Afflatus Solace'] = sets.afflatus_solace
    sets.ja['Benediction'] = {body="Piety Briault +1"}
    sets.ja['Devotion'] = {body="Piety Cap +1"}
	
	--- Fast Cast Sets ---
	sets.fc = {
	main={ name="Gada", augments={'Enh. Mag. eff. dur. +6','STR+9',}},
    sub="Chanter's Shield",
    ammo="Incantor Stone",
    head={ name="Vanya Hood", augments={'MP+50','"Fast Cast"+10','Haste+2%',}},
    body="Inyanga Jubbah +1",
    hands={ name="Gende. Gages +1", augments={'Phys. dmg. taken -4%','"Cure" spellcasting time -5%',}},
    legs="Aya. Cosciales +2",
    feet="Regal Pumps +1",
    neck="Cleric's Torque",
    waist="Embla Sash",
    left_ear="Loquac. Earring",
    right_ear="Etiolation Earring",
    left_ring="Lebeche Ring",
    right_ring="Prolix Ring",
    back="Tempered Cape +1",}
	
    sets.fc.heal = set_combine(sets.fc, {})
    
    sets.fc.cure = set_combine(sets.fc, {
	main={ name="Queller Rod", augments={'Healing magic skill +15','"Cure" potency +10%','"Cure" spellcasting time -7%',}},
    sub="Sors Shield",
    ammo="Incantor Stone",
    head={ name="Vanya Hood", augments={'MP+50','"Fast Cast"+10','Haste+2%',}},
    body="Inyanga Jubbah +1",
    hands={ name="Gende. Gages +1", augments={'Phys. dmg. taken -4%','"Cure" spellcasting time -5%',}},
    legs="Ebers Pant. +1",
    feet={ name="Vanya Clogs", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}},
    neck="Cleric's Torque",
    waist="Embla Sash",
    left_ear="Orison Earring",
    right_ear="Nourish. Earring",
    left_ring="Lebeche Ring",
    right_ring="Prolix Ring",
    back="Tempered Cape +1",})
    
    sets.fc.stoneskin = set_combine(sets.fc, {})
	
	sets.ws = {} 
	
    sets.ws["Hexa Strike"] = {
	ammo="Hasty Pinion +1",
    head={ name="Piety Cap +1", augments={'Enhances "Devotion" effect',}},
    body="Ayanmo Corazza +2",
    hands={ name="Piety Mitts +1", augments={'Enhances "Martyr" effect',}},
    legs={ name="Piety Pantaln. +1", augments={'Enhances "Afflatus Misery" effect',}},
    feet={ name="Piety Duckbills +1", augments={'Enhances "Afflatus Solace" effect',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    right_ear="Telos Earring",
    left_ring="Excelsis Ring",
    right_ring="Shiva Ring",
    back={ name="Mending Cape", augments={'Healing magic skill +8','Enha.mag. skill +10','Mag. Acc.+3','"Cure" potency +2%',}},} 
	
	sets.ws["Black Halo"] = {
	ammo="Oreiad's Tathlum",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Cleric's Torque",
    waist="Rumination Sash",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    right_ear="Lifestorm Earring",
    left_ring="Stikini Ring",
    right_ring="Stikini Ring",
    back={ name="Mending Cape", augments={'Healing magic skill +8','Enha.mag. skill +10','Mag. Acc.+3','"Cure" potency +2%',}},}
	
	sets.ws["Realmrazer"] = {
	ammo="Oreiad's Tathlum",
    head={ name="Piety Cap +1", augments={'Enhances "Devotion" effect',}},
    body={ name="Piety Bliaut +1", augments={'Enhances "Benediction" effect',}},
    hands={ name="Piety Mitts +1", augments={'Enhances "Martyr" effect',}},
    legs={ name="Piety Pantaln. +1", augments={'Enhances "Afflatus Misery" effect',}},
    feet={ name="Piety Duckbills +1", augments={'Enhances "Afflatus Solace" effect',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    right_ear="Lifestorm Earring",
    left_ring="Rufescent Ring",
    right_ring="Stikini Ring",
    back={ name="Mending Cape", augments={'Healing magic skill +8','Enha.mag. skill +10','Mag. Acc.+3','"Cure" potency +2%',}},}
	
	sets.ws["Mystic Boon"] = {
	ammo="Oreiad's Tathlum",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Cleric's Torque",
    waist="Rumination Sash",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    right_ear="Lifestorm Earring",
    left_ring="Stikini Ring",
    right_ring="Stikini Ring",
    back={ name="Mending Cape", augments={'Healing magic skill +8','Enha.mag. skill +10','Mag. Acc.+3','"Cure" potency +2%',}},}
	
    sets.tp = {}
    
    sets.tp['Single'] = {
	ammo="Hasty Pinion +1",
    head="Aya. Zucchetto +1",
    body="Ayanmo Corazza +2",
    hands="Aya. Manopolas +1",
    legs="Aya. Cosciales +2",
    feet="Aya. Gambieras +1",
    neck="Sanctity Necklace",
    waist="Cetl Belt",
    left_ear="Cessance Earring",
    right_ear="Telos Earring",
    left_ring="Petrov Ring",
    right_ring="Ayanmo Ring",
    back={ name="Mending Cape", augments={'Healing magic skill +8','Enha.mag. skill +10','Mag. Acc.+3','"Cure" potency +2%',}},}
	
	sets.tp['Dual'] = {
	ammo="Hasty Pinion +1",
    head="Aya. Zucchetto +1",
    body="Ayanmo Corazza +2",
    hands="Aya. Manopolas +1",
    legs="Aya. Cosciales +2",
    feet="Aya. Gambieras +1",
    neck="Sanctity Necklace",
    waist="Cetl Belt",
    left_ear="Eabani Earring",
    right_ear="Suppanomimi",
    left_ring="Petrov Ring",
    right_ring="Ayanmo Ring",
    back={ name="Mending Cape", augments={'Healing magic skill +8','Enha.mag. skill +10','Mag. Acc.+3','"Cure" potency +2%',}},}
    
    
    sets.idle = {}
	
	sets.idle['Refresh set'] = {
	main={ name="Queller Rod", augments={'Healing magic skill +15','"Cure" potency +10%','"Cure" spellcasting time -7%',}},
    sub="Genbu's Shield",
    ammo="Homiliary",
    head="Inyanga Tiara +1",
    body="Ebers Bliaut +1",
    hands="Inyan. Dastanas +1",
    legs="Assid. Pants +1",
    feet="Inyanga Crackows",
    neck="Sanctity Necklace",
    waist="Fucho-no-Obi",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    right_ear="Etiolation Earring",
    left_ring="Defending Ring",
    right_ring="Inyanga Ring",
    back="Moonbeam Cape",}
	
	sets.idle['PDT'] = {
	main="Mafic Cudgel",
    sub="Genbu's Shield",
    ammo="Staunch Tathlum",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Twilight Torque",
    waist="Fucho-no-Obi",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    right_ear="Etiolation Earring",
    left_ring="Defending Ring",
    right_ring="Ayanmo Ring",
    back="Moonbeam Cape",}
    
	sets.idle['MDT'] = {
	main="Mafic Cudgel",
    sub="Genbu's Shield",
    ammo="Staunch Tathlum",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Twilight Torque",
    waist="Fucho-no-Obi",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    right_ear="Etiolation Earring",
    left_ring="Defending Ring",
    right_ring="Ayanmo Ring",
    back="Moonbeam Cape",}

    sets.midcast = {}

    sets.midcast.status_removal = {
	main={ name="Queller Rod", augments={'Healing magic skill +15','"Cure" potency +10%','"Cure" spellcasting time -7%',}},
    sub="Sors Shield",
    ammo="Incantor Stone",
    head="Ebers Cap +1",
    body="Ebers Bliaut +1",
    hands="Ebers Mitts +1",
    legs="Theo. Pant. +2",
    feet={ name="Vanya Clogs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
    neck="Cleric's Torque",
    waist="Bishop's Sash",
    left_ear="Meili Earring",
    right_ear="Beatific Earring",
    left_ring="Ephedra Ring",
    right_ring="Haoma's Ring",
    back={ name="Mending Cape", augments={'Healing magic skill +8','Enha.mag. skill +10','Mag. Acc.+3','"Cure" potency +2%',}},}
    
	sets.midcast.cursna = set_combine( sets.midcast.status_removal, {
	main={ name="Queller Rod", augments={'Healing magic skill +15','"Cure" potency +10%','"Cure" spellcasting time -7%',}},
    sub="Chanter's Shield",
    ammo="Incantor Stone",
    head={ name="Vanya Hood", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
    body="Ebers Bliaut +1",
    hands="Ebers Mitts +1",
    legs="Theo. Pant. +2",
    feet={ name="Vanya Clogs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
    neck="Malison Medallion",
    waist="Bishop's Sash",
    left_ear="Meili Earring",
    right_ear="Beatific Earring",
    left_ring="Ephedra Ring",
    right_ring="Haoma's Ring",
    back={ name="Mending Cape", augments={'Healing magic skill +8','Enha.mag. skill +10','Mag. Acc.+3','"Cure" potency +2%',}},})
    
	sets.midcast.cure = {
	main="Chatoyant Staff",
    sub="Achaq Grip",
    ammo="Oreiad's Tathlum",
    head="Ebers Cap +1",
    body="Theo. Bliaut +1",
    hands="Theophany Mitts +2",
    legs="Ebers Pant. +1",
    feet={ name="Vanya Clogs", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}},
    neck="Cleric's Torque",
    waist="Hachirin-no-Obi",
    left_ear="Orison Earring",
    right_ear="Nourish. Earring",
    left_ring="Stikini Ring",
    right_ring="Stikini Ring",
    back="Twilight Cape",}
    
	sets.midcast.enhancing = {
	main={ name="Gada", augments={'Enh. Mag. eff. dur. +6','STR+9',}},
    sub="Chanter's Shield",
    ammo="Oreiad's Tathlum",
    head={ name="Telchine Cap", augments={'Enh. Mag. eff. dur. +10',}},
    body={ name="Telchine Chas.", augments={'Enh. Mag. eff. dur. +10',}},
    hands={ name="Telchine Gloves", augments={'Enh. Mag. eff. dur. +10',}},
    legs={ name="Telchine Braconi", augments={'Enh. Mag. eff. dur. +10',}},
    feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +10',}},
    neck="Incanter's Torque",
    waist="Olympus Sash",
    left_ear="Mimir Earring",
    right_ear="Lifestorm Earring",
    left_ring="Stikini Ring",
    right_ring="Stikini Ring",
    back="Merciful Cape",}
    
	sets.midcast.bar_element = set_combine( sets.midcast.enhancing, {
	main={ name="Gada", augments={'Enh. Mag. eff. dur. +6','STR+9',}},
    sub="Chanter's Shield",
    ammo="Oreiad's Tathlum",
    head="Ebers Cap +1",
    body="Ebers Bliaut +1",
    hands="Ebers Mitts +1",
    legs={ name="Piety Pantaln. +1", augments={'Enhances "Afflatus Misery" effect',}},
    feet="Ebers Duckbills +1",
    neck="Incanter's Torque",
    waist="Embla Sash",
    left_ear="Mimir Earring",
    right_ear="Lifestorm Earring",
    left_ring="Stikini Ring",
    right_ring="Stikini Ring",
    back="Mending Cape",})
    
	sets.midcast['Auspice'] = set_combine( sets.midcast.enhancing, {})
    
	sets.midcast.protect = set_combine(sets.midcast.enhancing, {})
    
	sets.midcast.shell = set_combine(sets.midcast.enhancing, {})
    
	sets.midcast.regen = set_combine(sets.midcast.enhancing, {
	head="Inyanga Tiara +1",
    body="Ebers Bliaut +1",
    hands="Ebers Mitts +1",
    legs="Theo. Pant. +2",
    feet="Theo. Duckbills +1",})
    
	sets.midcast.enfeebling = {
	main={ name="Gada", augments={'Enh. Mag. eff. dur. +6','STR+9',}},
    sub="Chanter's Shield",
    ammo="Incantor Stone",
    head="Inyanga Tiara +1",
    body="Theo. Bliaut +1",
    hands="Inyan. Dastanas +1",
    legs="Inyanga Shalwar +1",
    feet="Theo. Duckbills +1",
    neck="Sanctity Necklace",
    waist="Embla Sash",
    left_ear="Lifestorm Earring",
    right_ear="Psystorm Earring",
    left_ring="Inyanga Ring",
    right_ring="Stikini Ring",
    back="Pahtli Cape",}
    
	sets.midcast.divine = {}
    
	sets.kiting = {
	main={ name="Queller Rod", augments={'Healing magic skill +15','"Cure" potency +10%','"Cure" spellcasting time -7%',}},
    sub="Genbu's Shield",
    ammo="Homiliary",
    head="Inyanga Tiara +1",
    body="Ebers Bliaut +1",
    hands="Inyan. Dastanas +1",
    legs="Assid. Pants +1",
    feet="Aya. Gambieras +1",
    neck="Twilight Torque",
    waist="Fucho-no-Obi",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    right_ear="Etiolation Earring",
    left_ring="Inyanga Ring",
    right_ring="Shneddick Ring",
    back="Moonbeam Cape",}

end

function precast(spell)
    -- print_set(spell)
    
    if (sets.ja[spell.english]) then
        equip(sets.ja[spell.english])
    elseif spell.skill == 'Healing Magic' then
        if spell.name:contains("Cure") or spell.name:contains("Curaga") or spell.name:contains("Cura") then
            equip(sets.fc.cure)
        else
            equip(sets.fc.heal)
        end
    elseif spell.name == "Stoneskin" then
        equip(sets.fc.stoneskin)
    elseif spell.action_type == "Magic" then
        equip(sets.fc)
    elseif spell.type == "WeaponSkill" then
        if sets.ws[spell.name] then
            equip(sets.ws[spell.name])
        else
            equip(sets.ws)
        end
    end
end

function midcast(spell)
    -- print_set(spell)
    local set_to_equip = sets.idle[Idle_Set_Names[Idle_Index]]
	if spell.skill == 'Healing Magic' or spell.name == "Erase" then
        if spell.name:contains("Cure") then
            if buffactive['Afflatus Solace'] then
                local solace_cure_set = set_combine(sets.afflatus_solace, sets.midcast.cure)
                set_to_equip = set_combine(set_to_equip, solace_cure_set)
            else
                set_to_equip = set_combine(set_to_equip, sets.midcast.cure)
            end
        elseif spell.name:contains("Curaga") or spell.name:contains("Cura") then
            set_to_equip = set_combine(set_to_equip, sets.midcast.cure)
        elseif spell.name == "Cursna" then
            if buffactive['Divine Caress'] then
                local cursna_divine_caress_set = set_combine(sets.divine_caress, sets.midcast.cursna)
                set_to_equip = set_combine(set_to_equip, cursna_divine_caress_set)
            else
                set_to_equip = set_combine(set_to_equip, sets.midcast.cursna)
            end            
        else
            if buffactive['Divine Caress'] then
                local status_removal_dc = set_combine(sets.divine_caress, sets.midcast.status_removal)
                set_to_equip = set_combine(set_to_equip, status_removal_dc)
            else
                set_to_equip = set_combine(set_to_equip, sets.midcast.status_removal)
            end
        end    
	--Enfeebling Magic	
    elseif spell.skill == 'Enfeebling Magic' then
        set_to_equip = set_combine(set_to_equip, sets.midcast.enfeebling)		
	--Enhancing Magic		
    elseif spell.skill == 'Enhancing Magic' then
        if spell.name == 'Stoneskin' then
            set_to_equip = set_combine(set_to_equip, sets.midcast.stoneskin)
        elseif spell.english:contains('Regen') then
            set_to_equip = set_combine(set_to_equip, sets.midcast.regen)
        elseif spell.english:contains('Bar') then
            if buffactive['Afflatus Solace'] then
                local bar_as = set_combine(sets.afflatus_solace, sets.midcast.bar_element)
                set_to_equip = set_combine(set_to_equip, bar_as)
            else
                set_to_equip = set_combine(set_to_equip, sets.midcast.bar_element)
            end
        elseif spell.english:contains('Protect') then
            set_to_equip = set_combine(set_to_equip, sets.midcast.protect)
		elseif spell.english:contains('Shell') then
            set_to_equip = set_combine(set_to_equip, sets.midcast.shell)
        elseif sets.midcast[spell.english] then
            set_to_equip = set_combine(set_to_equip, sets.midcast[spell.english])
        else
            set_to_equip = set_combine(set_to_equip, sets.midcast.enhancing)
        end
    elseif spell.skill == "Divine Magic" then
        set_to_equip = set_combine(set_to_equip, sets.midcast.divine)
    end
    -- print_set(set_to_equip)
    equip(set_to_equip)
end

function equip_set(status)
    local set_to_equip = nil
    if status=='Engaged' then
        local tp_set_mode = TP_Set_Names[TP_Index]
        if tp_set_mode == 'None' then
            set_to_equip= sets.idle[Idle_Set_Names[Idle_Index]]
        else
            set_to_equip = sets.tp[TP_Set_Names[TP_Index]]
        end
    else
        set_to_equip = sets.idle[Idle_Set_Names[Idle_Index]]
    end

    if Kiting then
        set_to_equip = set_combine(set_to_equip, sets.kiting)
    end

    equip(set_to_equip)
end

function aftercast(spell)
    equip_set(player.status)
end

function status_change(new,old)
    equip_set(new)
end

function self_command(command)
    if command == 'cycle TP set' then
        TP_Index = TP_Index % #TP_Set_Names + 1
        send_command('@input /echo ----- TP Set changed to '..TP_Set_Names[TP_Index]..' -----')
        equip_set(player.status)
    elseif command == 'equip pdt' then
        Idle_Index = 2
        send_command('@input /echo ----- Idle Set changed to '..Idle_Set_Names[Idle_Index]..' -----')
        equip_set(player.status)
    elseif command == 'equip mdt' then
        Idle_Index = 1
        send_command('@input /echo ----- Idle Set changed to '..Idle_Set_Names[Idle_Index]..' -----')
        equip_set(player.status)
    elseif command == 'toggle kiting' then
        Kiting = not Kiting
        if Kiting then
            send_command('@input /echo ----- Kiting Set On -----')
        else
            send_command('@input /echo ----- Kiting Set Off -----')
        end
        equip_set(player.status)
    elseif command == 'refresh set' then
        local needsArts = 
            player.sub_job:lower() == 'sch' and
            not buffactive['Light Arts'] and
            not buffactive['Addendum: White'] and
            not buffactive['Dark Arts'] and
            not buffactive['Addendum: Black']
            
        if not buffactive['Afflatus Solace'] and not buffactive['Afflatus Misery'] then
            if needsArts then
                send_command('@input /ja "Afflatus Solace" <me>;wait 1.2;input /ja "Light Arts" <me>')
            else
                send_command('@input /ja "Afflatus Solace" <me>')
            end
        end

        local kitingStatus = (Kiting and "On" or "Off")
        send_command('@input /echo Idle Set: '..Idle_Set_Names[Idle_Index]..' || TP Set: '..TP_Set_Names[TP_Index]..' || Kite: '..kitingStatus )
        equip_set(player.status)
    end
end

--I don't like this stuff in my gear swap. Uncomment if you do.
-- function buff_change(buff,gain_or_loss)
--     if gain_or_loss and buff == 'Silence' then
-- 		send_command('@input /item "Echo Drops" <me>')
-- 	elseif gain_or_loss and buff == 'Paralyze' then
-- 		send_command('@input /item "Remedy" <me>')
--     end
-- end