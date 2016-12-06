/*
	Author: Raychan
*/

//Halo Jump Menü
//Auswahl der Höhe
//Globale variable "HJ_hoehe" für die Höhe


class HALO_Sprung_dialog
{
	idd = 5000;
	movingenable = 0;
	
	class controlsbackground
	{
		class HJ_background: RscText
		{
			idc = 1000;
			x = 0.381875 * safezoneW + safezoneX;
			y = 0.43 * safezoneH + safezoneY;
			w = 0.196875 * safezoneW;
			h = 0.3 * safezoneH;
			colorBackground[] = {1,1,1,0.5};
		};
		class HJ_text: RscText
		{
			idc = 1001;
			text = "Höhe auswählen:"; 
			x = 0.42125 * safezoneW + safezoneX;
			y = 0.47 * safezoneH + safezoneY;
			w = 0.13125 * safezoneW;
			h = 0.028 * safezoneH;
			sizeex = "0.03 / (getresolution select 5)";
		};
		class HJ_text2: RscText
		{
			idc = 1002;
			text = "Höhe für Fallschirm:"; 
			x = 0.42125 * safezoneW + safezoneX;
			y = 0.57 * safezoneH + safezoneY;
			w = 0.13125 * safezoneW;
			h = 0.028 * safezoneH;
			sizeex = "0.03 / (getresolution select 5)";
		};
	};
	class controls
	{
		class HJ_hoehe_Button_500: RscButton
		{
			idc = 1600;
			text = "500m";
			colorBackground[] = {1,1,1,1};
			colorText[] = {0,0,1,1};
			x = 0.424687 * safezoneW + safezoneX;
			y = 0.51 * safezoneH + safezoneY;
			w = 0.04 * safezoneW;
			h = 0.04 * safezoneH;
			action = "HJ_hoehe = 500;";
		};
		class HJ_hoehe_Button_1500: RscButton
		{
			idc = 1601;
			text = "1500m";
			colorBackground[] = {1,1,1,1};
			colorText[] = {0,0,1,1};
			x = 0.493437 * safezoneW + safezoneX;
			y = 0.51 * safezoneH + safezoneY;
			w = 0.04 * safezoneW;
			h = 0.04 * safezoneH;
			action = "HJ_hoehe = 1500;";
		};
		class HJ_oeffnen_Button_50: RscButton
		{
			idc = 1602;
			text = "50m";
			colorBackground[] = {1,1,1,1};
			colorText[] = {0,0,1,1};
			x = 0.424687 * safezoneW + safezoneX;
			y = 0.61 * safezoneH + safezoneY;
			w = 0.04 * safezoneW;
			h = 0.04 * safezoneH;
			action = "HJ_oeffnen = 50;";
		};
		class HJ_oeffnen_Button_150: RscButton
		{
			idc = 1603;
			text = "150m";
			colorBackground[] = {1,1,1,1};
			colorText[] = {0,0,1,1};
			x = 0.493437 * safezoneW + safezoneX;
			y = 0.61 * safezoneH + safezoneY;
			w = 0.04 * safezoneW;
			h = 0.04 * safezoneH;
			action = "HJ_oeffnen = 150;";
		};
		class schliessen_button: RscButton
		{
			idc = 1604;
			text = "Schließen";
			colorBackground[] = {1,1,1,1};
			colorText[] = {0,0,1,1};
			x = 0.43 * safezoneW + safezoneX;
			y = 0.68 * safezoneH + safezoneY;
			w = 0.1 * safezoneW;
			h = 0.04 * safezoneH;
			action = "closedialog 0";
		};
	};
};
