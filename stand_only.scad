
module stand()
{
  len_x = 105;

  frame_len = 100;
  frame_height = 30;
  frame_thickness = 3;
    
  int_len_x = 100;
  int_len_y = 40;
  int_len_z = 10;

  difference() {
    cube([len_x, frame_len+frame_thickness, frame_height], center = true);
    translate([0, 
               frame_thickness, 
               frame_thickness]) {
      cube([len_x+1, frame_len+frame_thickness, frame_height], center = true);
    }
    translate([0, 
               0, 
               0]) {
      cube([85, 80, 100], center = true);
    }
  }
  translate([0, 
             frame_len/2 - frame_thickness, 
             -frame_height/2+frame_thickness+1]) {
    cube([len_x, 3, 7], center = true);
  }
}

stand();
