include <microservo_SG90.scad>

difference() {
    cube([70, 70, 10]);
    translate([35, 35, 25.3]) {
        rotate([180, 0, 0])
            microservo_SG90();
    }
}