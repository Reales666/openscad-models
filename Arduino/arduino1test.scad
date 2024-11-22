include <arduino_uno.scad>

$fa = 1;
$fs = 0.4;

difference() {
    cube([75, 60, 5]);

    translate([2, 2, 3])
        arduino_uno_board(10, 30);
}

