module microservo_SG90() {
    color("blue") 
    {
        union() {
            cube(size=[22.6, 12.1, 24.01]);

            translate([-5, 0, 19-40]) {
                cube(size=[32.5, 12.1, 40], center=false);    
            }
        
            translate([6, 6, 24]) {
                cylinder(r=6.05, h=24-22.5, center=false,  $fn = 100);
            }
            
            translate([12, 6, 24]) {
                cylinder(r=3.05, h=24-22.5, center=false,  $fn = 100);
            }

            translate([-3, 6, 3]) 
                cylinder(r=1.3, h=50, center=true);

            translate([25.6, 6, 3]) 
                cylinder(r=1.3, h=50, center=true);
        }
    }


}