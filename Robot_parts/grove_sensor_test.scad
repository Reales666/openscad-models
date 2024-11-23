include <grove_sensor.scad>

$fa = 1;
$fs = 0.4;

difference() {
    cube([30, 50, 7]);

    translate([4, 2.5, 2.6])
        grove_sensor_plate(10, 3);
}
