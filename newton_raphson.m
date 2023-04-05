#syms x;
#fx = input("enter equ: ","s");
#f = eval(['@(x)',fx]);

#a = input("Enter closer value: ");

#s = 1;

#f1 = diff(sym(f),x,1);

#for i=1:100
 #   v =subs(f1,x,a);
#z = a-(f(a)/v);
#fprintf("%g %f %f %f %f\n",i,a,z,f(z),s)
#a = z;
#v =subs(f1,x,a);
#zk = a-(f(a)/v);
#s = abs(zk-z)/abs(zk) * 100;
#if(s< 0.0001)
#    break;
#end
#end
#fprintf("Root is: %f\n",a);

#enter equ: x^3-5*x+3
#Enter closer value: 1

##if not work then

fx = input("enter equ: ","s");
f = eval(['@(x)',fx]);
fx1 = input("Enter derivation function: ","s");
f1= eval(['@(x)',fx1]);

a = input("Enter closer value: ");

s = 1;


for i=1:100
   v =f1(a);
z = a-(f(a)/v);
fprintf("%g %f %f %f %f\n",i,a,z,f(z),s)
a = z;
v =f1(a);
zk = a-(f(a)/v);
s = abs(zk-z)/abs(zk) * 100;
if(s< 0.0001)
    break;
end
end
fprintf("Root is: %f\n",a);

#enter equ: x^3-5*x+3
#Enter derivation function: 3*x^2-5
#Enter closer value: 1



