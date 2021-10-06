module cshole()
{
    translate([6,6,-.1]) rotate([0,0,-90]) cylinder(r=3.5,h=1.5,$fn=128);
    translate([6,6,-.1]) rotate([0,0,-90]) cylinder(r=1.3,h=9,$fn=128);
    
}

module csnut()
{
    translate([6,6,-.1]) rotate([0,0,-90]) cylinder(r=3.5,h=1.2,$fn=5);
    translate([6,6,-.1]) rotate([0,0,-90]) cylinder(r=1.3,h=9,$fn=128);
    
}

module cambody()
{
     difference(){
       cube([42,42,12]);
       translate([1.75,1.75,4.1]) cube([38.5,38.5,8]);
       translate([-.5,12.5,5.3]) cube([8,17,8]);
       translate([-.5,9,7.1]) cube([8,24,8]);
       translate([ 0, 0,0]) cshole(); 
       translate([ 0,30,0]) cshole();
       translate([30, 0,0]) cshole();
       translate([30,30,0]) cshole();  
     }  
}

module camtopbody()
{
     difference(){
       cube([42,42,14]);
       translate([1.75,1.75,1.81]) cube([38.5,38.5,17.2]);
       //translate([-.5,12.5,5.3]) cube([8,17,8]);
       translate([-.5,9,14-9.4+.1]) cube([8,24,9.4]);
       translate([36,15.95,19-9.4+.1]) cube([8,10.1,9.4]); 
       translate([ 0, 0,0]) csnut(); 
       translate([ 0,30,0]) csnut();
       translate([30, 0,0]) csnut();
       translate([30,30,0]) csnut(); 
       translate([21,21,-.1]) cylinder(r=31/2,h=10,$fn=128);   
     }  
}

module mounts()
{
    translate([ 0, 0,4.1]) screwmount(); 
    translate([ 0,30,4.1]) screwmount();
    translate([30, 0,4.1]) screwmount();
    translate([30,30,4.1]) screwmount();
}

module topmounts()
{
    translate([ 0, 0,2]) topscrewmount(); 
    translate([ 0,30,2]) topscrewmount();
    translate([30, 0,2]) topscrewmount();
    translate([30,30,2]) topscrewmount();
}

module screwmount()
{
    difference(){
        cylinder(r=2,h=3);
        translate([0,0,-.1]) cylinder(r=2.5/2,h=3.2,$fn=128);
    }
}

module topscrewmount()
{
    difference(){
        cylinder(r=2,h=13,$fn=128);
        translate([0,0,-.1]) cylinder(r=2.5/2,h=13.2,$fn=128);
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
 
 module camtop()
{
    camtopbody();
    translate([6,6,0]) topmounts(); 
    
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
 
//camtop();
 //camshell();
// rotate([0,0,180]) screwmount();
