$fa = 1;
$fs = 0.4;


difference() {
    cube([195, 95, 70]);

    translate([2.5, -0.5, -0.1]) {
        cube([190, 98, 10]);
    }

    translate([195/2, 47.5, 9.5])  {
        anycubic_bottle();
    }

    #translate([-0.1, -0.1, 30])
        cube([40, 98, 45]);
    
    #translate([155.1, -0.1, 30])
        cube([40, 98, 45]);
}



module anycubic_bottle() {
    cylinder(r=20.5, h=32);
    translate([0, 0, 31.99]) {
        cylinder(r=45, h=32);
    }
}