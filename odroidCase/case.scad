caseRim=3;

kbD=82;
kbW=255;
kbH=7;

odH=10;
odW=156;
odD=73;

odJSW=28-13;
odJSR=odJSW/2;
odJSoffX=13;
odJSoffY=11;


odJSH=6;
odBRW=118-38;
odBRD=12-5;
odBRoffX=38;
odBRoffY=5;
odCRW=28-7;
odCRD=58-37;
odCRoffX=7;
odCRoffY=37;
odTBW=152-120;
odTBD=61-27;
odTBoffX=120;
odTBoffY=27;
odTLoffX=23;
odTLoffY=odD;
odTLW=33-23;
odTLD=2;
odTH=20;
odTRoffX=123;
odTRoffY=odD;
odTRW=odTLW;
odTRD=odTLD;
odDPW=odBRW;
odDPD=67-14;
odDPoffY=14;
odDPoffX=odBRoffX;

*translate([0,0,-15]) difference(){
    cube([kbW,kbD,kbH]+[caseRim,caseRim,caseRim]);
    translate([caseRim/2,caseRim/2,-.1])
        cube([kbW,kbD,kbH+.1]);
}

*translate([0,0,0]) difference(){
    cube([odW,odD,odH]+[caseRim,caseRim,caseRim]);
    translate([caseRim/2,caseRim/2,caseRim+.1])
        cube([odW,odD,odH+.1]);
}

difference(){
    translate([0,0,0]) difference(){
        cube([odW,odD,odH]+[caseRim,caseRim,odJSH-.05]);
        translate([caseRim/2,caseRim/2,odJSH-.1])
            cube([odW,odD,odH+.1]);
    }
    translate([.5,.5,-.001]) union() {
        translate([odW-odJSR*2-odJSoffX,odJSoffY,0]+[odJSR,odJSR,0]) cylinder(h=odJSH,r=odJSR);
        translate([odW-odBRW-odBRoffX,odBRoffY,0]) cube([odBRW,odBRD,odJSH]);  
        translate([odW-odCRW-odCRoffX,odCRoffY,0]) cube([odCRW,odCRW,odJSH]);  
        #translate([odW-odTBW-odTBoffX,odTBoffY,0]) cube([odTBW,odTBW,odJSH]);  
        translate([odW-odTLW-odTLoffX,odTLoffY,odJSH-.1]) cube([odTLW,odTLD,odTH]); 
        translate([odW-odTRW-odTRoffX,odTRoffY,odJSH-.1]) cube([odTRW,odTRD,odTH]); 
        translate([odW-odDPW-odDPoffX,odDPoffY,0]) cube([odDPW,odDPD,odJSH]); 
    }
}

