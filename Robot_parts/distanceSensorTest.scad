include <distanceSensorHC-SR04.scad>

$fa = 1;
$fs = 0.4;

difference() {
    cube([55, 27, 20]);

    rotate([180, 0, 0])
        translate([5, -23, -23])
            distanceSensorHC_SR04(3);
}
