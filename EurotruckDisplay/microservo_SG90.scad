module microservo_SG90() {
    color("blue") 
    {
        union() {
            cube(size=[22.5, 12, 24.01]);

            translate([-5, 0, 0]) {
                cube(size=[32.4, 12, 19], center=false);    
            }
        
            translate([6, 6, 24]) {
                cylinder(r=6, h=24-22.5, center=false,  $fn = 100);
            }
            
            translate([12, 6, 24]) {
                cylinder(r=3, h=24-22.5, center=false,  $fn = 100);
            }
        }
    }
}