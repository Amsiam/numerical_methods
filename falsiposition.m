fx=input('Enter the function ,F(x) = ','s');
f=eval(['@(x)',fx]) ;
a=input('Enter a=');
b=input('Enter b=');
v=b;
if(f(b)<0)
b=a;
a=v;
end
s=1;
fprintf('N\t \ta\t\t b\t\t x\t\t f(x)\t\t\t Error\n');
for k=1:100;
it(k)=abs(k);
x(k)=(a*f(b)-b*f(a))/(f(b)-f(a));
c=f(x(k));
fprintf('%g %f %f %f %f %f\n',k,a,b,x(k),c,s);
if f(c)>0
b=x(k);
else
a=x(k);
end
x(k+1)=(a*f(b)-b*f(a))/(f(b)-f(a));
s=((abs(x(k+1)-x(k)))/abs(x(k+1)))*100;
if s<=.01
break;
end
end
fprintf('\n\n Hence the root is %f \n',x(k));