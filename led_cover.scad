module led_cover()
{
  len_x = 105;
  len_y = 50;
      
  difference() {
    square([len_x, len_y], center = true);
    union() {
      translate([-len_x/2 + 3, -len_y/2 + 3])
        circle(r = 1, $fn=100);
      translate([len_x/2 - 3, -len_y/2 + 3])
        circle(r = 1, $fn=100);  
      translate([-len_x/2 + 3, len_y/2 - 3])
        circle(r = 1, $fn=100);
      translate([len_x/2 - 3, len_y/2 - 3])
        circle(r = 1, $fn=100);
    }
  }
}

led_cover();