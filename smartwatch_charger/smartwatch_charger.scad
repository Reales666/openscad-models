clock_diameter = 39.3;
clock_radius = clock_diameter/2;
clock_thickness = 10.5;

module clock() {

    // Clock body
    translate([clock_radius, clock_radius, 0]) {
        cylinder(r=clock_radius, h=clock_thickness);
    }

    // Clock rulette
    translate([clock_diameter - 0.5, clock_radius - 2.5, 0]) {
        cube(size=[4, 5, clock_thickness]);
    }

    // Clock supports
    translate([clock_radius - 21.5/2, -15, 0])
        cube([21.5, 65, clock_thickness]);

    // Clock charger hole
    translate([clock_radius - 17.5 / 2, 2, -8 + 1.3])
        cube([40, 6.3, 8]);
    
}