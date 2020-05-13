set xlabel 'Canal'
set ylabel 'Cuentas'


f(x)=A*exp(-(x-b)**2/(2*c**2))+d;
A=1600;b=230;c=1;d=0
fit [200:270] f(x) '207Bi_cal2_analysis.asc' u 1:2 via A,b,c,d
plot [200:270] f(x) title 'Ajuste Gaussiano' lt rgb 'blue', '207Bi_cal2_analysis.asc' u 1:2 title '^2^0^7Bi' lt rgb 'black';
