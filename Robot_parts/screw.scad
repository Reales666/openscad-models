twists = 8;
metric_size = 5;
body_radius = 12;
head_size = 5;
head_radiuis = 20;

module regular_polygon(order = 6, r=5){
    angles=[ for (i = [0:order-1]) i*(360/order) ];
    coords=[ for (th=angles) [r*cos(th), r*sin(th)] ];
    polygon(coords);
}

module metric_screw() {
    difference() {
        
        union() {

            // Screw thread
            linear_extrude(height=twists * 4,center=true,twist=twists*360) {
                translate([5, 0, 0])
                    rotate([0, 0, 0])
                        polygon(points=[[0,0],[10,5],[0,10]]);
            }

            // Screw body
            cylinder(r=body_radius, h=twists * 4, center=true);

            // Screw metric part
            translate([0, 0, (twists * 4 / 2) + metric_size/2])
                cylinder(r=body_radius, h=metric_size, center=true);
            
            // Screw head
            translate([0, 0, (twists * 4 / 2) + (metric_size/2) + head_size])
                cylinder(r=head_radiuis, h=head_size, center=true);
        }

        linear_extrude(height=70,center=true)
            regular_polygon();
    }
}