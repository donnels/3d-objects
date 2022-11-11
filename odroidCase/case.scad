caseRim=3;

kbD=82;
kbW=255;
kbH=7;

odH=10;
odW=156;
odD=73;
odJSR=7.5;
odJSoffX=15;
odJSoffY=12;
odJSH=6;
odBRW=118-38;
odBRD=6;
odBRoffX=38;
odBRoffY=6;
odCRW=19;
odCRoffX=7;
odCRoffY=35;
odTBW=152-120;
odTBD=34;
odTBoffX=120;
odTBoffY=60-34;
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
odDPD=68-14;
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
    translate([0,0,-.001]) union() {
        #translate([odW-odJSR*2-odJSoffX,odJSoffY,0]+[odJSR,odJSR,0]) cylinder(h=odJSH,r=odJSR);
        translate([odW-odBRW-odBRoffX,odBRoffY,0]) cube([odBRW,odBRD,odJSH]);  
        translate([odW-odCRW-odCRoffX,odCRoffY,0]) cube([odCRW,odCRW,odJSH]);  
        translate([odW-odTBW-odTBoffX,odTBoffY,0]) cube([odTBW,odTBW,odJSH]);  
        #translate([odW-odTLW-odTLoffX,odTLoffY,odJSH-.1]) cube([odTLW,odTLD,odTH]); 
        #translate([odW-odTRW-odTRoffX,odTRoffY,odJSH-.1]) cube([odTRW,odTRD,odTH]); 
        translate([odW-odDPW-odDPoffX,odDPoffY,0]) cube([odDPW,odDPD,odJSH]); 
    }
}

