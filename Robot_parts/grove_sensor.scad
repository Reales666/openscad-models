module grove_sensor_plate(thickness = 0, screws_lenght = 0) {
    difference() {
        union() {
            cube([20, 40, 1.5 + thickness]);

            translate([10, 40, 0])
                cylinder(r=2.05, h=1.5 + thickness);

            translate([0, 10, 0])
                cylinder(r=2.05, h=1.5 + thickness);

            translate([20, 10, 0])
                cylinder(r=2.05, h=1.5 + thickness);

             translate([10, 40, -0.2 - screws_lenght])
                cylinder(r=1.30, h=3 + thickness + screws_lenght);

            translate([0, 10, -0.2 - screws_lenght])
                cylinder(r=1.30, h=3 + thickness + screws_lenght);

            translate([20, 10, -0.2 - screws_lenght])
                cylinder(r=1.30, h=3 + thickness + screws_lenght);
        }
        
        translate([10, 0, -0.1])
            cylinder(r=2.55, h=3 + thickness);
        
        translate([0, 30, -0.1])
            cylinder(r=2.55, h=3 + thickness);

        translate([20, 30, -0.1])
            cylinder(r=2.55, h=3 + thickness);

       
    }
}