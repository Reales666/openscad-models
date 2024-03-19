module crearRueda(pDiametroRadios, pAnchuraRueda, pAnchuraEje, pRadioExteriorRueda, pRadioInteriorRueda, pRadioExteriorEje, pRadioInteriorEje)
{
	diametroRadios = pDiametroRadios;
	anchuraRueda = pAnchuraRueda;
	anchuraEje = pAnchuraEje;
	radioExteriorRueda = pRadioExteriorRueda;
	radioInteriorRueda = pRadioInteriorRueda;
	radioExteriorEje = pRadioExteriorEje;
	radioInteriorEje = pRadioInteriorEje;
	longitudRadios = radioInteriorRueda * 2 + (radioExteriorRueda - radioInteriorRueda); 

	seccionGoma = 4;
	radioInteriorGoma = radioExteriorRueda - (seccionGoma / 2);
	

	color("red")
	{
		difference()
		{
			union()
			{
				//Llanta
				difference()
				{
					cylinder(anchuraRueda, r = radioExteriorRueda, center = true);
					cylinder(anchuraRueda + 1, r = radioInteriorRueda, center = true);
				}
			
				//Eje
				difference()
				{
					cylinder(anchuraEje, r = radioExteriorEje, center = true);
					cylinder(anchuraEje + 1, r = radioInteriorEje, center = true);		
				}
			
				//Radio
				difference()
				{
					rotate([90,0,0])
					{	
						cylinder(longitudRadios, d = diametroRadios, center = true);
					}
					cylinder(diametroRadios + 1, r = radioInteriorEje, center = true);
				}
				
				//Radio
				difference()
				{
					rotate([0,90,30])
					{
						cylinder(longitudRadios, d = diametroRadios, center = true);
					}
					cylinder(diametroRadios + 1, r = radioInteriorEje, center = true);
				}
		
				//Radio
				difference()
				{
					rotate([0,90,-30])
					{
						cylinder(longitudRadios, d = diametroRadios, center = true);
					}
					cylinder(diametroRadios + 1, r = radioInteriorEje, center = true);
				}
			}					

			//Tornillo
			union()
			{
				//Huecos para tuercas
				translate([-9, -3.5, -3])
				{
					cube([3, 7, 10]);
				}

				translate([6, -3.5, -3])
				{
					cube([3, 7, 10]);
				}

				translate([-2.5, 0, 0])
				{
					rotate([0, -90, 0])
					{
						cylinder(radioExteriorRueda * 2 + 10, d = 4, center = true);
					}
				}

				//Canal Junta tórica
				rotate_extrude()
				{
					translate([radioInteriorGoma + 2, 0, 0])
					{
						circle(d = seccionGoma);	
					}
				}
			}
		}
	}	
}

/**
* Diametro de los radios de la rueda
* Anchura de la rueda
* Anchura del eje
* Radio exterior de la rueda
* Radio interior de la rueda
* Radio exterior del eje
* Radio interior del eje
*/
$fa = 1;
$fs = 3;

crearRueda(10, 10, 10, 60, 45, 15, 3);

/*
radioInterior = 120;
seccionGoma = 10;

rotate_extrude($fn = 100)
translate([radioInterior/2, 0, 0])
circle(d = secciongoma, $fn = 100);
*/