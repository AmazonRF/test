I=[5.7 9.1 19.0 26.9 22.1 12.7 6.5 22.6 48.9 57.6 42.1 13.0 12.7 73.7 151.9 170.7 65.3 8.7 180.3 963.6 2121.0 3187.8 3970.1 3997.5 3060.1 1981.2 841.1 169.0 14.1 136.2 197.2 159.3 55.7 8.9 23.6 60.7 66.3 35.6 7.4 9.8 27.0 34.0 23.4 8.5 6.6 16.9 22.1 18.1];
I0=1/3997.5.*I;
x0=0:0.01:0.47;
%plot(x0,I0);
%a=uitabel(x0',I')
xlswrite('results.xls',x0','sheet1','A2')
xlswrite('results.xls',I','sheet1','B2')
xlswrite('results.xls',I0','sheet1','C2')