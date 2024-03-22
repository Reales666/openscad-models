module ultrasonic_distance_sensor() {
    difference() {
        union() {
            color("DodgerBlue")
                cube(size=[45, 20, 1.5]);

            color("silver") {
                translate([8+1.8, 10, 1.4])
                    cylinder(r=8, h=12);
            }
            color("silver") {
                translate([8+1.8+26, 10, 1.4])
                    cylinder(r=8, h=12);
            }
        }

        translate([2, 2, -0.2])
            cylinder(r=1, h=2);
        
        translate([2 + 41, 2 + 16.5, -0.2])
            cylinder(r=1, h=2);
    }
}