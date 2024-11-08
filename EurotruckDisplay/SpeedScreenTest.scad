include <microservo_SG90.scad>

$fa = 1;
$fs = 0.4;

module counterProfile() {
    translate([-10, 0, 0]) {
        difference() {
            rotate_extrude(angle=360) {
            // wheel_radius = 50
            // tyre_diameter = 10
            translate([50 - 10/2, 5])
                circle(d=10);
            }

            union() {
                translate([10, -55, -2.5])
                    cube([40, 110, 25]);

                translate([0, 0, -1])
                    cylinder(r=42.5, h=25);
            }
        }
    }
}

difference() {
// base
    union() {
    
        difference() {
            cube([90, 130, 25]);
            
            translate([7.5, 7.5, -0.1])
                cube([75, 115, 20]);
        }

        translate([65, 65, 20])
            counterProfile();
    }

    translate([130 - 70, 65, 0])
        translate([-5 + (22.5 / 2), 6, 0])
        rotate([0, 0, 180])
            microservo_SG90();

    translate([90, 65, 1])
        rotate([0, 90, 0])
            cylinder(r=3, h=25, center=true);
}