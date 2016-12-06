/*
	Author: Raychan
*/

//Teleport Script
waituntil {! isnull player};

//S = Spearhead HQ / A = Airforce Base / M = Marine Hafen / T = Trainingsplatz / L = Logistik / P = Sammelbereich / F = Luftkampfabteilung

//Port to Marine Hafen
port_teleport_S addAction ["<t size='1.3' shadow='2' color='#5858FA'>Marine Hafen</t>", {player setposasl [getmarkerpos "Marine_Base" select 0,getmarkerpos "Marine_Base" select 1,1.5];}, [], 5, true, true, "","alive _target"];
port_teleport_A addAction ["<t size='1.3' shadow='2' color='#5858FA'>Marine Hafen</t>", {player setposasl [getmarkerpos "Marine_Base" select 0,getmarkerpos "Marine_Base" select 1,1.5];}, [], 5, true, true, "","alive _target"];
port_teleport_P addAction ["<t size='1.3' shadow='2' color='#5858FA'>Marine Hafen</t>", {player setposasl [getmarkerpos "Marine_Base" select 0,getmarkerpos "Marine_Base" select 1,1.5];}, [], 5, true, true, "","alive _target"];
port_teleport_F addAction ["<t size='1.3' shadow='2' color='#5858FA'>Marine Hafen</t>", {player setposasl [getmarkerpos "Marine_Base" select 0,getmarkerpos "Marine_Base" select 1,1.5];}, [], 5, true, true, "","alive _target"];
port_teleport_T addAction ["<t size='1.3' shadow='2' color='#5858FA'>Marine Hafen</t>", {player setposasl [getmarkerpos "Marine_Base" select 0,getmarkerpos "Marine_Base" select 1,1.5];}, [], 5, true, true, "","alive _target"];
port_teleport_L addAction ["<t size='1.3' shadow='2' color='#5858FA'>Marine Hafen</t>", {player setposasl [getmarkerpos "Marine_Base" select 0,getmarkerpos "Marine_Base" select 1,1.5];}, [], 5, true, true, "","alive _target"];

//Port to Spearhead HQ
port_teleport_M addAction ["<t size='1.3' shadow='2' color='#5858FA'>Spearhead HQ</t>", {player setposatl [getmarkerpos "Respawn_West" select 0,getmarkerpos "Respawn_West" select 1,0.2];}, [], 5, false, true, "","alive _target"];
port_teleport_A addAction ["<t size='1.3' shadow='2' color='#5858FA'>Spearhead HQ</t>", {player setposatl [getmarkerpos "Respawn_West" select 0,getmarkerpos "Respawn_West" select 1,0.2];}, [], 5, false, true, "","alive _target"];
port_teleport_P addAction ["<t size='1.3' shadow='2' color='#5858FA'>Spearhead HQ</t>", {player setposatl [getmarkerpos "Respawn_West" select 0,getmarkerpos "Respawn_West" select 1,0.2];}, [], 5, false, true, "","alive _target"];
port_teleport_F addAction ["<t size='1.3' shadow='2' color='#5858FA'>Spearhead HQ</t>", {player setposatl [getmarkerpos "Respawn_West" select 0,getmarkerpos "Respawn_West" select 1,0.2];}, [], 5, false, true, "","alive _target"];
port_teleport_T addAction ["<t size='1.3' shadow='2' color='#5858FA'>Spearhead HQ</t>", {player setposatl [getmarkerpos "Respawn_West" select 0,getmarkerpos "Respawn_West" select 1,0.2];}, [], 5, false, true, "","alive _target"];
port_teleport_L addAction ["<t size='1.3' shadow='2' color='#5858FA'>Spearhead HQ</t>", {player setposatl [getmarkerpos "Respawn_West" select 0,getmarkerpos "Respawn_West" select 1,0.2];}, [], 5, false, true, "","alive _target"];

