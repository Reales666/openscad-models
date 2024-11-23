module grove_sensor_plate(thickness = 0, screws_lenght = 0) {
    difference() {
        union() {
            cube([21, 41, 1.5 + thickness]);

            translate([10.5, 40, 0])
                cylinder(r=2.05, h=1.5 + thickness);

            translate([0.5, 10, 0])
                cylinder(r=2.05, h=1.5 + thickness);

            translate([20.5, 10, 0])
                cylinder(r=2.05, h=1.5 + thickness);

            translate([10.5, 40, -0.2 - screws_lenght])
                cylinder(r=1.30, h=3 + thickness + screws_lenght);

            translate([0.5, 10, -0.2 - screws_lenght])
                cylinder(r=1.30, h=3 + thickness + screws_lenght);

            translate([20.5, 10, -0.2 - screws_lenght])
                cylinder(r=1.30, h=3 + thickness + screws_lenght);
        }
        
        translate([10.5, 0, -0.1])
            cylinder(r=2.45, h=3 + thickness);
        
        translate([0, 30, -0.1])
            cylinder(r=2.45, h=3 + thickness);

        translate([21, 30, -0.1])
            cylinder(r=2.45, h=3 + thickness);

       
    }
}