size(300,0);

real h = 1;
real ujm2 = 0.4;
real ujm1 = 0.5;
real uj = 0.6;
real ujp1 = 0.7;

//-----------------------------t_n-------------------------------------------
draw(Label("$x$",EndPoint), (-h,0)--(4*h,0),Arrow);

draw((0,0)--(0,1));
draw((h,0)--(h,1));
draw((2*h,0)--(2*h,1));
draw((3*h,0)--(3*h,1));

pen ps = red + linewidth(1);

draw(Label("$Q_{i-1}^n$",MidPoint),(0,ujm1)--(h,ujm1),ps);
draw(Label("$Q_{i}^n$",MidPoint),(h,uj)--(2*h,uj),ps);
draw(Label("$Q_{i+1}^n$",MidPoint),(2*h,ujp1)--(3*h,ujp1),ps);

label("$i-\frac{3}{2}$",(0,0),S);
label("$i-\frac{1}{2}$",(h,0),S);
label("$i+\frac{1}{2}$",(2*h,0),S);
label("$i+\frac{3}{2}$",(3*h,0),S);
