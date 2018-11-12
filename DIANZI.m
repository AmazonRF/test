%%Í¼1
%TABLE3
UA=[16 25 36 49 64 81 100];
IA1=[9 10 10 10 11 11 11].*1e-6;
IA2=[15 16 17 18 18 20 20].*1e-6;
IA3=[27 29 30 32 33 34 35].*1e-6;
IA4=[47 50 52 54 56 57 59].*1e-6;
IA5=[78 82 87 90 93 96 98].*1e-6;
IA6=[128 135 141 147 151 156 160].*1e-6;
IA7=[208 219 229 237 244 251 257].*1e-6;
LGIA1=log(IA1);
LGIA2=log(IA2);
LGIA3=log(IA3);
LGIA4=log(IA4);
LGIA5=log(IA5);
LGIA6=log(IA6);
LGIA7=log(IA7);
SUA=sqrt(UA);
T3K1 = polyfit(SUA,LGIA1,1);
T3K2 = polyfit(SUA,LGIA2,1);
T3K3 =polyfit(SUA,LGIA3,1);
T3K4= polyfit(SUA,LGIA4,1);
T3K5= polyfit(SUA,LGIA5,1);
T3K6= polyfit(SUA,LGIA6,1);
T3K7= polyfit(SUA,LGIA7,1);

subplot(2,2,1);

SUA0=4:0.001:10;
plot(SUA,LGIA1,'+',SUA0,polyval(T3K1,SUA0),'k')
hold on
plot(SUA,LGIA2,'+',SUA0,polyval(T3K2,SUA0),'k')
hold on
plot(SUA,LGIA3,'+',SUA0,polyval(T3K3,SUA0),'k')
hold on
plot(SUA,LGIA4,'+',SUA0,polyval(T3K4,SUA0),'k')
hold on
plot(SUA,LGIA5,'+',SUA0,polyval(T3K5,SUA0),'k')
hold on
plot(SUA,LGIA6,'+',SUA0,polyval(T3K6,SUA0),'k')
hold on
plot(SUA,LGIA7,'+',SUA0,polyval(T3K7,SUA0),'k')
hold on
% xlabel('sqrt(Ua)');
% ylabel('lg(Ia)');
% title('Í¼1£ºlg(Ia)-sqrt(Ua)');

fprintf('the value of L1 is %6.9f\n',10^polyval(T3K1,0)*1e6);
fprintf('the value of L2 is %6.9f\n',10^polyval(T3K2,0)*1e6);
fprintf('the value of L3 is %6.9f\n',10^polyval(T3K3,0)*1e6);
fprintf('the value of L4 is %6.9f\n',10^polyval(T3K4,0)*1e6);
fprintf('the value of L5 is %6.9f\n',10^polyval(T3K5,0)*1e6);
fprintf('the value of L6 is %6.9f\n',10^polyval(T3K6,0)*1e6);
fprintf('the value of L7 is %6.9f\n',10^polyval(T3K7,0)*1e6);
fprintf('##################################\n')


