/* One Blood High: 44mm X
Activaions: 38mm X
Warnings: 40mm X
Three bloods: 35mm X
Fatigued: 27mm X
Objectives 28mm X
Flags: 20mm X
shakens 27mm X

*/

$fa = 1;
$fs = 0.4;

tokens_radius = 18/2;
mirror()
union() {

    translate([76, 40 - 7.5, 12.99])
        cube([2, 15, 3]);

    difference() {
        cube([78, 80, 13]);

        translate([0, 40 - 7.5,10])
            cube([2, 15, 3]);

        // One Blood
        rotate([0, 90, 0])
            translate([-tokens_radius - 4, 10, 5])
                cylinder(r=tokens_radius, h=44);

        // Warnings
        rotate([0, 90, 0])
            translate([-tokens_radius - 4, 30, 5])
                cylinder(r=tokens_radius, h=40); 

        // Activations
        rotate([0, 90, 0])
            translate([-tokens_radius - 4, 50, 5])
                cylinder(r=tokens_radius, h=38); 

        // Three Bloods
        rotate([0, 90, 0])
            translate([-tokens_radius - 4, 70, 5])
                cylinder(r=tokens_radius, h=35); 

        // Flags
        rotate([0, 90, 0])
            translate([-tokens_radius - 4, 10, 53])
                cylinder(r=tokens_radius, h=20);

        // Shakens
        rotate([0, 90, 0])
            translate([-tokens_radius - 4, 30, 47])
                cylinder(r=tokens_radius, h=27);

        // Fatigued
        rotate([0, 90, 0])
            translate([-tokens_radius - 4, 50, 45])
                cylinder(r=tokens_radius, h=27);

        // Objectives
        rotate([0, 90, 0])
            translate([-tokens_radius - 4, 70, 43])
                cylinder(r=tokens_radius, h=28);

        // Magnets
        translate([2.5, 2.5, 12.01])
            cylinder(r=3.3/2, h=1);

        translate([2.5, 80 - 2.5, 12.01])
            cylinder(r=3.3/2, h=1);

        translate([78 - 2.5, 2.5, 12.01])
            cylinder(r=3.3/2, h=1);

        translate([78 - 2.5, 80 - 2.5, 12.01])
            cylinder(r=3.3/2, h=1);
    }
}
