
/**
	Creates a conical screw with the desired lenght and diameter.
	Default diameter is for default M3 screws, widely used on any arduino project.
**/
module conical_screw(screw_lenght = 20, screw_diameter = 3) {
	
	head_diameter = screw_diameter + 2.75;
	difference() {
		
		union() {
			cylinder(h = screw_lenght, r = screw_diameter / 2); // Screw body

			cylinder(2, head_diameter / 2, screw_diameter / 2); // Screw head
		}
		
		cube([1, head_diameter*1.1, 1], true);
	}
}