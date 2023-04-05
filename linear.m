n = input("How many numbers: ");

sumX = 0;

sumY = 0;
sumX2 = 0;
sumXY = 0;
for i=1:n
    fprintf("Round: %d\n",i);
    x = input("Enter x: ");
    y = input("Enter Y: ");

    sumX =sumX+ x;
    sumX2 =sumX2+ x*x;
    sumY =sumY+ y;
    sumXY =sumXY+ x*y;
end
a = (n*sumXY-sumX*sumY)/(n*sumX2-sumX*sumX);
b = (sumY-a*sumX)/n;

fprintf("For eqn y=b+ax\n")
fprintf("a= %f , b= %f",a,b);
