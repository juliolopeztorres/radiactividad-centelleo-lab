set xlabel 'Canal'
set ylabel 'Cuentas'


f(x)=A*exp(-(x-b)**2/(2*c**2))+d;
A=240;b=530;c=1;d=0
fit [500:560] f(x) '60Co_cal2_analysis.asc' u 1:2 via A,b,c,d
plot [500:560] f(x) title 'Ajuste Gaussiano' lt rgb 'blue', '60Co_cal2_analysis.asc' u 1:2 title '^6^0Co' lt rgb 'black';
