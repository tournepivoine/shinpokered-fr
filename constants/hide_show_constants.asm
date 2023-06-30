DEF HIDE EQU $11
DEF SHOW EQU $15

; MissableObjects indexes (see data/maps/hide_show_data.asm)
; this is a list of the sprites that can be enabled/disabled during the game
; sprites marked with an X are constants that are never used
; because those sprites are not (de)activated in a map's script
; (they are either items or sprites that deactivate after battle
; and are detected in wMissableObjectList)
; However, these constants are still required to synchronise properly
; with the hide/show list, so you can't just remove them.

	const_def
	const HS_PALLET_TOWN_OAK               ; 00
	const HS_LYING_OLD_MAN                 ; 01
	const HS_OLD_MAN                       ; 02
	const HS_MUSEUM_GUY                    ; 03
	const HS_GYM_GUY                       ; 04
	const HS_CERULEAN_RIVAL                ; 05
	const HS_CERULEAN_ROCKET               ; 06
	const HS_CERULEAN_GUARD_1              ; 07
	const HS_CERULEAN_CAVE_GUY             ; 08
	const HS_CERULEAN_GUARD_2              ; 09
	const HS_VERMILION_JENNY			   ; FC
	const HS_SAFFRON_CITY_1                ; 0A
	const HS_SAFFRON_CITY_2                ; 0B
	const HS_SAFFRON_CITY_3                ; 0C
	const HS_SAFFRON_CITY_4                ; 0D
	const HS_SAFFRON_CITY_5                ; 0E
	const HS_SAFFRON_CITY_6                ; 0F
	const HS_SAFFRON_CITY_7                ; 10
	const HS_SAFFRON_CITY_8                ; 11
	const HS_SAFFRON_CITY_9                ; 12
	const HS_SAFFRON_CITY_A                ; 13
	const HS_SAFFRON_CITY_B                ; 14
	const HS_SAFFRON_CITY_C                ; 15
	const HS_SAFFRON_CITY_D                ; 16
	const HS_SAFFRON_CITY_E                ; 17
	const HS_SAFFRON_CITY_F                ; 18
	const HS_SAFFRON_CITY_UP_GRADE         ; 19
	const HS_ROUTE_2_ITEM_1                ; 1A X
	const HS_ROUTE_2_ITEM_2                ; 1B X
	const HS_ROUTE_4_ITEM                  ; 1C X
	const HS_ROUTE_9_ITEM                  ; 1D X
	const HS_ROUTE_12_SNORLAX              ; 1E
	const HS_ROUTE_12_ITEM_1               ; 1F X
	const HS_ROUTE_12_ITEM_2               ; 20 X
	const HS_ROUTE_15_ITEM                 ; 21 X
	const HS_ROUTE_16_SNORLAX              ; 22
	const HS_ROUTE_22_RIVAL_1              ; 23
	const HS_ROUTE_22_RIVAL_2              ; 24
	const HS_NUGGET_BRIDGE_GUY             ; 25
	const HS_ROUTE_24_ITEM                 ; 26 X
	const HS_DAMIEN						   ; FC
	const HS_ROUTE_25_ITEM                 ; 27 X
	const HS_CACTUS                        ; 28
	const HS_BRUNSWICK_ZAPDOS_G_1          ; 29
	const HS_DAISY_SITTING                 ; 2A
	const HS_DAISY_WALKING                 ; 2B
	const HS_TOWN_MAP                      ; 2C
	const HS_OAKS_LAB_RIVAL                ; 2D
	const HS_STARTER_BALL_1                ; 2E
	const HS_STARTER_BALL_2                ; 2F
	const HS_STARTER_BALL_3                ; 30
	const HS_OAKS_LAB_OAK_1                ; 31
	const HS_STARTER_BALL_4                ; 32, was dex, pikachu
	const HS_STARTER_BALL_5                ; 33, was dex, eevee
	const HS_OAKS_LAB_OAK_2                ; 34
	const HS_VIRIDIAN_GYM_GIOVANNI         ; 35
	const HS_VIRIDIAN_GYM_ITEM             ; 36 X
	const HS_OLD_AMBER                     ; 37
	const HS_CERULEAN_CAVE_1F_ITEM_1       ; 38 X
	const HS_CERULEAN_CAVE_1F_ITEM_2       ; 39 X
	const HS_CERULEAN_CAVE_1F_ITEM_3       ; 3A X
	const HS_MOLTRES_G                     ; 3D X
	const HS_POKEMON_TOWER_2F_RIVAL        ; 3E
	const HS_BRUNSWICK_ZAPDOS_G_2          ; 3F, was const HS_POKEMON_TOWER_3F_ITEM
	const HS_POKEMON_TOWER_5F_ITEM         ; 40 X
	const HS_POKEMON_TOWER_6F_ITEM_1       ; 41 X
	const HS_POKEMON_TOWER_6F_ITEM_2       ; 42 X
	const HS_POKEMON_TOWER_7F_JESSIE       ; 43
	const HS_POKEMON_TOWER_7F_JAMES        ; 44
	const HS_POKEMON_TOWER_7F_MR_FUJI      ; 45
	const HS_MR_FUJIS_HOUSE_MR_FUJI        ; 46
	const HS_CELADON_MANSION_EEVEE_GIFT    ; 47
	const HS_GAME_CORNER_ROCKET            ; 48
	const HS_WARDENS_HOUSE_ITEM            ; 49 X
	const HS_POKEMON_MANSION_1F_ITEM_1     ; 4A X
	const HS_POKEMON_MANSION_1F_ITEM_2     ; 4B X
	const HS_FIGHTING_DOJO_GIFT_1          ; 4C
	const HS_FIGHTING_DOJO_GIFT_2          ; 4D
	const HS_FIGHTING_DOJO_GIFT_3		   ; 4E
	const HS_SILPH_CO_1F_RECEPTIONIST      ; 4F
	const HS_VOLTORB_1                     ; 50 X
	const HS_VOLTORB_2                     ; 51 X
	const HS_VOLTORB_3                     ; 52 X
	const HS_ELECTRODE_1                   ; 53 X
	const HS_VOLTORB_4                     ; 54 X
	const HS_VOLTORB_5                     ; 55 X
	const HS_ELECTRODE_2                   ; 56 X
	const HS_VOLTORB_6                     ; 57 X
	const HS_ZAPDOS                        ; 58 X
	const HS_POWER_PLANT_ITEM_1            ; 59 X
	const HS_POWER_PLANT_ITEM_2            ; 5A X
	const HS_POWER_PLANT_ITEM_3            ; 5B X
	const HS_POWER_PLANT_ITEM_4            ; 5C X
	const HS_POWER_PLANT_ITEM_5            ; 5D X
	const HS_GYAOON                        ; 5E X
	const HS_VICTORY_ROAD_2F_ITEM_1        ; 5F X
	const HS_VICTORY_ROAD_2F_ITEM_2        ; 60 X
	const HS_VICTORY_ROAD_2F_ITEM_3        ; 61 X
	const HS_VICTORY_ROAD_2F_ITEM_4        ; 62 X
	const HS_VICTORY_ROAD_2F_BOULDER       ; 63
	const HS_BILL_POKEMON                  ; 64
	const HS_BILL_1                        ; 65
	const HS_BILL_2                        ; 66
	const HS_BILLS_NIDORINO                ; 67
	const HS_VIRIDIAN_FOREST_ITEM_1        ; 68 X
	const HS_VIRIDIAN_FOREST_ITEM_2        ; 69 X
	const HS_VIRIDIAN_FOREST_ITEM_3        ; 6A X
	const HS_MT_MOON_1F_ITEM_1             ; 6B X
	const HS_MT_MOON_1F_ITEM_2             ; 6C X
	const HS_MT_MOON_1F_ITEM_3             ; 6D X
	const HS_MT_MOON_1F_ITEM_4             ; 6E X
	const HS_MT_MOON_1F_ITEM_5             ; 6F X
	const HS_MT_MOON_1F_ITEM_6             ; 70 X
	const HS_MT_MOON_B2F_JESSIE            ; 71
	const HS_MT_MOON_B2F_JAMES             ; 72
	const HS_MT_MOON_B2F_FOSSIL_1          ; 73
	const HS_MT_MOON_B2F_FOSSIL_2          ; 74
	const HS_MT_MOON_B2F_ITEM_1            ; 75 X
	const HS_MT_MOON_B2F_ITEM_2            ; 76 X
	const HS_SS_ANNE_2F_RIVAL              ; 77
	const HS_SS_ANNE_1F_ROOMS_ITEM         ; 78 X
	const HS_SS_ANNE_2F_ROOMS_ITEM_1       ; 79 X
	const HS_SS_ANNE_2F_ROOMS_ITEM_2       ; 7A X
	const HS_SS_ANNE_B1F_ROOMS_ITEM_1      ; 7B X
	const HS_SS_ANNE_B1F_ROOMS_ITEM_2      ; 7C X
	const HS_SS_ANNE_B1F_ROOMS_ITEM_3      ; 7D X
	const HS_WUGTRIO                       ; 7E X 
	const HS_VICTORY_ROAD_3F_ITEM_1        ; 7F X
	const HS_VICTORY_ROAD_3F_ITEM_2        ; 80 X
	const HS_VICTORY_ROAD_3F_BOULDER       ; 81
	const HS_ROCKET_HIDEOUT_B1F_ITEM_1     ; 82 X
	const HS_ROCKET_HIDEOUT_B1F_ITEM_2     ; 83 X
	const HS_ROCKET_HIDEOUT_B2F_ITEM_1     ; 84 X
	const HS_ROCKET_HIDEOUT_B2F_ITEM_2     ; 85 X
	const HS_ROCKET_HIDEOUT_B2F_ITEM_3     ; 86 X
	const HS_ROCKET_HIDEOUT_B2F_ITEM_4     ; 87 X
	const HS_ROCKET_HIDEOUT_B3F_ITEM_1     ; 88 X
	const HS_ROCKET_HIDEOUT_B3F_ITEM_2     ; 89 X
	const HS_ROCKET_HIDEOUT_B4F_GIOVANNI   ; 8A
	const HS_ROCKET_HIDEOUT_B4F_JAMES      ; 8B
	const HS_ROCKET_HIDEOUT_B4F_JESSIE     ; 8C
	const HS_ROCKET_HIDEOUT_B4F_ITEM_1     ; 8D X
	const HS_ROCKET_HIDEOUT_B4F_ITEM_2     ; 8E X
	const HS_ROCKET_HIDEOUT_B4F_ITEM_3     ; 8F X
	const HS_ROCKET_HIDEOUT_B4F_ITEM_4     ; 90
	const HS_ROCKET_HIDEOUT_B4F_ITEM_5     ; 91
	const HS_GARNET_ARTICUNO_G             ; 92
	const HS_GARNET_ITEM_1				   ; 93
	const HS_GARNET_ITEM_2                 ; 94
	const HS_ARTICUNO_G_COPY_1			   ; 95
	const HS_ARTICUNO_G_COPY_2             ; 96
	const HS_SILPH_CO_3F_1                 ; 97
	const HS_SILPH_CO_3F_2                 ; 98
	const HS_SILPH_CO_3F_ITEM              ; 99 X
	const HS_SILPH_CO_4F_1                 ; 9A
	const HS_SILPH_CO_4F_2                 ; 9B
	const HS_SILPH_CO_4F_3                 ; 9C
	const HS_SILPH_CO_4F_ITEM_1            ; 9D X
	const HS_SILPH_CO_4F_ITEM_2            ; 9E X
	const HS_SILPH_CO_4F_ITEM_3            ; 9F X
	const HS_SILPH_CO_5F_1                 ; A0
	const HS_SILPH_CO_5F_2                 ; A1
	const HS_SILPH_CO_5F_3                 ; A2
	const HS_SILPH_CO_5F_4                 ; A3
	const HS_SILPH_CO_5F_ITEM_1            ; A4 X
	const HS_SILPH_CO_5F_ITEM_2            ; A5 X
	const HS_SILPH_CO_5F_ITEM_3            ; A6 X
	const HS_SILPH_CO_6F_1                 ; A7
	const HS_SILPH_CO_6F_2                 ; A8
	const HS_SILPH_CO_6F_3                 ; A9
	const HS_SILPH_CO_6F_ITEM_1            ; AA X
	const HS_SILPH_CO_6F_ITEM_2            ; AB X
	const HS_SILPH_CO_7F_1                 ; AC
	const HS_SILPH_CO_7F_2                 ; AE
	const HS_SILPH_CO_7F_3                 ; AF
	const HS_SILPH_CO_7F_4                 ; B0
	const HS_SILPH_CO_7F_RIVAL             ; B1
	const HS_SILPH_CO_7F_ITEM_1            ; B2 X
	const HS_SILPH_CO_7F_ITEM_2            ; B3	X
	const HS_SILPH_CO_8F_1                 ; B4
	const HS_SILPH_CO_8F_2                 ; B5
	const HS_SILPH_CO_8F_3                 ; B6
	const HS_SILPH_CO_10F_1                ; B7
	const HS_SILPH_CO_10F_2                ; B8
	const HS_SILPH_CO_10F_ITEM_1           ; B9 X
	const HS_SILPH_CO_10F_ITEM_2           ; BA X best deck
	const HS_SILPH_CO_10F_ITEM_3           ; BB X
	const HS_SILPH_CO_11F_1                ; BC
	const HS_SILPH_CO_11F_2                ; BD
	const HS_SILPH_CO_11F_3                ; BE
	const HS_OMEGA                         ; BF
	const HS_DRAGONITE                     ; C0
	const HS_MOLTRES                       ; C1
	const HS_POKEMON_MANSION_2F_ITEM       ; C2 X
	const HS_POKEMON_MANSION_3F_ITEM_1     ; C3 X
	const HS_POKEMON_MANSION_3F_ITEM_2     ; C4 X
	const HS_POKEMON_MANSION_B1F_ITEM_1    ; C5 X
	const HS_POKEMON_MANSION_B1F_ITEM_2    ; C6 X
	const HS_POKEMON_MANSION_B1F_ITEM_3    ; C7 X
	const HS_POKEMON_MANSION_B1F_ITEM_4    ; C8 X
	const HS_POKEMON_MANSION_B1F_ITEM_5    ; C9 X
	const HS_MANSION_GUARD                 ; CA
	const HS_SAFARI_ZONE_EAST_ITEM_1       ; CB X
	const HS_SAFARI_ZONE_EAST_ITEM_2       ; CC X
	const HS_SAFARI_ZONE_EAST_ITEM_3       ; CD X
	const HS_SAFARI_ZONE_EAST_ITEM_4       ; CE X
	const HS_SAFARI_ZONE_NORTH_ITEM_1      ; CF X
	const HS_SAFARI_ZONE_NORTH_ITEM_2      ; D0 X
	const HS_SAFARI_ZONE_WEST_ITEM_1       ; D1 X
	const HS_SAFARI_ZONE_WEST_ITEM_2       ; D2 X
	const HS_SAFARI_ZONE_WEST_ITEM_3       ; D3 X
	const HS_SAFARI_ZONE_WEST_ITEM_4       ; D4 X
	const HS_SAFARI_ZONE_CENTER_ITEM       ; D5 X
	const HS_CERULEAN_CAVE_2F_ITEM_1       ; D6 X
	const HS_CERULEAN_CAVE_2F_ITEM_2       ; D7 X
	const HS_CERULEAN_CAVE_2F_ITEM_3       ; D8 X
	const HS_MEWTWO                        ; D9 X
	const HS_CERULEAN_CAVE_B1F_ITEM_1      ; DA X
	const HS_CERULEAN_CAVE_B1F_ITEM_2      ; DB X
	const HS_VICTORY_ROAD_1F_ITEM_1        ; DC X
	const HS_VICTORY_ROAD_1F_ITEM_2        ; DE X
	const HS_CHAMPIONS_ROOM_OAK            ; DF
	const HS_SEAFOAM_ISLANDS_1F_BOULDER_1  ; E0
	const HS_SEAFOAM_ISLANDS_1F_BOULDER_2  ; E1
	const HS_SEAFOAM_ISLANDS_B1F_BOULDER_1 ; E2
	const HS_SEAFOAM_ISLANDS_B1F_BOULDER_2 ; E3
	const HS_SEAFOAM_ISLANDS_B2F_BOULDER_1 ; E4
	const HS_SEAFOAM_ISLANDS_B2F_BOULDER_2 ; E5
	const HS_SEAFOAM_ISLANDS_B3F_BOULDER_1 ; E6
	const HS_SEAFOAM_ISLANDS_B3F_BOULDER_2 ; E7
	const HS_SEAFOAM_ISLANDS_B3F_BOULDER_3 ; E8
	const HS_SEAFOAM_ISLANDS_B3F_BOULDER_4 ; E9
	const HS_SEAFOAM_ISLANDS_B4F_BOULDER_1 ; EA sports. to the game.
	const HS_SEAFOAM_ISLANDS_B4F_BOULDER_2 ; EB
	const HS_ARTICUNO                      ; EC
	const HS_MEW                           ; ED
	const HS_POKEMON_MANSION_B2F_ITEM_1    ; EE
	const HS_POKEMON_MANSION_B2F_ITEM_2    ; EF
	const HS_ROUTE_1_OAK                   ; F0
	const HS_MT_MOON_CRATER_ITEM_1         ; F1
	const HS_MT_MOON_CRATER_ITEM_2         ; F2
	const HS_MT_MOON_CRATER_ITEM_3         ; F3
	const HS_GIOVANNIS_ROOM_ITEM_1         ; F4
	const HS_GIOVANNIS_ROOM_ITEM_2         ; F5
	const HS_ROCK_TUNNEL_B1F_DOME          ; F6
	const HS_ROCK_TUNNEL_B1F_HELIX         ; F7
	const HS_ROCK_TUNNEL_B1F_AMBER         ; F8
	const HS_ROCK_TUNNEL_B1F_WING          ; F9
	const HS_MT_MOON_CRATER_GUARD          ; FA
	const HS_DAYCARE_BULBASAUR			   ; FB
DEF NUM_HS_OBJECTS EQU const_value
