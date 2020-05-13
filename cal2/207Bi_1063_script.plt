set xlabel 'Canal'
set ylabel 'Cuentas'


f(x)=A*exp(-(x-b)**2/(2*c**2))+d;
A=420;b=420;c=1;d=0
fit [380:480] f(x) '207Bi_cal2_analysis.asc' u 1:2 via A,b,c,d
plot [380:480] f(x) title 'Ajuste Gaussiano' lt rgb 'blue', '207Bi_cal2_analysis.asc' u 1:2 title '^2^0^7Bi' lt rgb 'black';
