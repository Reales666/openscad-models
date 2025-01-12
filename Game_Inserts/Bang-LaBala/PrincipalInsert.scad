/*
Maze measurements

Card size: 56x87mm

    - Base game: 
        - Roles: 2mm
        - Rules: 2.35mm
        - Characters: 5mm
        - Cards: 24mm
    - Dogde City: 
        - Roles: 2.4mm
        - Characters: 4.4mm
        - Cards: 11.7mm
    - Por un puñado de cartas: 
        - Cards: 4.4mm
    - Solo ante el peligro: 
        - Cards: 3.9mm
    - El valle de las sombras: 
        - Cards: 8mm
    - Extra cards:
        - Cards: 1mm

Ball measurements:
    Width: 100mm
    Height: 210mm
*/

$fa = 1;
$fs = 0.4;

card_high = 88;
card_width = 56;

cylynder_radius = 59.5;

difference() {
    // Base insert
    union()  {
        difference() {
            // Main cylynder
            translate([cylynder_radius, cylynder_radius, 0])
                cylinder(r=cylynder_radius, h=15);
            // Half cylynder removal
            translate([-0.5, cylynder_radius, -0.5])
                cube([cylynder_radius * 2.01, cylynder_radius + 1, 16]);
        }

        // Base of the cube
        translate([cylynder_radius - 25 / 2, 0, 0])
            cube([25, 15, 15]);
    }

    // Test maze
    translate([(cylynder_radius * 2 - card_high) / 2, 25, 2.5])
        cube(size=[card_high, card_width, 10]);
}