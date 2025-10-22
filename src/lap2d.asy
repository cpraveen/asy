size(200,200);
import flowchart;

pen pp = linewidth(1.5);
real L = 3;

block cent = circle("$+4$", (0,0), dr=1);
block left = circle("$-1$", (-L,0), dr=1);
block right = circle("$-1$", (+L,0), dr=1);
block bottom = circle("$-1$", (0,-L), dr=1);
block top = circle("$-1$", (0,+L), dr=1);

draw(cent,pp);
draw(left,pp);
draw(right,pp);
draw(bottom,pp);
draw(top,pp);

add(new void(picture pic, transform t){
   blockconnector operator-- = blockconnector(pic,t,pp);
   cent--Left--left;
   cent--Right--right;
   cent--Down--bottom;
   cent--Up--top;
});

pen p = fontsize(20);
label("$\frac{1}{h^2}~~\cdot$", (-1.2*L,0), W, p);
