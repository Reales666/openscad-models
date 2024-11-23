include <grove_sensor.scad>

$fa = 1;
$fs = 0.4;

difference() {
    cube([30, 50, 4]);

    #translate([2.5, 2.5, 2.6])
        grove_sensor_plate(2.5, 3);
}

