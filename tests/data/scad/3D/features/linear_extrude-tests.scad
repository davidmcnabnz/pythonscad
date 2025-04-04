// Empty
linear_extrude();
// No children
linear_extrude() { }
// 3D child
linear_extrude() { cube(); }

linear_extrude(height=10) square([10,10]);
// h is an alias for height.
translate([19,5,0]) linear_extrude(h=10, center=true) difference() {circle(5); circle(3);}
// If both height and h are specified, there's a warning and height wins.
translate([31.5,2.5,0]) linear_extrude(h=5, height=10, twist=-45) polygon(points = [[-5,-2.5], [5,-2.5], [0,2.5]]);

translate([1,21,0]) linear_extrude(height=20, twist=30, slices=2, segments=0) {
    difference() {
        translate([-1,-1]) square([10,10]);
        square([8,8]);
    }
}
translate([19,20,0]) linear_extrude(height=20, twist=45, slices=10) square([10,10]);

// Height is first positional parameter.
translate([0,-15,0]) linear_extrude(5) square([10,10]);

translate([15,-15,0]) linear_extrude(v=[3 ,2 ,5]) square([10, 10]);

translate([30,-15,0]) linear_extrude(height=8, v=[3, 2, 5]) square([10,10]);


// scale given as a scalar
translate([-25,-10,0]) linear_extrude(height=10, scale=2) square(5, center=true);
// scale given as a 3-dim vector
translate([-15,20,0]) linear_extrude(height=20, scale=[4,5,6]) square(10);
// scale is negative
translate([-10,5,0]) linear_extrude(height=15, scale=-2) square(10, center=true);
// scale given as undefined
translate([-15,-15,0]) linear_extrude(height=10, scale=var_undef) square(10);

// height is negative
translate([0,-25,0]) linear_extrude(-1) square(10, center=true);

// vector has negative z coordinate
translate([0,-25,0]) linear_extrude(v=[10,10,-5]) square(10, center=true);
