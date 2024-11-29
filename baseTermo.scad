// © Ricardo Espinosa
// Noviembre 2024

ladoXY=100;
alturaZ=13;
radioR=5;
aumentoBase=1;//al ser radios, esta valor es =*2
radioB=radioR+aumentoBase;
lXY=ladoXY-radioR;
aZ=alturaZ-radioR;
$fn=120;

hull(){
translate([0,0,aZ])
rotate_extrude()
translate([(ladoXY-radioR-radioR)/2, 0,0])
circle(r = radioR);
cylinder(h=0.1,r1=(ladoXY/2)+aumentoBase);
}

*hull(){
translate([radioR,radioR,aZ])
sphere(radioR);
translate([radioR,radioR,0])
cylinder(h=0.1, r=radioB);

translate([lXY,radioR,aZ])
sphere(radioR);
translate([lXY,radioR,0])
cylinder(h=0.1, r=radioB);

translate([lXY,lXY,aZ])
sphere(radioR);
translate([lXY,lXY,0])
cylinder(h=0.1, r=radioB);

translate([radioR,lXY,aZ])
sphere(radioR);
translate([radioR,lXY,0])
cylinder(h=0.1, r=radioB);
}
