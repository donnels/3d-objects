caseRim=1.5;
$fn=100;

odH=10;
odW=156;
odD=73;

odJSH=6;

module containerOpenTop(x,y,z,rimThick,bottomThick) {
	rimR=rimThick/2;
	//all 8 corners defined first
	//corners should be AROUND the contained cube defined by x y z
	corner000=[0,0,0];
	corner0=[-rimR,-rimR,-rimR];
	corner0x=[x+rimR,-rimR,-rimR];
	corner0y=[-rimR,y+rimR,-rimR];
	corner0xy=[x+rimR,y+rimR,-rimR];
	corner0z=[-rimR,-rimR,z];
	corner0xz=[x+rimR,-rimR,z];
	corner0yz=[-rimR,y+rimR,z];
	corner0xyz=[x+rimR,y+rimR,z];	//draw the debug contents
	*translate([0,0,0]) cube([x,y,z]);
	module corner0() {
		translate(corner0) sphere(r=rimR);
	}
	module corner0x() {
		translate(corner0x) sphere(r=rimR);
	}
	module corner0y() {
		translate(corner0y) sphere(r=rimR);
	}
	module corner0xy() {
		translate(corner0xy) sphere(r=rimR);
	}
	module corner0z() {
		translate(corner0z) sphere(r=rimR);
	}
	module corner0xz() {
		translate(corner0xz) sphere(r=rimR);
	}
	module corner0yz() {
		translate(corner0yz) sphere(r=rimR);
	}
	module corner0xyz() {
		translate(corner0xyz) sphere(r=rimR);
	}
	union(){
		//floor
		hull(){	
			corner0();
			corner0x();
			corner0y();
			corner0xy();
		}
		//left
		hull(){	
			corner0();
			corner0z();
			corner0y();
			corner0yz();
		}
		//right
		hull(){	
			corner0x();
			corner0xy();
			corner0xyz();
			corner0xz();
		}
		//top
		hull(){	
			corner0y();
			corner0yz();
			corner0xyz();
			corner0xy();
		}
		//bottom
		hull(){	
			corner0();
			corner0z();
			corner0x();
			corner0xz();
		}
	}	
}


containerOpenTop(odW,odD,odH,caseRim,odJSH);