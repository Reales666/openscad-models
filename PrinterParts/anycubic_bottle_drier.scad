$fa = 1;
$fs = 0.4;


difference() {
    cube([195, 90, 70]);

    translate([2.5, -0.5, -0.1]) {
        cube([190, 91, 10]);
    }

    translate([195/2, 45, 9.5])  {
        anycubic_bottle();
    }

    #translate([-0.1, -0.1, 30])
        cube([40, 91, 45]);
    
    #translate([155.1, -0.1, 30])
        cube([40, 91, 45]);
}



module anycubic_bottle() {
    cylinder(r=20.5, h=32);
    translate([0, 0, 31.99]) {
        cylinder(r=87/2, h=32);
    }
}