% T3K1 = spcrv([[SUA(1) SUA SUA(end)];[IA1(1) IA1 IA1(end)]],3);
% T3K2 = spcrv([[SUA(1) SUA SUA(end)];[IA2(1) IA2 IA2(end)]],3);
% T3K3 = spcrv([[SUA(1) SUA SUA(end)];[IA3(1) IA3 IA3(end)]],3);
% T3K4= spcrv([[SUA(1) SUA SUA(end)];[IA4(1) IA4 IA4(end)]],3);
% T3K5= spcrv([[SUA(1) SUA SUA(end)];[IA5(1) IA5 IA5(end)]],3);
% T3K6= spcrv([[SUA(1) SUA SUA(end)];[IA6(1) IA6 IA6(end)]],3);
% T3K7= spcrv([[SUA(1) SUA SUA(end)];[IA7(1) IA7 IA7(end)]],3);
% plot(T3K1(1,:),T3K1(2,:),'k');
% hold on
% plot(T3K2(1,:),T3K2(2,:),'r');
% hold on
% plot(T3K3(1,:),T3K3(2,:),'y');
% hold on
% plot(T3K4(1,:),T3K4(2,:),'g');
% hold on
% plot(T3K5(1,:),T3K5(2,:),'c');
% hold on
% plot(T3K6(1,:),T3K6(2,:),'b');
% hold on
% plot(T3K7(1,:),T3K7(2,:),'m');
% hold on
%%
subplot(2,2,2)
LGIAT1=LGIA1-2*log(1.96);
LGIAT2=LGIA2-2*log(2.00);
LGIAT3=LGIA3-2*log(2.04);
LGIAT4=LGIA4-2*log(2.08);
LGIAT5=LGIA5-2*log(2.12);
LGIAT6=LGIA6-2*log(2.16);
LGIAT7=LGIA7-2*log(2.20);
TC=[1/1.96 1/2 1/2.04 1/2.08 1/2.12 1/2.16 1/2.20];

T4K1=polyfit(TC,LGIAT1,1);
T4K2=polyfit(TC,LGIAT2,1);
T4K3=polyfit(TC,LGIAT3,1);
T4K4=polyfit(TC,LGIAT4,1);
T4K5=polyfit(TC,LGIAT5,1);
T4K6=polyfit(TC,LGIAT6,1);
T4K7=polyfit(TC,LGIAT7,1);
TC0=1/2.20:0.0001:1/1.96;
plot(TC, LGIAT1,'+',TC0,polyval(T4K1,TC0));
hold on
plot(TC, LGIAT2,'+',TC0,polyval(T4K2,TC0));
hold on
plot(TC, LGIAT3,'+',TC0,polyval(T4K3,TC0));
hold on
plot(TC, LGIAT4,'+',TC0,polyval(T4K4,TC0));
hold on
plot(TC, LGIAT5,'+',TC0,polyval(T4K5,TC0));
hold on
plot(TC, LGIAT6,'+',TC0,polyval(T4K6,TC0));
hold on
plot(TC, LGIAT7,'+',TC0,polyval(T4K7,TC0));
hold on


fprintf('the value of L1 is %6.9f\n',(polyval(T4K1,1)-polyval(T4K1,0)));
fprintf('the value of L2 is %6.9f\n',polyval(T4K2,1)-polyval(T4K2,0));
fprintf('the value of L3 is %6.9f\n',polyval(T4K3,1)-polyval(T4K3,0));
fprintf('the value of L4 is %6.9f\n',polyval(T4K4,1)-polyval(T4K4,0));
fprintf('the value of L5 is %6.9f\n',polyval(T4K5,1)-polyval(T4K5,0));
fprintf('the value of L6 is %6.9f\n',polyval(T4K6,1)-polyval(T4K6,0));
fprintf('the value of L7 is %6.9f\n',polyval(T4K7,1)-polyval(T4K7,0));
fprintf('!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n')
%(polyval(T4K1,1)-polyval(T4K1,0))/(2.303*2.5*1.381*1e-23)
fprintf('the value of L1 is %6.9f\n',-(polyval(T4K1,1)-polyval(T4K1,0))/(2.303*2.5*1.381*1e-1));
fprintf('the value of L2 is %6.9f\n',-(polyval(T4K2,1)-polyval(T4K2,0))/(2.303*2.5*1.381*1e-1));
fprintf('the value of L3 is %6.9f\n',-(polyval(T4K3,1)-polyval(T4K3,0))/(2.303*2.5*1.381*1e-1));
fprintf('the value of L4 is %6.9f\n',-(polyval(T4K4,1)-polyval(T4K4,0))/(2.303*2.5*1.381*1e-1));
fprintf('the value of L5 is %6.9f\n',-(polyval(T4K5,1)-polyval(T4K5,0))/(2.303*2.5*1.381*1e-1));
fprintf('the value of L6 is %6.9f\n',-(polyval(T4K6,1)-polyval(T4K6,0))/(2.303*2.5*1.381*1e-1));
fprintf('the value of L7 is %6.9f\n',-(polyval(T4K7,1)-polyval(T4K7,0))/(2.303*2.5*1.381*1e-1));
fprintf('##################################\n')

