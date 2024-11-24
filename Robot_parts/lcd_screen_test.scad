include <lcd_screen.scad>

$fa = 1;
$fs = 0.4;

difference() {
    cube([105, 65, 15]);

    translate([101, 2, 15.1]) 
        rotate([0, 180, 0])
            lcd_screen(screen_thickness = 5, screws_length = 10);
    
}