module tornillo_m2() {
    cylinder(r=1, h=5);
}

module array_led_sensor() {
    union() {
        color("FireBrick")
            cube([75, 13, 1.6]);

        translate([1 + 1.4, 1 + 1.8, -1.5])
            tornillo_m2();

        translate([1 + 52.4, 1 + 1.8, -1.5])
            tornillo_m2();

        translate([1 + 57.4, 1 + 1.8, -1.5])
            tornillo_m2();

        translate([1 + 71.4, 1 + 1.8, -1.5])
            tornillo_m2();

        translate([47.5 - 28.3, 0, -1 * (11 - 1.7)])
            color("DarkSlateGray")
                cube([28.3, 2.5, 11 - 1.6]);
    }
}