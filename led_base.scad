
module led_base()
{
  len_x = 105;
  len_y = 50;
  len_z = 13;
    
  int_len_x = 100;
  int_len_y = 40;
  int_len_z = 10;
    
  difference() {
    union() {
      cube([len_x, len_y, len_z], center = true);
    }
    union() {
      translate([0, 0, 2]) {
        union() {
          // Cut out the interior of the cube for the LED panel
          cube([int_len_x, int_len_y, int_len_z], center = true);
          // Add cutout to the edge for wiring
          translate([50, 0, 0])
            cube([30, 13, 10], center = true);
        }
      }
      
      // Add screw holes to the four corners
      translate([-len_x/2 + 3, -len_y/2 + 3, 0])
        cylinder(h = 20, r = 1, $fn=100);
      translate([len_x/2 - 3, -len_y/2 + 3, 0])
        cylinder(h = 20, r = 1, $fn=100);  
      translate([-len_x/2 + 3, len_y/2 - 3, 0])
        cylinder(h = 20, r = 1, $fn=100);
      translate([len_x/2 - 3, len_y/2 - 3, 0])
        cylinder(h = 20, r = 1, $fn=100);

      // Add air holes to the bottom      
      for (grid_x = [-40:10:40])
         for (grid_y = [-10:10:10]) 
           translate([grid_x, grid_y, -10]) {
             linear_extrude(height = 20)
               circle(r=4, $fn=6);
            }
    }
  }
}

led_base();