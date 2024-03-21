include <arduino_uno.scad>

$fa = 1;
$fs = 0.4;

difference() {
    cube(size=[135, 90, 3]);

    translate([60, 5, 1.5])
        rotate([0, 0, 90])
        arduino_uno_board();

    translate([75, 2.5, 1.5])
        color("white")
        cube([55, 84, 10]);

    translate([62.5, 62.5, 2.6])
        rotate([0, 0, 270])
            text("Arduino");
}

