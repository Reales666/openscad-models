module distanceSensorHC_SR04(thickness=0) {
    union() {
        color("SteelBlue") {
            cube([45.3, 20.4, 4]);

            translate([0, 0, -thickness + 0.1]) 
                cube([45.3, 20.4, thickness]);
        }
            
        // Left sensor
        translate([2 + 8 - 0.2, 20.4/2, 3.9]) {
            color("Silver") {
                cylinder(r=8.1, h=12);
            }
        }

        // Right sensor
        translate([45.3 - 2 - 8 + 0.2, 20.4/2, 3.9]) {
            color("Silver") {
                cylinder(r=8.1, h=12);
            }
        }

        color("LightGrey") {
            translate([45.3/2 - 7 + 1.5, 20.4 - 3.5 - 0.6, 3.9]) {
                union() { // top clock
                    translate([1.5, 0, 0])
                        cube([7.1, 4, 3.5]);

                    translate([3.5/2, 3.5/2 + 0.25, 0])
                        cylinder(r=2, h=3.5);

                    translate([3.5/2 + 7, 3.5/2 + 0.25, 0])
                        cylinder(r=2, h=3.5);
                }
            }
        }
        color("DimGray")
            translate([45.3/2 - 7 + 1.5, -0.1, -4.3+2.5])
                cube(size=[10.4, 2.6, 7.3]);
    }
}