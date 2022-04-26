// The Rephone modules as modules and aligned over mounting holes

color_def = [0,0.5,0.7];

//-----------------------------------
// The modules
module GSM_BLE(color=color_def) {
	color(color)
	translate([0.65,-0.61,0])
		import("Xadow_GSM_BLE_v1_collapsed.stl");
}
module GSM_Breakout(color=color_def) {
	color(color)
	translate([0,0,0.4])
		import("Xadow___GSM_Breakout_v1_collapsed.stl");
}
module Basic_Sensors(color=color_def) {
	color(color)
	translate([-11.4,-22.8,0.4])
		import("Xadow_Basic_Sensors_v1_collapsed.stl");
}
module Duino(color=color_def) {
	color(color)
	translate([43.85,9.55,0.4])
	rotate([0,0,180])
		import("Xadow_Duino_v1_collapsed.stl");
}
module GPS(color=color_def) {
	color(color)
	translate([-12.05,-10.77,0.4])
		import("Xadow_GPS_v2_collapsed.stl");
}
module LED_5x7(color=color_def) {
	color(color)
	translate([-3.28,-15.98,0.4])
		import("Xadow_LED_5x7_v1_collapsed.stl");
}
module NFC(color=color_def) {
	color(color)
	translate([-12.05,-10.77,0.4])
		import("Xadow_NFC_v2_collapsed.stl");
}
module 1_54_Touhscreen(color=color_def) {
	color(color)
	translate([-50,0,0])
		import("Xadow_1_54_Touhscreen_collapsed.stl");
}
module Audio(color=color_def) {
	color(color)
	translate([-91.42,-45.06,0.4])
		import("Xadow_Audio_v1.stl");
}


//-----------------------------
// Line them up :)

GSM_BLE([0.7,0.7,0.2]);
GSM_Breakout();
Basic_Sensors();
Duino();
GPS();
LED_5x7();
NFC();
Audio();
1_54_Touhscreen();