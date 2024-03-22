module touch_sensor() {
    union() {
        color("Gray") {
            difference() {
                cube(size=[20, 6.4, 9]);

                rotate([90, 0, 0])
                    translate([4, 1.2, -7])
                        cylinder(r=1, h=8);

                rotate([90, 0, 0])
                    translate([13.5, 1.2, -7])
                        cylinder(r=1, h=8);
            }
        }

        color("Gainsboro") {
            translate([2, 2.4, -4]) 
                cube(size=[0.5, 1.3, 4.1]);

            translate([10, 2.4, -4]) 
                cube(size=[0.5, 1.3, 4.1]);
            
            translate([17, 2.4, -4]) 
                cube(size=[0.5, 1.3, 4.1]);

        
            translate([0,  1.5, 9])
                rotate([0, -15, 0])
                    cube([21.4, 3.4, 0.3]);
        }
    }
}