//Port to Airforce Base
port_teleport_S addAction ["<t size='1.3' shadow='2' color='#5858FA'>Molos Airforce Base</t>", {player setposasl [getmarkerpos "Airforce_Base" select 0,getmarkerpos "Airforce_Base" select 1,1.5];}, [], 5, true, true, "","alive _target"];
port_teleport_M addAction ["<t size='1.3' shadow='2' color='#5858FA'>Molos Airforce Base</t>", {player setposasl [getmarkerpos "Airforce_Base" select 0,getmarkerpos "Airforce_Base" select 1,1.5];}, [], 5, true, true, "","alive _target"];
port_teleport_P addAction ["<t size='1.3' shadow='2' color='#5858FA'>Molos Airforce Base</t>", {player setposasl [getmarkerpos "Airforce_Base" select 0,getmarkerpos "Airforce_Base" select 1,1.5];}, [], 5, true, true, "","alive _target"];
port_teleport_F addAction ["<t size='1.3' shadow='2' color='#5858FA'>Molos Airforce Base</t>", {player setposasl [getmarkerpos "Airforce_Base" select 0,getmarkerpos "Airforce_Base" select 1,1.5];}, [], 5, true, true, "","alive _target"];
port_teleport_T addAction ["<t size='1.3' shadow='2' color='#5858FA'>Molos Airforce Base</t>", {player setposasl [getmarkerpos "Airforce_Base" select 0,getmarkerpos "Airforce_Base" select 1,1.5];}, [], 5, true, true, "","alive _target"];
port_teleport_L addAction ["<t size='1.3' shadow='2' color='#5858FA'>Molos Airforce Base</t>", {player setposasl [getmarkerpos "Airforce_Base" select 0,getmarkerpos "Airforce_Base" select 1,1.5];}, [], 5, true, true, "","alive _target"];

//Port to Sammelbereich
port_teleport_S addAction ["<t size='1.3' shadow='2' >Sammelbereich</t>", {player setposasl [getmarkerpos "sammelbereich" select 0,getmarkerpos "sammelbereich" select 1,1.5];}, [], 5, true, true, "","alive _target"];
port_teleport_M addAction ["<t size='1.3' shadow='2' >Sammelbereich</t>", {player setposasl [getmarkerpos "sammelbereich" select 0,getmarkerpos "sammelbereich" select 1,1.5];}, [], 5, true, true, "","alive _target"];
port_teleport_F addAction ["<t size='1.3' shadow='2' >Sammelbereich</t>", {player setposasl [getmarkerpos "sammelbereich" select 0,getmarkerpos "sammelbereich" select 1,1.5];}, [], 5, true, true, "","alive _target"];
port_teleport_A addAction ["<t size='1.3' shadow='2' >Sammelbereich</t>", {player setposasl [getmarkerpos "sammelbereich" select 0,getmarkerpos "sammelbereich" select 1,1.5];}, [], 5, true, true, "","alive _target"];
port_teleport_T addAction ["<t size='1.3' shadow='2' >Sammelbereich</t>", {player setposasl [getmarkerpos "sammelbereich" select 0,getmarkerpos "sammelbereich" select 1,1.5];}, [], 5, true, true, "","alive _target"];
port_teleport_L addAction ["<t size='1.3' shadow='2' >Sammelbereich</t>", {player setposasl [getmarkerpos "sammelbereich" select 0,getmarkerpos "sammelbereich" select 1,1.5];}, [], 5, true, true, "","alive _target"];

//Port to Luftkampfabteilung
port_teleport_S addAction ["<t size='1.3' shadow='2' >Luftkampfabteilung</t>", {player setposasl [getmarkerpos "Luftkampfabteilung" select 0,getmarkerpos "Luftkampfabteilung" select 1,1.5];}, [], 5, true, true, "","alive _target"];
port_teleport_M addAction ["<t size='1.3' shadow='2' >Luftkampfabteilung</t>", {player setposasl [getmarkerpos "Luftkampfabteilung" select 0,getmarkerpos "Luftkampfabteilung" select 1,1.5];}, [], 5, true, true, "","alive _target"];
port_teleport_P addAction ["<t size='1.3' shadow='2' >Luftkampfabteilung</t>", {player setposasl [getmarkerpos "Luftkampfabteilung" select 0,getmarkerpos "Luftkampfabteilung" select 1,1.5];}, [], 5, true, true, "","alive _target"];
port_teleport_A addAction ["<t size='1.3' shadow='2' >Luftkampfabteilung</t>", {player setposasl [getmarkerpos "Luftkampfabteilung" select 0,getmarkerpos "Luftkampfabteilung" select 1,1.5];}, [], 5, true, true, "","alive _target"];
port_teleport_T addAction ["<t size='1.3' shadow='2' >Luftkampfabteilung</t>", {player setposasl [getmarkerpos "Luftkampfabteilung" select 0,getmarkerpos "Luftkampfabteilung" select 1,1.5];}, [], 5, true, true, "","alive _target"];
port_teleport_L addAction ["<t size='1.3' shadow='2' >Luftkampfabteilung</t>", {player setposasl [getmarkerpos "Luftkampfabteilung" select 0,getmarkerpos "Luftkampfabteilung" select 1,1.5];}, [], 5, true, true, "","alive _target"];

