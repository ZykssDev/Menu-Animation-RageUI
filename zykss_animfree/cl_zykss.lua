Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)      ------------------------DECLARATION DE L ESX POUR POUVOIR UTILISER LES FONCTIONS ESX ET LUTILISER SUR DU ESX.... BREFFFFFFF
		Citizen.Wait(5000)
	end
end)

--- MENU ---

local open = false 
local MainMenu = RageUI.CreateMenu('Animations', 'interaction')-----------------------CREATION DU MENU PRINCIPALE, LE MENU QUON VOIS QUAND ON NOUVRE LE MENU
local subMenu = RageUI.CreateSubMenu(MainMenu, "Danse", "interaction")-------------------UN DEUXIEME MENU GENRE AU CAS OU, TU DELETE SI TU VEUT PAS
local posMenu = RageUI.CreateSubMenu(MainMenu, "Position", "interaction")
local sportMenu = RageUI.CreateSubMenu(MainMenu, "Sport", "interaction")
local gesteMenu = RageUI.CreateSubMenu(MainMenu, "Gestes", "interaction")
local actiMenu = RageUI.CreateSubMenu(MainMenu, "Activité", "interaction")
local autreMenu = RageUI.CreateSubMenu(MainMenu, "Autres", "interaction")
local santeMenu = RageUI.CreateSubMenu(MainMenu, "Santé", "interaction")
local polMenu = RageUI.CreateSubMenu(MainMenu, "Police", "interaction")
local gangMenu = RageUI.CreateSubMenu(MainMenu, "Gang", "interaction")
MainMenu.Display.Header = true 

--- FUNCTION OPENMENU ---

function loadAnimDict(dict)
	while not HasAnimDictLoaded(dict) do
	  RequestAnimDict(dict)
	  Wait(10)
	end
end

