$fa = 1;
$fs = 0.4;

wheel_radius = 12;
tyre_diameter = 6;

rotate([90, 0, 0])
union() {
    rotate_extrude(angle=360) {
        translate([wheel_radius - tyre_diameter/2, 0])
            circle(d=tyre_diameter);
    }

    cylinder(r=10, h=3, center=true);
}
