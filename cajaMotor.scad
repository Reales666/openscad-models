color("Red")
{
	difference()
	{
		cube([57,52.4,38]);	//Cubo Principal
	
		union()
		{		
			translate([-1,-1,5])		//Cubo Interior
				cube([51,51,34]);
	
			translate([24.5,24.5,2])	//Agujero Eje motor
				cylinder(10, d = 25, center = true, $fn = 100);

			#translate([9,9,2])	//Tornillo Motor
				cylinder(10, d = 4, center = true, $fn = 50);
	
			#translate([9,40,2])	//Tornillo Motor
				cylinder(10, d = 4, center = true, $fn = 50);
	
			#translate([40,9,2])	//Tornillo Motor
				cylinder(10, d = 4, center = true, $fn = 50);
	
			#translate([40,40,2])	//Tornillo Motor
				cylinder(10, d = 4, center = true, $fn = 50);
	
			//Agujeros tornillos fijación Caja
			translate([49.8, 9.3, 12])
				rotate([0,90,0])
					union()
					{
						//Cabeza del tornillo
						cylinder(2.5, d1 = 6.5, d2 = 4, $fn = 50);
			
						//Rosca del tornillo
						cylinder(20, d = 4, $fn = 50);
					}
		
			translate([49.8, 43.1, 12])
				rotate([0,90,0])
					union()
					{
						//Cabeza del tornillo
						cylinder(2.5, d1 = 6.5, d2 = 4, $fn = 50);
			
						//Rosca del tornillo
						cylinder(20, d = 4, $fn = 50);
					}

			translate([49.8, 9.3, 30])
				rotate([0,90,0])
					union()
					{
						//Cabeza del tornillo
						cylinder(2.5, d1 = 6.5, d2 =4, $fn = 50);
			
						//Rosca del tornillo
						cylinder(20, d = 4, $fn = 50);
					}

			translate([49.8, 43.1, 30])
				rotate([0,90,0])
					union()
					{
						//Cabeza del tornillo
						cylinder(2.5, d1 = 6.5, d2 = 4, $fn = 50);
			
						//Rosca del tornillo
						cylinder(20, d = 4, $fn = 50);
					}
		}
		
		translate([0, 45, 5]) //Escuadra de la caja
			rotate([0,-45,0])
			{
				cube([50, 20, 30]);
			}
	}
}