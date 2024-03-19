$fa = 1;
$fs = 0.4;

wheel_thickness = 2;
wheel_diameter = 20;
tyre_thickness = 2;

number_of_radius = 3;

difference() {
	cylinder(h = wheel_thickness, r = wheel_diameter / 2, center = true);
	cylinder(h = 3, r = wheel_diameter / 2 - tyre_thickness, center = true);
}

step = 180/number_of_radius;
for (i=[0:step:179]) {
    angle = i;
    rotate([90,0,angle])
       cylinder(r=wheel_thickness / 2, h=wheel_diameter * 0.95, center=true);
}