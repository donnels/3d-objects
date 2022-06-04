$fn=100;
tab_height=.3;
tab2bottom=2.4;

plus=.1;
plusH=.05;

hole_d=2;
hole_spacing=8;
shim_height=tab2bottom-tab_height;
shim_depth=7;
shim_width=18;

difference(){
    cube([shim_width,shim_depth,shim_height]);
    #translate([shim_width/2-hole_spacing/2,(shim_depth/2),-plusH])
        union() {
            cylinder(h=shim_height+plus,d=hole_d);
            translate([hole_spacing,0,0]) cylinder(h=shim_height+plus,d=hole_d);
        }
}