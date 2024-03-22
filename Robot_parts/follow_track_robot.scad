include <array_led_QTR-8RC_pololu.scad>
include <../Arduino/arduino_uno.scad>

$fa = 1;
$fs = 0.4;

difference() {
    cube(size=[120, 100, 5]);

    translate([100, 5, 3.5])
        rotate([0, 180, -90])
            scale([1.2, 1.2, 3])
                array_led_sensor();

    translate([-0.1, 25, 2.1])
        scale([1.2, 1.2, 1.8])
            arduino_uno_board();
}