//Port to Logistik
port_teleport_A addAction ["<t size='1.3' shadow='2' >Logistik</t>", {player setposasl [getmarkerpos "Logistik" select 0,getmarkerpos "Logistik" select 1,1.5];}, [], 5, true, true, "","alive _target"];
port_teleport_S addAction ["<t size='1.3' shadow='2' >Logistik</t>", {player setposasl [getmarkerpos "Logistik" select 0,getmarkerpos "Logistik" select 1,1.5];}, [], 5, true, true, "","alive _target"];
port_teleport_M addAction ["<t size='1.3' shadow='2' >Logistik</t>", {player setposasl [getmarkerpos "Logistik" select 0,getmarkerpos "Logistik" select 1,1.5];}, [], 5, true, true, "","alive _target"];
port_teleport_P addAction ["<t size='1.3' shadow='2' >Logistik</t>", {player setposasl [getmarkerpos "Logistik" select 0,getmarkerpos "Logistik" select 1,1.5];}, [], 5, true, true, "","alive _target"];
port_teleport_F addAction ["<t size='1.3' shadow='2' >Logistik</t>", {player setposasl [getmarkerpos "Logistik" select 0,getmarkerpos "Logistik" select 1,1.5];}, [], 5, true, true, "","alive _target"];
port_teleport_T addAction ["<t size='1.3' shadow='2' >Logistik</t>", {player setposasl [getmarkerpos "Logistik" select 0,getmarkerpos "Logistik" select 1,1.5];}, [], 5, true, true, "","alive _target"];

//Port to Schiessanlage
port_teleport_A addAction ["<t size='1.3' shadow='2' >Schiessanlage</t>", {player setposasl [getmarkerpos "Schiessanlage" select 0,getmarkerpos "Schiessanlage" select 1,1.5];}, [], 5, true, true, "","alive _target"];
port_teleport_S addAction ["<t size='1.3' shadow='2' >Schiessanlage</t>", {player setposasl [getmarkerpos "Schiessanlage" select 0,getmarkerpos "Schiessanlage" select 1,1.5];}, [], 5, true, true, "","alive _target"];
port_teleport_M addAction ["<t size='1.3' shadow='2' >Schiessanlage</t>", {player setposasl [getmarkerpos "Schiessanlage" select 0,getmarkerpos "Schiessanlage" select 1,1.5];}, [], 5, true, true, "","alive _target"];
port_teleport_P addAction ["<t size='1.3' shadow='2' >Schiessanlage</t>", {player setposasl [getmarkerpos "Schiessanlage" select 0,getmarkerpos "Schiessanlage" select 1,1.5];}, [], 5, true, true, "","alive _target"];
port_teleport_F addAction ["<t size='1.3' shadow='2' >Schiessanlage</t>", {player setposasl [getmarkerpos "Schiessanlage" select 0,getmarkerpos "Schiessanlage" select 1,1.5];}, [], 5, true, true, "","alive _target"];
port_teleport_L addAction ["<t size='1.3' shadow='2' >Schiessanlage</t>", {player setposasl [getmarkerpos "Schiessanlage" select 0,getmarkerpos "Schiessanlage" select 1,1.5];}, [], 5, true, true, "","alive _target"];

//HALO Sprung
port_halosprung addaction ["<t size='1.3' shadow='2' >HALO Sprung</t>","scripts\HALO_Sprung\HALO_Sprung.sqf"];





















