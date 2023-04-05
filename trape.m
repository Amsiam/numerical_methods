f = input("Enter function: ",'s');
fx = eval(["@(x)",f]);

a = input("Enter a: ");
b = input("Enter b: ");
n = input("Enter N: ");

h = (b-a)/n;

j=0;
s=0;
for i=a:h:b
  if(j==0||j==n)
  s = s+fx(i)/2;
else
  s = s + fx(i);
end
j = j+1;
end
disp(h*s)

#Enter function: sin(x)
#Enter a: 0
#Enter b: pi
#Enter N: 6
