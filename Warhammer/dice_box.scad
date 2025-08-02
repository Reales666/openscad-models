// Dice measures: 12.3mm x 12.3mm x 12.3mm
$fa = 1;
$fs = 0.4;

hole_with = 12.31*3;
hole_lenght = 12.31*3;
hole_hight = 12.31*2;

magnet_radius = 1.55;
magnet_lenght = 1;

// Dice box
difference() {
    cube([hole_with + 10, hole_lenght + 10, hole_hight + 7]);

    // Dice hole
    translate([5, 5, 5.01])
        cube([hole_with, hole_lenght, hole_hight]);

    // Maget Holes
    translate([magnet_radius + 0.5, magnet_radius + 0.5, hole_hight + 5 - magnet_lenght + 0.01 + 2])
        cylinder(r=magnet_radius, h=magnet_lenght);

    translate([hole_with + 10 - magnet_radius - 0.5, hole_with + 10 - magnet_radius - 0.5, hole_hight + 5 - magnet_lenght + 0.01 + 2])
        cylinder(r=magnet_radius, h=magnet_lenght);

    // Cover hole
    translate([4, 4, hole_hight + 5])
        cube([hole_with + 2, hole_lenght + 2, 2.01]);
    
}