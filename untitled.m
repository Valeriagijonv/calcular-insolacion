 lat=16.75;
  n=310;
  for i=1:1
ad=23.5*sind(360*(284+n)/365);
dia=(2/15)*acosd(-tand(lat)*tand(ad));
H=-dia*60/8:dia*60/8;
h=asind(sind(ad)*sind(lat)+cosd(ad)*cosd(lat)*cosd(H));
I=1000*sind(h);
Horas=12-H*4/60;
tam=size(Horas,2);
Ip=(sum(I)/size(I,2))*Horas(tam)/1000


plot (Horas,I);grid on;hold on;
Insolacion=trapz(Horas,I)
xlabel('Hora del dia (h)','FontSize',8);
ylabel('Energia que llega a una superficie (W/m^2)','FontSize',8)
n=n+92;
  end
  Figure
  plot (Horas,h);grid on;
xlabel('Hora del dia (h)','FontSize',8);
ylabel('Angulo que forma la altura del sol con el horizonte','FontSize',8);
