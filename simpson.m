f = input("Enter function: ",'s');
fx = eval(["@(x)",f]);

a = input("Enter a: ");
b = input("Enter b: ");
n = input("Enter N: ");

h = (b-a)/n;

j=1;
s = fx(a)+fx(b);
for i=a+h:h:b-h
  if(rem(j,2)==1)
  s = s+4*fx(i);
else
  s = s + 2*fx(i);

end
j=j+1;
end

disp(h/3*s);

#Enter function: sin(x)
#Enter a: 0
#Enter b: pi
#Enter N: 6
