$fn=100;
mainLength=50;
mainD=20;
mainH=10;
mainHoleD=15;
ringH=2;

#difference () {
	hull(){
		cylinder(d=mainD,h=mainH);
		translate([mainLength,0,0]) cylinder(d=mainD,h=mainH);
	}
	translate([0,0,-.1])cylinder(h=mainH+.2,d=mainHoleD);
	#translate([0,0,((mainH-ringH-.5)/2)]) cylinder(h=2.5,d=mainHoleD+3.2);
}

union(){
	cylinder(h=20,d=mainHoleD-1);
	translate([0,0,((mainH-ringH)/2)]) cylinder(h=2,d=mainHoleD+3);
}