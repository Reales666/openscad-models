// Dice measures: 12.3mm x 12.3mm x 12.3mm
$fa = 1;
$fs = 0.4;

hole_with = 12.31*3;
hole_lenght = 12.31*3;
hole_hight = 12.31*2;

magnet_radius = 1.5;
magnet_lenght = 0.9;

difference() {
    union() {
        cube([hole_with + 10, hole_lenght + 10, 1.5]);

        translate([4, 4, 1.5])
            cube([hole_with + 2, hole_lenght + 2, 2.01]);
    }

    // Maget Holes
    translate([magnet_radius + 0.5, magnet_radius + 0.5, 1.5-0.89])
        cylinder(r=magnet_radius, h=magnet_lenght);

    translate([hole_with + 10 - magnet_radius - 0.5, hole_with + 10 - magnet_radius - 0.5, 1.5 - 0.89])
        cylinder(r=magnet_radius, h=magnet_lenght);
}