fx = input("Enter dy/dx: ",'s');

f = eval(['@(x,y)',fx]);

xn = input("enter xn: ");
h = input("Enter h: ");
x = input("Enter x0: ");
y0 = input("Enter y0: ");


fprintf("y(%f)= %f\n",x,y0);
for i=x:h:xn-h
k1 = h*f(i,y0);
k2 = h*f(i+h/2,y0+k1/2);
k3 = h*f(i+h/2,y0+k2/2);
k4 = h*f(i+h,y0+k3);
k = (1/6) *(k1+2*k2+2*k3+k4);

y0 = y0+k;
fprintf("y(%f)= %f\n",i+h,y0);
end

fprintf("Approximation value: %f\n",y0);

#Enter dy/dx: x^2+y^2
#enter xn: .4
#Enter h: .2
#Enter x0: 0
#Enter y0: 0
