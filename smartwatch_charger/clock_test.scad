include <smartwatch_charger.scad>

$fa = 1;
$fs = 0.4;

difference() {
    // Charger base
    cube([50, 50, 15]);

    translate([5, 5, 6])
        clock();

    // Magnets
    translate([5, 5, 15 - 0.78])
        cylinder(r=1.5, h=0.8);

    translate([45, 45, 15 - 0.78])
        cylinder(r=1.5, h=0.8);
}