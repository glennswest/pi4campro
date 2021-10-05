
module cambody()
{
     difference(){
       cube([42,42,12]);
       translate([1.75,1.75,4.1]) cube([38.5,38.5,8]);
       translate([-.5,12.5,5.3]) cube([8,17,8]);
       translate([-.5,9,7.1]) cube([8,24,8]);
     }  
}

module mounts()
{
    translate([ 0, 0,4.1]) screwmount(); 
    translate([ 0,30,4.1]) screwmount();
    translate([30, 0,4.1]) screwmount();
    translate([30,30,4.1]) screwmount();
}

module screwmount()
{
    difference(){
        cylinder(r=2,h=3);
        translate([0,0,-.1]) cylinder(r=2.5/2,h=3.2,$fn=128);
    }
}
module earmount_shell()
{
    translate([-9,3.5,2.0]) rotate([-90,0,0]) cylinder(r=2,h=7.64,$fn=128);
    translate([-9,3.5,0]) cube([8,7.64,4]);
}

module earmount()
{
    difference(){
       earmount_shell();
       translate([-7.9,3.5-.1,2]) rotate([-90,0,0]) cylinder(r=1.51,h=8.2,$fn=128);
      }
} 
module camshell()
{
    cambody();
    translate([6,6,0]) mounts(); 
    
 }
 
 module mountbody()
 {
     difference(){
       cube([11.5,14,5]);
       translate([5.75,7,-.1]) cylinder(r=6.35/2,h=6,$fn=100);
       translate([5.75,7,-.1]) cylinder(r=4.6,h=1.5,$fn=100);  
       }
     
  }
 
 module basemount()
 {
     mountbody();
     translate([1,0,1]) earmount();
 }
 //camshell();
// rotate([0,0,180]) screwmount();
