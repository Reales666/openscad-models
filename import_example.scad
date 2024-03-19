include <arduino_uno.scad>
use <conical_screw.scad>

$fa = 1;
$fs = 0.4;

*arduino_uno_board();

conical_screw(screw_lenght = 15);

