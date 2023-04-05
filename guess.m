a = input("Enter Matrix A: ");
b = input("Enter Matrix B: ");

[m,n] = size(a);

for k=1:m-1
  for i=k+1:m
    fact = a(i,k)/a(k,k);
    for j = 1:n
      a(i,j) = a(i,j)-fact*a(k,j);
    endfor
    b(i,1) = b(i,1)-fact*b(k,1);
  endfor
end
x(m) = b(m,1)/a(m,n);
for i=m-1:-1:1
  sum = 0;
  for j = i+1:n
    sum = sum+a(i,j)*x(j);
  endfor
  x(i) = (b(i,1)-sum)/a(i,i);
end
disp(x);

#A=[2 3 1;1 3 2;3 2 1]
#B=[9;6;8]
