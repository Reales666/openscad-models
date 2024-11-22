board_lenght = 53.5;
board_wide = 69;
board_thick = 1.7;

screw_hole_r = 1.6;

module screw_hole(screws_lenght) {
	cylinder(h = screws_lenght, r = screw_hole_r);
}

module arduino_uno_board(extra_thick = 0, screws_lenght = 3) {
	union() {

		// Circuit board
		color("SteelBlue")
			difference() {
				union() {
					cube([board_wide, board_lenght, board_thick]); // Base board
					translate([0, 0, board_thick - 0.1])
						cube([board_wide, board_lenght, extra_thick]); // Cube added for extra thickness
				}
				
				
				// Small hole top right
				translate([65.8, 37.5, -0.5])
					difference() { 
						cube([5, 20.5, 2.5]);

						translate([0, -4, -0.5])
							rotate([0, 0, 45])
								cube(6);
					}
			}

		// Remove the screw holes
		translate([13.9, 2.5, board_thick + extra_thick + 0.5])
			rotate([0, 180, 0])
				screw_hole(screws_lenght);
		translate([15, 51, board_thick + extra_thick + 0.5])
			rotate([0, 180, 0])
				screw_hole(screws_lenght);
		translate([66, 36, board_thick + extra_thick + 0.5])
			rotate([0, 180, 0])
				screw_hole(screws_lenght);
		translate([66, 8, board_thick + extra_thick + 0.5])
			rotate([0, 180, 0])
				screw_hole(screws_lenght);
		

		// USB A port
		color("Silver")
			translate([-6, 32.2, board_thick-0.1])
				cube([16.4, 12, 10.7]);
		
		// Power supply
		color("black")
			translate([-2, 3, 0.1])
				cube([13.5, 9, 12.5]);
	}
}