ladoXY=100;
alturaZ=15;
radioR=5;
lXY=ladoXY-radioR;
aZ=alturaZ-radioR;
$fn=60;

hull(){
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
