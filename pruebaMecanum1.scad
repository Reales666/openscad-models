// Diametro del eje
eje = 10;
longitudEje = 20;

// Parámetros de la llanta
radioRueda = 30;
grosorRueda = 1;
huecoRuedas = 10;

// Ejes de neumaticos
lEje = huecoRuedas * 1.3;
dEje = 1;


module eje()
{
	rotate([0, 0, 90])
		translate([0,0,-1])
			cylinder(grosorRueda * 2 + 1, d = eje, $fn = 1000);
}

module eje_dos()
{
	rotate([0, 0, 90])
		translate([0,0,-1])
			cylinder(grosorRueda * 2 + 1, d = eje, $fn = 1000);
}

module llanta()
{

	difference()
	{    
		cylinder(grosorRueda, r = radioRueda, $fn = 1000);
		eje();
	
		translate([15, 0, 0])
			eje_dos();
		translate([0, 15, 0])
			eje_dos();			
		translate([0, 15, 0])
			eje_dos();
		translate([-15, 0, 0])
			eje_dos();			
		translate([0, -15, 0])
			eje_dos();
	}	
}

difference() 
{
	union()
	{
		llanta();

		translate([0, 0, huecoRuedas])
			llanta();
	}

	#cylinder(lEje,  d = dEje);
}