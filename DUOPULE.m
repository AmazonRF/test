f=[511.5 511.6 511.7 511.8 511.9 512 512.1];
n=[3 5 13 14 5.57 2.5 1.9];
%plot(f,n,"+");
%hold on
fun1=polyfit(f,n,2);
f0=511:0.01:512.5;
res=polyval(fun1,f0);
plot(f,n,'r*',f0,res,'b-.');
hold on


