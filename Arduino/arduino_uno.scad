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
		color("SteelBlue")
			difference() {
				cube([board_wide, board_lenght, board_thick]); // Base board
				
				// Small hole top right
				translate([65.8, 37.5, -0.5])
					difference() { 
						cube([5, 20.5, 2.5]);

						translate([0, -4, -0.5])
							rotate([0, 0, 45])
								cube(6);
					}

				// Arduino label
				translate([board_wide / 3, board_lenght / 1.5, board_thick])
					text("ARDUINO UNO", board_lenght / 15, "Console");
			}

		// Remove the screw holes
		translate([15, 3.5, -2])
			screw_hole();
		translate([15, 49.3, -2])
			screw_hole();
		translate([66, 35, -2])
			screw_hole();
		translate([66, 7, -2])
			screw_hole();
		

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