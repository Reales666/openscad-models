$fa = 1;
$fs = 0.4;

// Base parameters
movement_tray_base_lenght = 164;
movement_tray_base_width = 72;
movement_tray_base_height = 6;

// Base
difference() {
    cube([movement_tray_base_lenght, movement_tray_base_width, movement_tray_base_height]);
    cube([])
}