%%
IS1=[0.100 0.3250 0.3350  0.3450 0.3550 0.3650 0.3750 0.3850 0.3950 0.4050 0.4150 0.4250 0.4350 0.4450 0.4550];
IS2=[0.100 0.4000 0.4100 0.4200 0.4300 0.4400 0.4500 0.4600 0.4700 0.4800 0.4900 0.5000 0.5100 0.5200 0.5300 0.5400 0.5500];
IS3=[0.100 0.4700 0.4800 0.4900 0.5000 0.5100 0.5200 0.5300 0.5400 0.5500 0.5600 0.5700 0.5800 0.5900 0.6000 0.6100 0.6200 0.6300 0.6400];
IS4=[0.100 0.5300    0.5400    0.5500    0.5600    0.5700    0.5800    0.5900    0.6000 0.7000    0.7100    0.7200];
IS5=[0.100     0.5830    0.5930    0.6030    0.6130    0.6230    0.6330    0.6430    0.6530    0.6630    0.6730  0.6830    0.6930];

IAA1=[108 108 106 97 78 54 36 2 11 7 4 2 2 2 1];
IAA2=[109 109 108 100 83 57 37 25 15 10 7 5 4 3 2 2 1];
IAA3=[113 112 108 97 76 52 35 23 13 8 6 4 2 2 2 2 2 2 1];
IAA4=[118 117 109 97 74 52 35 23 14 2 2 1];
IAA5=[119 118 109 97 72 52 37 25 16 10 7 5 3];

ISSM=linspace(0.1,0.72,100);
IAA1M=108/4*ones(1,100);
IAA2M=109/4*ones(1,100);
IAA3M=113/4*ones(1,100);
IAA4M=118/4*ones(1,100);
IAA5M=119/4*ones(1,100);

T5K1 = spcrv([[IS1(1) IS1 IS1(end)];[IAA1(1) IAA1 IAA1(end)]],3);
T5K2 = spcrv([[IS2(1) IS2 IS2(end)];[IAA2(1) IAA2 IAA2(end)]],3);
T5K3 = spcrv([[IS3(1) IS3 IS3(end)];[IAA3(1) IAA3 IAA3(end)]],3);
T5K4 = spcrv([[IS4(1) IS4 IS4(end)];[IAA4(1) IAA4 IAA4(end)]],3);
T5K5 = spcrv([[IS5(1) IS5 IS5(end)];[IAA5(1) IAA5 IAA5(end)]],3);

subplot(2,2,3)
plot(T5K1(1,:),T5K1(2,:),'k');
hold on
plot(T5K2(1,:),T5K2(2,:),'k');
hold on
plot(T5K3(1,:),T5K3(2,:),'k');
hold on
plot(T5K4(1,:),T5K4(2,:),'k');
hold on
plot(T5K5(1,:),T5K5(2,:),'k');
hold on

plot(ISSM,IAA1M,'--');
plot(ISSM,IAA2M,'--');
plot(ISSM,IAA3M,'--');
plot(ISSM,IAA4M,'--');
plot(ISSM,IAA5M,'--');

%%
IC=[0.3769 0.4581 0.5256 0.5847 0.6386];
UA=[10 15 20 25 30];
T6K=polyfit(UA,IC,1);
UX=5:0.001:35;
subplot(2,2,4)
plot(UA,IC,'+',UX,polyval(T6K,UX));
fprintf('the value of K is %6.9f\n',polyval(T6K,1)-polyval(T6K,0));




