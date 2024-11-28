ladoXY=100;
alturaZ=13;
radioR=5;
lXY=ladoXY-radioR;
aZ=alturaZ-radioR;
$fn=120;



*hull(){
translate([radioR,radioR,aZ])
sphere(radioR);
translate([radioR,radioR,0])
cylinder(h=1, r=radioR);

translate([lXY,radioR,aZ])
sphere(radioR);
translate([lXY,radioR,0])
cylinder(h=1, r=radioR);

translate([lXY,lXY,aZ])
sphere(radioR);
translate([lXY,lXY,0])
cylinder(h=1, r=radioR);

translate([radioR,lXY,aZ])
sphere(radioR);
translate([radioR,lXY,0])
cylinder(h=1, r=radioR);
}


translate([0,0,aZ])
rotate_extrude()
translate([(ladoXY-radioR-radioR)/2, 0,0])
circle(r = radioR);
cylinder(h=aZ,r=ladoXY/2);
cylinder(h=aZ+radioR,r=(ladoXY-radioR-radioR)/2);
