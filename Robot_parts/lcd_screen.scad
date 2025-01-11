
module lcd_screen(screen_thickness = 0, screws_length = 0) {
    union() {

        // Base board
        color("green")
            cube([98.9, 60.5, 1.5]);

        // LCD Screen
        color("gray")
            translate([1, 50-39.5, 1.49])
                cube([97.5, 39.5, 9.01]);
        // Screen thickness addition
        color("gray")
            translate([1, 50-39.5, 1.49 + 9])
                cube([97.5, 39.5, screen_thickness]);

        // Bottom left hole
        translate([1 + 1.5, 50-39.5 - 5.8 - 1.5, -0.01])
            cylinder(r = 1.5, 1.51 + screws_length);

        // Upper left hole
        translate([1 + 1.5, 50-39.5 - 5.8 - 1.5 + 51.5+3, -0.01])
            cylinder(r = 1.5, 1.51 + screws_length);

        // Bottom right hole
        translate([1 + 1.5 + 90.6 + 3, 50-39.5 - 5.8 - 1.5, -0.01])
            cylinder(r = 1.5, 1.51 + screws_length);

        // Upper right hole
        translate([1 + 1.5 + 90.6 + 3, 50-39.5 - 5.8 - 1.5 + 51.5 + 3, -0.01])
            cylinder(r = 1.5, 1.51 + screws_length);

        // Pins hole
        translate([9, 50-39.5 - 5.8 - 1.5 + 51.5 + 1.5, 0]) {
            cube(size=[40, 4, 8]);
        }

        // Controller board
        translate([-10, 60.5 - 23, -7.95]) 
        cube([67, 23, 8]);
    }
}