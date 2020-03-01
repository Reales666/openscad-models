// Medidas del sensor
alturaPlacaSensor = 20;
longitudPlacaSensor = 45;
radioSensores = 9;
distanciaCentros = 27;

// Medidas de la caja
tamanioBase = 15;
grosorPared = 5;
alturaCaja = alturaPlacaSensor + grosorPared + 8; 
longitudCaja = longitudPlacaSensor + 10;
anchuraCaja = tamanioBase + grosorPared;

// Posición Centros Cilindros
centro1 = 
[
	radioSensores + 5,
	grosorPared + 1,
	grosorPared + radioSensores + 5
];

centro2 =
[
	radioSensores + 5 + distanciaCentros,
	grosorPared + 1,
	grosorPared + radioSensores + 5
];

rotate([90, 0, 0])
	difference()
	{
		cube([longitudCaja, anchuraCaja, alturaCaja]);

		translate([-1, grosorPared, grosorPared])
			cube([longitudCaja + 2, anchuraCaja, alturaCaja]);


		translate(centro1)
			rotate([90, 0, 0])
				cylinder(grosorPared + 2, r = radioSensores, $fn = 1000);

		translate(centro2)
			rotate([90, 0, 0])
				cylinder(grosorPared + 2, r = radioSensores, $fn = 1000);

		translate([longitudCaja / 2, grosorPared + tamanioBase / 2, grosorPared + 0.1])
		{
			rotate([180, 0, 0])
				union()
				{
					//Cabeza del tornillo
					cylinder(2.5, d1 = 6.5, d2 = 4, $fn = 100);
		
					//Rosca del tornillo
					cylinder(20, d = 4, $fn = 100);
				}
		}
	}