function coucouZykss() ----------ON BATI LE mainMenu avec comme nom de fonction 'coucouZykss'
	if open then 
		open = false
		RageUI.Visible(MainMenu, false)
		return
	else
		open = true 
		RageUI.Visible(MainMenu, true)
		CreateThread(function()
		while open do 
		   RageUI.IsVisible(MainMenu,function() 

			RageUI.Button("Danse", nil, {RightLabel = "→"}, true , { 
				onSelected = function() 
				end
			}, subMenu) ----------- la en gros si tappuis sur le button 2, sa touvrir un n'autre menu pour faire comme des 'onglets' appeller submenu qu'on na creer à la ligne 12 

			RageUI.Button("Position", nil, {RightLabel = "→"}, true , { 
				onSelected = function() 
				end
			}, posMenu) 

			RageUI.Button("Sports", nil, {RightLabel = "→"}, true , { 
				onSelected = function() 
				end
			}, sportMenu) 

			RageUI.Button("Gestes", nil, {RightLabel = "→"}, true , { 
				onSelected = function() 
				end
			}, gesteMenu) 

			RageUI.Button("Activité", nil, {RightLabel = "→"}, true , { 
				onSelected = function() 
				end
			}, actiMenu) 

			RageUI.Button("Autre", nil, {RightLabel = "→"}, true , { 
				onSelected = function() 
				end
			}, autreMenu) 

			RageUI.Button("Santé", nil, {RightLabel = "→"}, true , { 
				onSelected = function() 
				end
			}, santeMenu) 

			RageUI.Button("Police", nil, {RightLabel = "→"}, true , { 
				onSelected = function() 
				end
			}, polMenu) 

			RageUI.Button("Gang", nil, {RightLabel = "→"}, true , { 
				onSelected = function() 
				end
			}, gangMenu) 

			RageUI.Button("~r~Fermer le menu Animation", nil, {RightLabel = "→→"}, true , { 
				onSelected = function() 
					open = false
				end
			}) 

		end) -----fermuture du main menu

        local player = GetPlayerPed(-1)
		RageUI.IsVisible(gangMenu,function()
			RageUI.Button("Signe Mara", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "mp_player_int_uppergang_sign_a" )
					TaskPlayAnim( player, "mp_player_int_uppergang_sign_a", "mp_player_int_gang_sign_a", 8.0, 1.0, -1, 51, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Signe Ballas", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "mp_player_int_uppergang_sign_b" )
					TaskPlayAnim( player, "mp_player_int_uppergang_sign_b", "mp_player_int_gang_sign_b", 8.0, 1.0, -1, 51, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Signe Vagos", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "amb@code_human_in_car_mp_actions@v_sign@std@rds@base" )
					TaskPlayAnim( player, "amb@code_human_in_car_mp_actions@v_sign@std@rds@base", "idle_a", 8.0, 1.0, -1, 51, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Signe Vagos 2", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "mp_player_int_upperv_sign" )
					TaskPlayAnim( player, "mp_player_int_upperv_sign", "mp_player_int_v_sign", 8.0, 1.0, -1, 51, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Signe F4L", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "amb@code_human_in_car_mp_actions@gang_sign_b@low@ps@base" )
					TaskPlayAnim( player, "amb@code_human_in_car_mp_actions@gang_sign_b@low@ps@base", "idle_a", 8.0, 1.0, -1, 51, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Pointé une arme comme un gangster", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "random@atmrobberygen" )
					TaskPlayAnim( player, "random@atmrobberygen", "b_atm_mugging", 8.0, 1.0, -1, 51, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Braquer", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "random@countryside_gang_fight" )
					TaskPlayAnim( player, "random@countryside_gang_fight", "biker_02_stickup_loop", 8.0, 1.0, -1, 51, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Tsheck gangster", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "mp_ped_interaction" )
					TaskPlayAnim( player, "mp_ped_interaction", "hugs_guy_a", 8.0, 1.0, -1, 51, 0, 0, 0, 0 )
					Wait (300)
 				end
			})
		end)


		RageUI.IsVisible(polMenu,function()
			RageUI.Button("Se mettre à genoux", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "random@arrests" )
					TaskPlayAnim( player, "random@arrests", "idle_2_hands_up", 8.0, 1.0, -1, 2, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Se relever", nil, {RightLabel = "→"}, true , { 
				onSelected = function() 
					loadAnimDict( "random@arrests" )
					TaskPlayAnim( player, "random@arrests", "kneeling_arrest_get_up", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
					Wait (300)
				end
			})

			RageUI.Button("A genoux (main sur la tête)", nil, {RightLabel = "→"}, true , { 
				onSelected = function() 
					loadAnimDict( "random@arrests@busted" )
					TaskPlayAnim( player, "random@arrests@busted", "idle_a", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
				end
			})

			RageUI.Button("Main sur le holster", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "move_m@intimidation@cop@unarmed" )
					TaskPlayAnim( player, "move_m@intimidation@cop@unarmed", "idle", 8.0, 1.0, -1, 51, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Salut de l'armée ", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@mp_player_intincarsalutestd@ds@" )
					TaskPlayAnim( player, "anim@mp_player_intincarsalutestd@ds@", "idle_a", 8.0, 1.0, -1, 51, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Salut de l'armée 2", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@mp_player_intincarsalutestd@ps@" )
					TaskPlayAnim( player, "anim@mp_player_intincarsalutestd@ps@", "idle_a", 8.0, 1.0, -1, 51, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Salut de l'armée 3", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@mp_player_intuppersalute" )
					TaskPlayAnim( player, "anim@mp_player_intuppersalute", "idle_a", 8.0, 1.0, -1, 51, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Flic bras croisé", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@amb@nightclub@peds@" )
					TaskPlayAnim( player, "anim@amb@nightclub@peds@", "rcmme_amanda1_stand_loop_cop", 8.0, 1.0, -1, 51, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Flic appel radio", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "amb@code_human_police_investigate@idle_a" )
					TaskPlayAnim( player, "amb@code_human_police_investigate@idle_a", "idle_b", 8.0, 1.0, -1, 51, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Croiser les bras énervé", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@amb@nightclub@peds@" )
					TaskPlayAnim( player, "anim@amb@nightclub@peds@", "rcmme_amanda1_stand_loop_cop", 8.0, 1.0, -1, 51, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Croiser les bras énervé 2", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@amb@nightclub@peds@" )
					TaskPlayAnim( player, "anim@amb@nightclub@peds@", "rcmme_amanda1_stand_loop_cop", 8.0, 1.0, -1, 51, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Les mains sur la ceinture", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					TaskStartScenarioInPlace(player, 'WORLD_HUMAN_COP_IDLES', 0, true)
					Wait (300)
 				end
			})

			RageUI.Button("Donnez des ordres d'attérissage", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					TaskStartScenarioInPlace(player, 'WORLD_HUMAN_CAR_PARK_ATTENDANT', 0, true)
					Wait (300)
 				end
			})
		end)


		RageUI.IsVisible(santeMenu,function()
			RageUI.Button("Médecin inspectant un blessé", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "amb@medic@standing@tendtodead@base" )
					TaskPlayAnim( player, "amb@medic@standing@tendtodead@base", "base", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Blessé par balle au sol", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "random@dealgonewrong" )
					TaskPlayAnim( player, "random@dealgonewrong", "idle_a", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Perdre connaissance", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "missarmenian2" )
					TaskPlayAnim( player, "missarmenian2", "drunk_loop", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Perdre connaissance 2", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "missarmenian2" )
					TaskPlayAnim( player, "missarmenian2", "corpse_search_exit_ped", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Perdre connaissance 3", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@gangops@morgue@table@" )
					TaskPlayAnim( player, "anim@gangops@morgue@table@", "body_search", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Perdre connaissance 4", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "mini@cpr@char_b@cpr_def" )
					TaskPlayAnim( player, "mini@cpr@char_b@cpr_def", "cpr_pumpchest_idle", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Perdre connaissance 5", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "random@mugging4" )
					TaskPlayAnim( player, "random@mugging4", "flee_backward_loop_shopkeeper", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Ramper au sol blessé", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "move_injured_ground" )
					TaskPlayAnim( player, "move_injured_ground", "front_loop", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Massage cardiaque au sol", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "mini@cpr@char_a@cpr_str" )
					TaskPlayAnim( player, "mini@cpr@char_a@cpr_str", "cpr_pumpchest", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Massage cardiaque sur une table", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "mini@cpr@char_a@cpr_str" )
					TaskPlayAnim( player, "mini@cpr@char_a@cpr_str", "cpr_pumpchest", 8.0, 1.0, -1, 51, 0, 0, 0, 0 )
					Wait (300)
 				end
			})
		end)


		RageUI.IsVisible(autreMenu,function()
			RageUI.Button("Fou", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@mp_fm_event@intro" )
					TaskPlayAnim( player, "anim@mp_fm_event@intro", "beast_transform", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Spiderman", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "missexile3" )
					TaskPlayAnim( player, "missexile3", "ex03_train_roof_idle", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Faire le lapin", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "random@peyote@rabbit" )
					TaskPlayAnim( player, "random@peyote@rabbit", "wakeup", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Faire le chien par terre", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "random@peyote@dog" )
					TaskPlayAnim( player, "random@peyote@dog", "wakeup", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Faire la poule", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "random@peyote@chicken" )
					TaskPlayAnim( player, "random@peyote@chicken", "wakeup", 8.0, 1.0, -1, 51, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Faire l'oiseau", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "random@peyote@bird" )
					TaskPlayAnim( player, "random@peyote@bird", "wakeup", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Plein de bisous", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@mp_player_intcelebrationfemale@blow_kiss" )
					TaskPlayAnim( player, "anim@mp_player_intcelebrationfemale@blow_kiss", "blow_kiss", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Danseuse étoile", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@mp_player_intcelebrationpaired@f_f_sarcastic" )
					TaskPlayAnim( player, "anim@mp_player_intcelebrationpaired@f_f_sarcastic", "sarcastic_left", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Gros mal de tête", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "misscarsteal4@actor" )
					TaskPlayAnim( player, "misscarsteal4@actor", "stumble", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Électrocuté", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "stungun@standing" )
					TaskPlayAnim( player, "stungun@standing", "damage", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Mort de rire", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@arena@celeb@flat@paired@no_props@" )
					TaskPlayAnim( player, "anim@arena@celeb@flat@paired@no_props@", "laugh_a_player_b", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Twerk", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "switch@trevor@mocks_lapdance" )
					TaskPlayAnim( player, "switch@trevor@mocks_lapdance", "001443_01_trvs_28_idle_stripper", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Dance du poisson", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@mp_player_intupperfind_the_fish" )
					TaskPlayAnim( player, "anim@mp_player_intupperfind_the_fish", "idle_a", 8.0, 1.0, -1, 51, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Assis sur une chaise", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					TaskStartScenarioInPlace(player, 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER', 0, true)
					Wait (300)
 				end
			})

			RageUI.Button("Assis à un bar", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					TaskStartScenarioInPlace(player, 'PROP_HUMAN_SEAT_BAR', 0, true)
					Wait (300)
 				end
			})

			RageUI.Button("Assis 1", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					TaskStartScenarioInPlace(player, 'PROP_HUMAN_SEAT_ARMCHAIR', 0, true)
					Wait (300)
 				end
			})

			RageUI.Button("Assis 2", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					TaskStartScenarioInPlace(player, 'PROP_HUMAN_SEAT_BENCH', 0, true)
					Wait (300)
 				end
			})

			RageUI.Button("Assis 3", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					TaskStartScenarioInPlace(player, 'PROP_HUMAN_SEAT_BENCH_DRINK', 0, true)
					Wait (300)
 				end
			})

			RageUI.Button("Assis 4", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					TaskStartScenarioInPlace(player, 'PROP_HUMAN_SEAT_BENCH_DRINK_BEER', 0, true)
					Wait (300)
 				end
			})

			RageUI.Button("Assis 5", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					TaskStartScenarioInPlace(player, 'PROP_HUMAN_SEAT_BENCH_FOOD', 0, true)
					Wait (300)
 				end
			})

			RageUI.Button("Assis 6", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					TaskStartScenarioInPlace(player, 'PROP_HUMAN_SEAT_BUS_STOP_WAIT', 0, true)
					Wait (300)
 				end
			})

			RageUI.Button("Assis 7", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					TaskStartScenarioInPlace(player, 'PROP_HUMAN_SEAT_DECKCHAIR', 0, true)
					Wait (300)
 				end
			})

			RageUI.Button("Se ré-habillez correctement", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "clothingtie" )
					TaskPlayAnim( player, "clothingtie", "try_tie_positive_a", 8.0, 1.0, 5000, 51, 0, 0, 0, 0 )
					Wait (300)
 				end
			})
		end)


		RageUI.IsVisible(gesteMenu,function()
			RageUI.Button("Hé toi !", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "misscarsteal3pullover" )
					TaskPlayAnim( player, "misscarsteal3pullover", "pull_over_right", 8.0, 1.0, 1300, 51, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Disputer", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "misscarsteal4@actor" )
					TaskPlayAnim( player, "misscarsteal4@actor", "actor_berating_loop", 8.0, 1.0, -1, 51, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Toi là ! Je vais t'éclater !", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "oddjobs@assassinate@vice@hooker" )
					TaskPlayAnim( player, "oddjobs@assassinate@vice@hooker", "argue_a", 8.0, 1.0, -1, 51, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("C'est mon frère sa !", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "mini@triathlon" )
					TaskPlayAnim( player, "mini@triathlon", "want_some_of_this", 8.0, 1.0, 2000, 51, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Ah merde !", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "gestures@m@standing@casual" )
					TaskPlayAnim( player, "gestures@m@standing@casual", "gesture_damn", 8.0, 1.0, 1000, 51, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Put*** !", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@am_hold_up@male" )
					TaskPlayAnim( player, "anim@am_hold_up@male", "shoplift_mid", 8.0, 1.0, 1000, 51, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Tu reste ici", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "gestures@f@standing@casual" )
					TaskPlayAnim( player, "gestures@f@standing@casual", "gesture_hand_down", 8.0, 1.0, 1000, 51, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Hein ? Pas possible..", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@mp_player_intcelebrationfemale@face_palm" )
					TaskPlayAnim( player, "anim@mp_player_intcelebrationfemale@face_palm", "face_palm", 8.0, 1.0, 8000, 51, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Oh lala..", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "random@car_thief@agitated@idle_a" )
					TaskPlayAnim( player, "random@car_thief@agitated@idle_a", "agitated_idle_a", 8.0, 1.0, 8000, 51, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Quel malheur..", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "missminuteman_1ig_2" )
					TaskPlayAnim( player, "missminuteman_1ig_2", "tasered_2", 8.0, 1.0, 8000, 51, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Quel idiot..", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@mp_player_intupperface_palm" )
					TaskPlayAnim( player, "anim@mp_player_intupperface_palm", "idle_a", 8.0, 1.0, 8000, 51, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Faire un fuck", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@mp_player_intselfiethe_bird" )
					TaskPlayAnim( player, "anim@mp_player_intselfiethe_bird", "idle_a", 8.0, 1.0, -1, 51, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Faire un double fuck", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@mp_player_intupperfinger" )
					TaskPlayAnim( player, "anim@mp_player_intupperfinger", "idle_a_fp", 8.0, 1.0, -1, 51, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Tsheck moi sa", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "mp_ped_interaction" )
					TaskPlayAnim( player, "mp_ped_interaction", "handshake_guy_a", 8.0, 1.0, 3000, 51, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Tscheck mon pote !", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "mp_ped_interaction" )
					TaskPlayAnim( player, "mp_ped_interaction", "handshake_guy_b", 8.0, 1.0, 3000, 51, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Câlin", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "mp_ped_interaction" )
					TaskPlayAnim( player, "mp_ped_interaction", "kisses_guy_a", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Câlin 2", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "mp_ped_interaction" )
					TaskPlayAnim( player, "mp_ped_interaction", "kisses_guy_b", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Clown", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@mp_player_intcelebrationfemale@jazz_hands" )
					TaskPlayAnim( player, "anim@mp_player_intcelebrationfemale@jazz_hands", "jazz_hands", 8.0, 1.0, 6000, 51, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Se craquer les doigts", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@mp_player_intcelebrationfemale@knuckle_crunch" )
					TaskPlayAnim( player, "anim@mp_player_intcelebrationfemale@knuckle_crunch", "knuckle_crunch", 8.0, 1.0, -1, 51, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Moi ?", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "gestures@f@standing@casual" )
					TaskPlayAnim( player, "gestures@f@standing@casual", "gesture_me_hard", 8.0, 1.0, 1000, 51, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Non pas du tout !", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@heists@ornate_bank@chat_manager" )
					TaskPlayAnim( player, "anim@heists@ornate_bank@chat_manager", "fail", 8.0, 1.0, -1, 51, 0, 0, 0, 0 )
					Wait (300)
 				end
			})
		end)


        RageUI.IsVisible(actiMenu,function()
			RageUI.Button("Boire", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "mp_player_inteat@pnq" )
					TaskPlayAnim( player, "mp_player_inteat@pnq", "loop", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Guitare dans le vent", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@mp_player_intcelebrationfemale@air_guitar" )
					TaskPlayAnim( player, "anim@mp_player_intcelebrationfemale@air_guitar", "air_guitar", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Piano dans le vent", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@mp_player_intcelebrationfemale@air_synth" )
					TaskPlayAnim( player, "anim@mp_player_intcelebrationfemale@air_synth", "air_synth", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Inspecter", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "random@train_tracks" )
					TaskPlayAnim( player, "random@train_tracks", "idle_e", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Lapdance", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "mp_safehouse" )
					TaskPlayAnim( player, "mp_safehouse", "lap_dance_girl", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Réparer un moteur", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "mini@repair" )
					TaskPlayAnim( player, "mini@repair", "fixing_a_ped", 8.0, 1.0, -1, 51, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Réparer l'avant du véhicule", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@amb@clubhouse@tutorial@bkr_tut_ig3@" )
					TaskPlayAnim( player, "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Méditer", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "rcmcollect_paperleadinout@" )
					TaskPlayAnim( player, "rcmcollect_paperleadinout@", "meditiate_idle", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Méditer 2", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "rcmepsilonism3" )
					TaskPlayAnim( player, "rcmepsilonism3", "ep_3_rcm_marnie_meditating", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Méditer 3", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "rcmepsilonism3" )
					TaskPlayAnim( player, "rcmepsilonism3", "base_loop", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Tapé sur un clavier", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@heists@prison_heiststation@cop_reactions" )
					TaskPlayAnim( player, "anim@heists@prison_heiststation@cop_reactions", "cop_b_idle", 8.0, 1.0, -1, 51, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Se chauffer les mains autour du feu", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "amb@world_human_stand_fire@male@idle_a" )
					TaskPlayAnim( player, "amb@world_human_stand_fire@male@idle_a", "idle_a", 8.0, 1.0, -1, 51, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Agiter les bras en l'air", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "random@mugging5" )
					TaskPlayAnim( player, "random@mugging5", "001445_01_gangintimidation_1_female_idle_b", 8.0, 1.0, 3000, 51, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Jardinage", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "creatures@rottweiler@tricks@" )
					TaskPlayAnim( player, "creatures@rottweiler@tricks@", "petting_franklin", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("BBQ", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					TaskStartScenarioInPlace(player, 'PROP_HUMAN_BBQ', 0, true)
					Wait (300)
 				end
			})

			RageUI.Button("Fouiller une poubelle", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					TaskStartScenarioInPlace(player, 'PROP_HUMAN_BUM_BIN', 0, true)
					Wait (300)
 				end
			})

			RageUI.Button("Félicitation", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					TaskStartScenarioInPlace(player, 'WORLD_HUMAN_CHEERING', 0, true)
					Wait (300)
 				end
			})

			RageUI.Button("Filmer avec son téléphone", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					TaskStartScenarioInPlace(player, 'WORLD_HUMAN_MOBILE_FILM_SHOCKING', 0, true)
					Wait (300)
 				end
			})

			RageUI.Button("Taper au marteau", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					TaskStartScenarioInPlace(player, 'WORLD_HUMAN_HAMMERING', 0, true)
					Wait (300)
 				end
			})

			RageUI.Button("Tenir un balai", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					TaskStartScenarioInPlace(player, 'WORLD_HUMAN_JANITOR', 0, true)
					Wait (300)
 				end
			})

			RageUI.Button("Souffler des feuilles", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					TaskStartScenarioInPlace(player, 'WORLD_HUMAN_GARDENER_LEAF_BLOWER', 0, true)
					Wait (300)
 				end
			})

			RageUI.Button("Essuyer une vitre", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					TaskStartScenarioInPlace(player, 'WORLD_HUMAN_MAID_CLEAN', 0, true)
					Wait (300)
 				end
			})

			RageUI.Button("Sortir son notepad", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					TaskStartScenarioInPlace(player, 'CODE_HUMAN_MEDIC_TIME_OF_DEATH', 0, true)
					Wait (300)
 				end
			})

			RageUI.Button("Fumer une cigarette", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					TaskStartScenarioInPlace(player, 'WORLD_HUMAN_SMOKING', 0, true)
					Wait (300)
 				end
			})

			RageUI.Button("Fumer de la weed", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					TaskStartScenarioInPlace(player, 'WORLD_HUMAN_DRUG_DEALER', 0, true)
					Wait (300)
 				end
			})

			RageUI.Button("Outil de soudure", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					TaskStartScenarioInPlace(player, 'WORLD_HUMAN_WELDING', 0, true)
					Wait (300)
 				end
			})
		end)


		RageUI.IsVisible(sportMenu,function()
		    RageUI.Button("Se mettre en position de combat", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@deathmatch_intros@unarmed" )
					TaskPlayAnim( player, "anim@deathmatch_intros@unarmed", "intro_male_unarmed_c", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("S'étirer avant un combat", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@deathmatch_intros@unarmed" )
					TaskPlayAnim( player, "anim@deathmatch_intros@unarmed", "intro_male_unarmed_e", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Faire son jogging", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "amb@world_human_jog_standing@male@idle_a" )
					TaskPlayAnim( player, "amb@world_human_jog_standing@male@idle_a", "idle_a", 8.0, 1.0, -1, 51, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Faire son jogging heureux", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "amb@world_human_jog_standing@female@idle_a" )
					TaskPlayAnim( player, "amb@world_human_jog_standing@female@idle_a", "idle_a", 8.0, 1.0, -1, 51, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Faire son jogging bras tendu", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "amb@world_human_power_walker@female@idle_a" )
					TaskPlayAnim( player, "amb@world_human_power_walker@female@idle_a", "idle_a", 8.0, 1.0, -1, 51, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Faire son jogging comme un robot", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "move_m@joy@a" )
					TaskPlayAnim( player, "move_m@joy@a", "walk", 8.0, 1.0, -1, 51, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Faire des sauts de sport", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "timetable@reunited@ig_2" )
					TaskPlayAnim( player, "timetable@reunited@ig_2", "jimmy_getknocked", 8.0, 1.0, -1, 51, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Fatigué après une course", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "re@construction" )
					TaskPlayAnim( player, "re@construction", "out_of_breath", 8.0, 1.0, -1, 51, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Faire des pompes", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "amb@world_human_push_ups@male@idle_a" )
					TaskPlayAnim( player, "amb@world_human_push_ups@male@idle_a", "idle_d", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Faire des abdos", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "amb@world_human_sit_ups@male@idle_a" )
					TaskPlayAnim( player, "amb@world_human_sit_ups@male@idle_a", "idle_a", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Demi salto", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@arena@celeb@flat@solo@no_props@" )
					TaskPlayAnim( player, "anim@arena@celeb@flat@solo@no_props@", "cap_a_player_a", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Salto", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@arena@celeb@flat@solo@no_props@" )
					TaskPlayAnim( player, "anim@arena@celeb@flat@solo@no_props@", "flip_a_player_a", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Glissade sur les genoux", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@arena@celeb@flat@solo@no_props@" )
					TaskPlayAnim( player, "anim@arena@celeb@flat@solo@no_props@", "slide_a_player_a", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Glissade sur les genoux 2", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@arena@celeb@flat@solo@no_props@" )
					TaskPlayAnim( player, "anim@arena@celeb@flat@solo@no_props@", "slide_b_player_a", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Glissade sur les genoux 3", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@arena@celeb@flat@solo@no_props@" )
					TaskPlayAnim( player, "anim@arena@celeb@flat@solo@no_props@", "slide_c_player_a", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Tir à la batte", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@arena@celeb@flat@solo@no_props@" )
					TaskPlayAnim( player, "anim@arena@celeb@flat@solo@no_props@", "slugger_a_player_a", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Jouer au golf", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "rcmnigel1d" )
					TaskPlayAnim( player, "rcmnigel1d", "swing_a_mark", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Karate", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@mp_player_intcelebrationfemale@karate_chops" )
					TaskPlayAnim( player, "anim@mp_player_intcelebrationfemale@karate_chops", "karate_chops", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Karate 2", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@mp_player_intcelebrationmale@karate_chops" )
					TaskPlayAnim( player, "anim@mp_player_intcelebrationmale@karate_chops", "karate_chops", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Entraînement de boxe", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@mp_player_intcelebrationmale@shadow_boxing" )
					TaskPlayAnim( player, "anim@mp_player_intcelebrationmale@shadow_boxing", "shadow_boxing", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Entraînement de boxe 2", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@mp_player_intcelebrationfemale@shadow_boxing" )
					TaskPlayAnim( player, "anim@mp_player_intcelebrationfemale@shadow_boxing", "shadow_boxing", 8.0, 1.0, -1, 0, 0, 0, 0, 0 )
					Wait (300)
 				end
			})
		end)


        RageUI.IsVisible(posMenu,function()
		    RageUI.Button("Allongé relax", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "switch@trevor@scares_tramp" )
					TaskPlayAnim( player, "switch@trevor@scares_tramp", "trev_scares_tramp_idle_tramp", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Main dans le dos", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@miss@low@fin@vagos@" )
					TaskPlayAnim( player, "anim@miss@low@fin@vagos@", "idle_ped06", 8.0, 1.0, -1, 51, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Allongé dos au sol", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "switch@trevor@annoys_sunbathers" )
					TaskPlayAnim( player, "switch@trevor@annoys_sunbathers", "trev_annoys_sunbathers_loop_girl", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Allongé dos au sol détendu", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "switch@trevor@annoys_sunbathers" )
					TaskPlayAnim( player, "switch@trevor@annoys_sunbathers", "trev_annoys_sunbathers_loop_guy", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Torse au sol au téléphone", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "missfbi3_sniping" )
					TaskPlayAnim( player, "missfbi3_sniping", "prone_dave", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Se regarder dans le mirroir", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@heists@heist_corona@team_idles@male_a" )
					TaskPlayAnim( player, "anim@heists@heist_corona@team_idles@male_a", "idle", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Se regarder dans le mirroir 2", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "amb@world_human_hang_out_street@male_b@idle_a" )
					TaskPlayAnim( player, "amb@world_human_hang_out_street@male_b@idle_a", "idle_b", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Se regarder dans le mirroir 3", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "mp_move@prostitute@m@french" )
					TaskPlayAnim( player, "mp_move@prostitute@m@french", "idle", 8.0, 1.0, -1, 51, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Se regarder dans le mirroir 4", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "random@countrysiderobbery" )
					TaskPlayAnim( player, "random@countrysiderobbery", "idle_a", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Se regarder dans le mirroir 5", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@heists@heist_corona@team_idles@female_a" )
					TaskPlayAnim( player, "anim@heists@heist_corona@team_idles@female_a", "idle", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Se regarder dans le mirroir 6", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@heists@humane_labs@finale@strip_club" )
					TaskPlayAnim( player, "anim@heists@humane_labs@finale@strip_club", "ped_b_celebrate_loop", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Se regarder dans le mirroir 7", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@mp_celebration@idles@female" )
					TaskPlayAnim( player, "anim@mp_celebration@idles@female", "celebration_idle_f_a", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Se regarder dans le mirroir 8", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@mp_corona_idles@female_b@idle_a" )
					TaskPlayAnim( player, "anim@mp_corona_idles@female_b@idle_a", "idle_a", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Se regarder dans le mirroir 9", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@mp_corona_idles@male_c@idle_a" )
					TaskPlayAnim( player, "anim@mp_corona_idles@male_c@idle_a", "idle_a", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Se regarder dans le mirroir 10", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@mp_corona_idles@male_d@idle_a" )
					TaskPlayAnim( player, "anim@mp_corona_idles@male_d@idle_a", "idle_a", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Attendre en se regardant la main", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "friends@fra@ig_1" )
					TaskPlayAnim( player, "friends@fra@ig_1", "base_idle", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

		end)

		
		RageUI.IsVisible(subMenu,function() ---------------du coup on bati le "submenu"

			RageUI.Button("Dance F", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@amb@nightclub@dancers@solomun_entourage@" )
					TaskPlayAnim( player, "anim@amb@nightclub@dancers@solomun_entourage@", "mi_dance_facedj_17_v1_female^1", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Dance F2", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@" )
					TaskPlayAnim( player, "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@", "high_center", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Dance F3", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@" )
					TaskPlayAnim( player, "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@", "high_center_up", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Dance F4", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" )
					TaskPlayAnim( player, "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", "hi_dance_facedj_09_v2_female^1", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Dance F5", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" )
					TaskPlayAnim( player, "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", "hi_dance_facedj_09_v2_female^3", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Dance Slow", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@amb@nightclub@mini@dance@dance_solo@male@var_b@" )
					TaskPlayAnim( player, "anim@amb@nightclub@mini@dance@dance_solo@male@var_b@", "low_center", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Dance Slow 2", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@" )
					TaskPlayAnim( player, "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@", "low_center", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Dance Slow 3", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@" )
					TaskPlayAnim( player, "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@", "low_center_down", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Dance Slow 4", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@" )
					TaskPlayAnim( player, "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@", "low_center", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Dance", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@amb@nightclub@dancers@podium_dancers@" )
					TaskPlayAnim( player, "anim@amb@nightclub@dancers@podium_dancers@", "hi_dance_facedj_17_v2_male^5", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Dance 2", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@amb@nightclub@mini@dance@dance_solo@male@var_b@" )
					TaskPlayAnim( player, "anim@amb@nightclub@mini@dance@dance_solo@male@var_b@", "high_center_down", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Dance 3", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@amb@nightclub@mini@dance@dance_solo@male@var_b@" )
					TaskPlayAnim( player, "anim@amb@nightclub@mini@dance@dance_solo@male@var_b@", "high_center_up", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Dance 4", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@amb@nightclub@mini@dance@dance_solo@male@var_a@" )
					TaskPlayAnim( player, "anim@amb@nightclub@mini@dance@dance_solo@male@var_a@", "high_center", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Dance 5", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@amb@casino@mini@dance@dance_solo@female@var_a@" )
					TaskPlayAnim( player, "anim@amb@casino@mini@dance@dance_solo@female@var_a@", "med_center", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Dance 6", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "misschinese2_crystalmazemcs1_cs" )
					TaskPlayAnim( player, "misschinese2_crystalmazemcs1_cs", "dance_loop_tao", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Dance 7", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "missfbi3_sniping" )
					TaskPlayAnim( player, "missfbi3_sniping", "dance_m_default", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Dance 8", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@" )
					TaskPlayAnim( player, "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@", "med_center_up", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Dance 9", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@amb@nightclub@dancers@crowddance_facedj_transitions@from_hi_intensity" )
					TaskPlayAnim( player, "anim@amb@nightclub@dancers@crowddance_facedj_transitions@from_hi_intensity", "trans_dance_facedj_hi_to_li_07_v1_female^1", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Dance 10", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@amb@nightclub@dancers@crowddance_facedj_transitions@from_hi_intensity" )
					TaskPlayAnim( player, "anim@amb@nightclub@dancers@crowddance_facedj_transitions@from_hi_intensity", "trans_dance_facedj_hi_to_li_07_v1_male^2", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Dance 11", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@amb@nightclub@dancers@crowddance_facedj_transitions@from_hi_intensity" )
					TaskPlayAnim( player, "anim@amb@nightclub@dancers@crowddance_facedj_transitions@from_hi_intensity", "trans_dance_facedj_hi_to_li_07_v1_male^4", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Dance 12", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" )
					TaskPlayAnim( player, "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", "hi_dance_facedj_09_v1_female^1", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Dance 13", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity" )
					TaskPlayAnim( player, "anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity", "hi_dance_facedj_17_v2_male^1", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Dance Upper", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@" )
					TaskPlayAnim( player, "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@", "high_center", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Dance Upper 2", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@" )
					TaskPlayAnim( player, "anim@amb@nightclub@mini@dance@dance_solo@female@var_b@", "high_center_up", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Dance Upper 3", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@amb@nightclub@mini@dance@dance_solo@male@var_a@" )
					TaskPlayAnim( player, "anim@amb@nightclub@mini@dance@dance_solo@male@var_a@", "high_center_up", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Dance Shy", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@amb@nightclub@mini@dance@dance_solo@male@var_a@" )
					TaskPlayAnim( player, "anim@amb@nightclub@mini@dance@dance_solo@male@var_a@", "low_center", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Dance Shy 2", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@" )
					TaskPlayAnim( player, "anim@amb@nightclub@mini@dance@dance_solo@female@var_a@", "low_center_down", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Dance Silly", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "special_ped@mountain_dancer@monologue_3@monologue_3a" )
					TaskPlayAnim( player, "special_ped@mountain_dancer@monologue_3@monologue_3a", "mnt_dnc_buttwag", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Dance Silly 2", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "move_clown@p_m_zero_idles@" )
					TaskPlayAnim( player, "move_clown@p_m_zero_idles@", "fidget_short_dance", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Dance Silly 3", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "move_clown@p_m_two_idles@" )
					TaskPlayAnim( player, "move_clown@p_m_two_idles@", "fidget_short_dance", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Dance Silly 4", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@amb@nightclub@lazlow@hi_podium@" )
					TaskPlayAnim( player, "anim@amb@nightclub@lazlow@hi_podium@", "danceidle_hi_11_buttwiggle_b_laz", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Dance Silly 5", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "timetable@tracy@ig_5@idle_a" )
					TaskPlayAnim( player, "timetable@tracy@ig_5@idle_a", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Dance Silly 6", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "move_clown@p_m_two_idles@" )
					TaskPlayAnim( player, "move_clown@p_m_two_idles@", "fidget_short_dance", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Dance Silly 7", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@amb@casino@mini@dance@dance_solo@female@var_b@" )
					TaskPlayAnim( player, "anim@amb@casino@mini@dance@dance_solo@female@var_b@", "high_center", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

			RageUI.Button("Dance Silly 8", nil, {RightLabel = "→"}, true , {
				onSelected = function() 
					loadAnimDict( "anim@mp_player_intcelebrationfemale@the_woogie" )
					TaskPlayAnim( player, "anim@mp_player_intcelebrationfemale@the_woogie", "the_woogie", 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
					Wait (300)
 				end
			})

		end) -----fermuture du sub menu

		Wait(5)-------------
	end------------------------
 end)-------------------------------- fermeture de la fonction  coucouzykss()
end----------------------------
end ------------------------

Keys.Register('X', 'X', 'Arreter une animation.', function() 
    if IsPedSittingInAnyVehicle(PlayerPedId()) then ------------------ conditions qui permet deviter de clear quand le joueurs est dans un véhicule
        return
      end---- 
    ClearPedTasksImmediately(PlayerPedId())
end)

Keys.Register('F2', 'F2', 'Ouvrir le menu animation', function() ---- 
    coucouZykss() 
end)