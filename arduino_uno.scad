board_lenght = 53;
board_wide = 69.5;
board_thick = 1.7;

screw_hole_r = 1.5;

module screw_hole() {
	cylinder(h = 3, r = screw_hole_r);
}

module arduino_uno_board() {
	union() {

		// Circuit board
		difference() {
			cube([board_wide, board_lenght, board_thick]); // Base board

			// Remove the screw holes
			translate([15, 3.5, -0.5])
				screw_hole();
			translate([15, 49.3, -0.5])
				screw_hole();
			translate([66, 35, -0.5])
				screw_hole();
			translate([66, 7, -0.5])
				screw_hole();
			
			// Small hole top right
			translate([65.8, 37.5, -0.5])
				difference() { 
					cube([5, 20.5, 2.5]);

					translate([0, -4, -0.5])
						rotate([0, 0, 45])
							cube(6);
				}
		}

		// USB A port
		translate([-6, 32.2, board_thick-0.1])
			cube([16.4, 12, 10.7]);
		
		// Power supply
		translate([-2, 4, 0])
			cube([13.5, 9, 12.5]);
	}
}