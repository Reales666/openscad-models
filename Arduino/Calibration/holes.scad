platform_lenght = 85;
platform_width = 25;
platform_thick = 4;

tolerance1  = 0.1;
tolerance2  = 0.2;
tolerance3  = 0.3;

$fa = 1;
$fs = 0.1;

difference() {
    cube([platform_lenght, platform_width, platform_thick]);
    // 1mm diameter cylinders
    translate([2, 2, -1]) {
        cylinder(r=0.5, h=6, center=false);    
    }

    translate([2, 6, -1]) {
        cylinder(r=0.5 * (1 + tolerance1), h=8, center=false);    
    }

    translate([2, 10, -1]) {
        cylinder(r=0.5 * (1 + tolerance2), h=10, center=false);    
    }

    translate([2, 14, -1]) {
        cylinder(r=0.5 * (1 + tolerance3), h=12, center=false);    
    }

    // 1.5mm diameter cylinders
    translate([8, 2, -1]) {
        cylinder(r=0.75, h=6, center=false);    
    }

    translate([8, 6, -1]) {
        cylinder(r=0.75 * (1 + tolerance1), h=8, center=false);    
    }

    translate([8, 10, -1]) {
        cylinder(r=0.75 * (1 + tolerance2), h=10, center=false);    
    }

    translate([8, 14, -1]) {
        cylinder(r=0.75 * (1 + tolerance3), h=12, center=false);    
    }

    // 2mm diameter cylinders
    translate([15, 2, -1]) {
        cylinder(r=1, h=6, center=false);    
    }

    translate([15, 6, -1]) {
        cylinder(r=1 * (1 + tolerance1), h=8, center=false);    
    }

    translate([15, 10, -1]) {
        cylinder(r=1 * (1 + tolerance2), h=10, center=false);    
    }

    translate([15, 14, -1]) {
        cylinder(r=1 * (1 + tolerance3), h=12, center=false);    
    }

    // 2.5mm diameter cylinders
    translate([23, 2, -1]) {
        cylinder(r=1.25, h=6, center=false);    
    }

    translate([23, 6, -1]) {
        cylinder(r=1.25 * (1 + tolerance1), h=8, center=false);    
    }

    translate([23, 10, -1]) {
        cylinder(r=1.25 * (1 + tolerance2), h=10, center=false);    
    }

    translate([23, 14, -1]) {
        cylinder(r=1.25 * (1 + tolerance3), h=12, center=false);    
    }

    // 3mm diameter cylinders
    translate([32, 2, -1]) {
        cylinder(r=1.5, h=6, center=false);    
    }

    translate([32, 7, -1]) {
        cylinder(r=1.5 * (1 + tolerance1), h=8, center=false);    
    }

    translate([32, 12, -1]) {
        cylinder(r=1.5 * (1 + tolerance2), h=10, center=false);    
    }

    translate([32, 17, -1]) {
        cylinder(r=1.5 * (1 + tolerance3), h=12, center=false);    
    }

    // 3.5mm diameter cylinders
    translate([41, 2, -1]) {
        cylinder(r=1.75, h=6, center=false);    
    }

    translate([41, 8, -1]) {
        cylinder(r=1.75 * (1 + tolerance1), h=8, center=false);    
    }

    translate([41, 14, -1]) {
        cylinder(r=1.75 * (1 + tolerance2), h=10, center=false);    
    }

    translate([41, 20, -1]) {
        cylinder(r=1.75 * (1 + tolerance3), h=12, center=false);    
    }

    // 4mm diameter cylinders
    translate([52, 2, -1]) {
        cylinder(r=2, h=6, center=false);    
    }

    translate([52, 8, -1]) {
        cylinder(r=2 * (1 + tolerance1), h=8, center=false);    
    }

    translate([52, 14, -1]) {
        cylinder(r=2 * (1 + tolerance2), h=10, center=false);    
    }

    translate([52, 20, -1]) {
        cylinder(r=2 * (1 + tolerance3), h=12, center=false);    
    }

    // 5mm diameter cylinders
    translate([60, 10, -1]) {
        cylinder(r=2.5 * (1 + tolerance2), h=10, center=false);    
    }

    // 10mm diameter cylinders
    translate([75, 10, -1]) {
        cylinder(r=5 * (1 + tolerance2), h=10, center=false);    
    }
}

