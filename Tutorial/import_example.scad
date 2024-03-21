include <../Arduino/arduino_uno.scad>
use <../Robot_parts/conical_screw.scad>
include <../Robot_parts/ultrasonic_distance_sensor.scad>

$fa = 1;
$fs = 0.4;

// arduino_uno_board();

// conical_screw(screw_lenght = 15);

rotate([90, 0, 20])
    translate([20, 0, 0])
        ultrasonic_distance_sensor();


rotate([90, 0, -20])
    translate([-60, 0, 0])
        ultrasonic_distance_sensor();