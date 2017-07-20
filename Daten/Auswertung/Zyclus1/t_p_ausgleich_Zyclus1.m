%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%    SEBASTIAN AVERDUNK       %%%%%%%%%%
%%%%%%%%    03649086                 %%%%%%%%%%
%%%%%%%%    BSc. Umweltingenieur     %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


clear all
load('C:\Users\Sebi\Dropbox\Studium\Semester 8\Bachelorarbeit\StoneMon\Daten\Auswertung\Zyclus1\workspace-zyclus1.mat')


close all



%% in Übersichtsmatrix speichen:

%    -> Zyclus | Reihe | +0°C   | freezing | thawing | mean
%    ->    1   |    1  | y=mx+t | y=mx+t   | y=mx+t  | y=mx+t
%    -> ....

% Zyclus 1
Nr = [1;2;3;4;5];
Zyclus = [1;1;1;1;1];
Reihe = [1;2;3;4;5];
warm =  {'';'';'';'';''};
freezing =  {'';'';'';'';''};
thawing =  {'';'';'';'';''};
mean =  {'';'';'';'';''};

%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                           Reihe1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(1)
set(gca,'Fontsize',10);
title('T- \rho - Diagramm Zyklus1 Reihe1 (Klebeelektroden)','Fontsize',10)
ylabel('Resistivity in [\Omega m]','Fontsize',10)
xlabel('Temperatur in [°C]','Fontsize',10)
grid on

axis([-6 12 150 2500])

%
%     plot(T1,Reihe1,'kx')
%     pause(0.1)
%     hold on
%
%     for i=1:718
%
%         plot(T1(i),Reihe1(i),'rx')
%           i
%         pause(0.2)
%     end



% Reihe1
%---------------------------------------------------------------------
%---------------------------------------------------------------------
%------definiere die Abschnitte der linearen zuordnung (visuell)------
a=1;
b=190;
c=260;
d=260;
e=340;

%------datenabschnitte aus vektor holen------------------
%1=a:b und e:end
x_fit1 = T1(a:b)';
y_fit1 = Reihe1(a:b)';
x_letzte = T1(e:end)';
y_letzte = Reihe1(e:end)';
% x_fit1 = [x_fit1 x_letzte];
% y_fit1 = [y_fit1 y_letzte];

%2=b:c
x_fit2 = T1(b:c)';
y_fit2 = Reihe1(b:c)';
%nicht c:d
x_nicht = T1(c:d)';
y_nicht = Reihe1(c:d)';

%3=d:e
x_fit3 = T1(d:e)';
y_fit3 = Reihe1(d:e)';

%mittlere negative
%b:c + d:e
x_fit_m = T1(b:c)';
y_fit_m = Reihe1(b:c)';
x_fit_m = [x_fit_m T1(d:e)'];
y_fit_m = [y_fit_m Reihe1(d:e)'];


%alle
x_all_1 = x_fit1;
x_all_2 = x_fit2;
x_all_3 = x_fit3;
x_all_m = x_fit_m;

y_all_1 = y_fit1;
y_all_2 = y_fit2;
y_all_3 = y_fit3;
y_all_m = y_fit_m;





%------lösche Leerzeilen------------------------------
x_fit1(isnan(y_fit1)) = [];
y_fit1(isnan(y_fit1)) = [];
x_fit2(isnan(y_fit2)) = [];
y_fit2(isnan(y_fit2)) = [];
x_fit3(isnan(y_fit3)) = [];
y_fit3(isnan(y_fit3)) = [];
x_fit_m(isnan(y_fit_m)) = [];
y_fit_m(isnan(y_fit_m)) = [];




%------ausgleichsgerade errechenn------------------------------------
gerade_1 = polyfit(x_fit1,y_fit1,1);
gerade_2 = polyfit(x_fit2,y_fit2,1);
gerade_3 = polyfit(x_fit3,y_fit3,1);
gerade_m = polyfit(x_fit_m,y_fit_m,1);


hold on
plot(x_fit1,y_fit1,'Color','[1.0 0.5 0.5]','LineStyle','none','Marker','x');
plot(x_fit1,polyval(gerade_1,x_fit1),'-r', 'LineWidth',2);

plot(x_fit2,y_fit2,'Color','[0.9 0.5 0.9]','LineStyle','none','Marker','x');
plot(x_fit2,polyval(gerade_2,x_fit2),'color','[0.8 0.2 0.9]', 'LineWidth',1.2);

plot(x_fit3,y_fit3,'Color','[0.8 0.8 1.0]','LineStyle','none','Marker','x');
plot(x_fit3,polyval(gerade_3,x_fit3),'Color','[0.1 0.1 1.0]', 'LineWidth',1.2);

%    plot(x_fit_m,y_fit_m,'Color','k','LineStyle','none','Marker','x');
plot(x_fit_m,polyval(gerade_m,x_fit_m),'-k','LineWidth',1.5);


% nicht berücksichtigte Werte
%       plot(x_nicht,y_nicht,'o')
plot(x_letzte, y_letzte,'Color','[1.0 0.77 0.77]','LineStyle','none','Marker','o');


%------steigung und y achsenabschnitt------------------------------------
m_1=gerade_1(1);
y0_1=gerade_1(2)  ;

m_2=gerade_2(1);
y0_2=gerade_2(2);

m_3=gerade_3(1);
y0_3=gerade_3(2);

m_m=gerade_m(1);
y0_m=gerade_m(2);



%-------Gütemaß------------------------------------------
RSquared_1 = corrcoef(y_fit1,polyval(gerade_1,x_fit1));
RSquared_1 = RSquared_1(1,2)  ;

RSquared_2 = corrcoef(y_fit2,polyval(gerade_2,x_fit2));
RSquared_2 = RSquared_2(1,2);

RSquared_3 = corrcoef(y_fit3,polyval(gerade_3,x_fit3));
RSquared_3 = RSquared_3(1,2);

RSquared_m = corrcoef(y_fit_m,polyval(gerade_m,x_fit_m));
RSquared_m = RSquared_m(1,2);



%-----beschriftung-----------------------------------------
geraden_besch_1 = sprintf('y1 = %1.0f x % +1.0f \nR^2 = %1.4f',m_1,y0_1,RSquared_1);
text(6,2200,geraden_besch_1,'Color','r');

geraden_besch_2 = sprintf('y2 = %1.0f x % +1.0f \nR^2 = %1.4f',m_2,y0_2,RSquared_2);
text(6,1800,geraden_besch_2,'Color','[0.8 0.2 0.9]');

geraden_besch_3 = sprintf('y3 = %1.0f x % +1.0f \nR^2 = %1.4f',m_3,y0_3,RSquared_3);
text(6,1400,geraden_besch_3,'Color','[0.1 0.1 1.0]');

geraden_besch_m = sprintf('y_m = %1.0f x % +1.0f \nR^2 = %1.4f',m_m,y0_m,RSquared_m);
text(6,1000,geraden_besch_m,'Color','k');



% in Tabelle schrieben
geraden_besch_1 = sprintf('y1 = %1.0f x % +1.0f , R^2 = %1.4f',m_1,y0_1,RSquared_1);
geraden_besch_2 = sprintf('y2 = %1.0f x % +1.0f , R^2 = %1.4f',m_2,y0_2,RSquared_2);
geraden_besch_3 = sprintf('y3 = %1.0f x % +1.0f , R^2 = %1.4f',m_3,y0_3,RSquared_3);
geraden_besch_m = sprintf('y_m = %1.0f x % +1.0f , R^2 = %1.4f',m_m,y0_m,RSquared_m);

warm(1) =	{geraden_besch_1};
freezing(1) =	{geraden_besch_2};
thawing(1) =	{geraden_besch_3};
mean(1) =	{geraden_besch_m};



%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                           Reihe2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(2)
set(gca,'Fontsize',10);
title('T- \rho - Diagramm Zyklus1 Reihe2 (Galvanisch)','Fontsize',10)
ylabel('Resistivity in [\Omega m]','Fontsize',10)
xlabel('Temperatur in [°C]','Fontsize',10)
grid on
axis([-6 12 150 2500])


%     plot(T1,Reihe2,'kx')
%     pause(0.1)
%     hold on
%
%     for i=a:b
%
%         plot(T1(i),Reihe2(i),'rx')
%
%         pause(0.1)
%     end
%
%


%------definiere die Abschnitte der linearen zuordnung (visuell)------
a=1;
b=99;
c=260;
d=260;
e=340;

%------datenabschnitte aus vektor holen------------------
%1=a:b und e:end
x_fit1 = T1(a:b)';
y_fit1 = Reihe2(a:b)';
x_letzte = T1(e:end)';
y_letzte = Reihe2(e:end)';
x_fit1 = [x_fit1 x_letzte];
y_fit1 = [y_fit1 y_letzte];

%2=b:c
x_fit2 = T1(b:c)';
y_fit2 = Reihe2(b:c)';
%nicht c:d
x_nicht = T1(c:d)';
y_nicht = Reihe2(c:d)';

%3=d:e
x_fit3 = T1(d:e)';
y_fit3 = Reihe2(d:e)';

%mittlere negative
%b:c + d:e
x_fit_m = T1(b:c)';
y_fit_m = Reihe2(b:c)';
x_fit_m = [x_fit_m T1(d:e)'];
y_fit_m = [y_fit_m Reihe2(d:e)'];


%alle
x_all_1 = [x_all_1 x_fit1];
x_all_2 = [x_all_2 x_fit2];
x_all_3 = [x_all_3 x_fit3];
x_all_m = [x_all_m x_fit_m];

y_all_1 = [y_all_1 y_fit1];
y_all_2 = [y_all_2 y_fit2];
y_all_3 = [y_all_3 y_fit3];
y_all_m = [y_all_m y_fit_m];





%------lösche Leerzeilen------------------------------
x_fit1(isnan(y_fit1)) = [];
y_fit1(isnan(y_fit1)) = [];
x_fit2(isnan(y_fit2)) = [];
y_fit2(isnan(y_fit2)) = [];
x_fit3(isnan(y_fit3)) = [];
y_fit3(isnan(y_fit3)) = [];
x_fit_m(isnan(y_fit_m)) = [];
y_fit_m(isnan(y_fit_m)) = [];




%------ausgleichsgerade errechenn------------------------------------
gerade_1 = polyfit(x_fit1,y_fit1,1);
gerade_2 = polyfit(x_fit2,y_fit2,1);
gerade_3 = polyfit(x_fit3,y_fit3,1);
gerade_m = polyfit(x_fit_m,y_fit_m,1);


hold on
plot(x_fit1,y_fit1,'Color','[1.0 0.5 0.5]','LineStyle','none','Marker','x');
plot(x_fit1,polyval(gerade_1,x_fit1),'-r', 'LineWidth',2);

plot(x_fit2,y_fit2,'Color','[0.9 0.5 0.9]','LineStyle','none','Marker','x');
plot(x_fit2,polyval(gerade_2,x_fit2),'color','[0.8 0.2 0.9]', 'LineWidth',1.2);

plot(x_fit3,y_fit3,'Color','[0.8 0.8 1.0]','LineStyle','none','Marker','x');
plot(x_fit3,polyval(gerade_3,x_fit3),'Color','[0.1 0.1 1.0]', 'LineWidth',1.2);

%    plot(x_fit_m,y_fit_m,'Color','k','LineStyle','none','Marker','x');
plot(x_fit_m,polyval(gerade_m,x_fit_m),'-k','LineWidth',1.5);


%         plot(x_nicht,y_nicht,'o')




%------steigung und y achsenabschnitt------------------------------------
m_1=gerade_1(1);
y0_1=gerade_1(2)  ;

m_2=gerade_2(1);
y0_2=gerade_2(2);

m_3=gerade_3(1);
y0_3=gerade_3(2);

m_m=gerade_m(1);
y0_m=gerade_m(2);



%-------Gütemaß------------------------------------------
RSquared_1 = corrcoef(y_fit1,polyval(gerade_1,x_fit1));
RSquared_1 = RSquared_1(1,2)  ;

RSquared_2 = corrcoef(y_fit2,polyval(gerade_2,x_fit2));
RSquared_2 = RSquared_2(1,2);

RSquared_3 = corrcoef(y_fit3,polyval(gerade_3,x_fit3));
RSquared_3 = RSquared_3(1,2);

RSquared_m = corrcoef(y_fit_m,polyval(gerade_m,x_fit_m));
RSquared_m = RSquared_m(1,2);



%-----beschriftung-----------------------------------------
geraden_besch_1 = sprintf('y1 = %1.0f x % +1.0f \nR^2 = %1.4f',m_1,y0_1,RSquared_1);
text(6,2200,geraden_besch_1,'Color','r');

geraden_besch_2 = sprintf('y2 = %1.0f x % +1.0f \nR^2 = %1.4f',m_2,y0_2,RSquared_2);
text(6,1800,geraden_besch_2,'Color','[0.8 0.2 0.9]');

geraden_besch_3 = sprintf('y3 = %1.0f x % +1.0f \nR^2 = %1.4f',m_3,y0_3,RSquared_3);
text(6,1400,geraden_besch_3,'Color','[0.1 0.1 1.0]');

geraden_besch_m = sprintf('y_m = %1.0f x % +1.0f \nR^2 = %1.4f',m_m,y0_m,RSquared_m);
text(6,1000,geraden_besch_m,'Color','k');



% in Tabelle schrieben
geraden_besch_1 = sprintf('y1 = %1.0f x % +1.0f , R^2 = %1.4f',m_1,y0_1,RSquared_1);
geraden_besch_2 = sprintf('y2 = %1.0f x % +1.0f , R^2 = %1.4f',m_2,y0_2,RSquared_2);
geraden_besch_3 = sprintf('y3 = %1.0f x % +1.0f , R^2 = %1.4f',m_3,y0_3,RSquared_3);
geraden_besch_m = sprintf('y_m = %1.0f x % +1.0f , R^2 = %1.4f',m_m,y0_m,RSquared_m);

warm(2) =	{geraden_besch_1};
freezing(2) =	{geraden_besch_2};
thawing(2) =	{geraden_besch_3};
mean(2) =	{geraden_besch_m};


%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                           Reihe3
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(3)
set(gca,'Fontsize',10);
title('T- \rho - Diagramm Zyklus1  Reihe3 (Klebeelektroden)','Fontsize',10)
ylabel('Resistivity in [\Omega m]','Fontsize',10)
xlabel('Temperatur in [°C]','Fontsize',10)
grid on
axis([-6 12 150 2500])


% %
%     plot(T1,Reihe3,'kx')
%     pause(0.1)
%     hold on
%
%     for i=1:718
%
%         plot(T1(i),Reihe3(i),'rx')
%           i
%         pause(0.2)
%     end
%
%

% Reihe3
%---------------------------------------------------------------------
%---------------------------------------------------------------------
%------definiere die Abschnitte der linearen zuordnung (visuell)------
a=1;
b=100;
c=240;
d=240;
e=350;

%------datenabschnitte aus vektor holen------------------
%1=a:b und e:end
x_fit1 = T1(a:b)';
y_fit1 = Reihe3(a:b)';
x_letzte = T1(e:end)';
y_letzte = Reihe3(e:end)';
% x_fit1 = [x_fit1 x_letzte];
% y_fit1 = [y_fit1 y_letzte];

%2=b:c
x_fit2 = T1(b:c)';
y_fit2 = Reihe3(b:c)';
%nicht c:d
x_nicht = T1(c:d)';
y_nicht = Reihe3(c:d)';

%3=d:e
x_fit3 = T1(d:e)';
y_fit3 = Reihe3(d:e)';

%mittlere negative
%b:c + d:e
x_fit_m = T1(b:c)';
y_fit_m = Reihe3(b:c)';
x_fit_m = [x_fit_m T1(d:e)'];
y_fit_m = [y_fit_m Reihe3(d:e)'];


%alle
x_all_1 = [x_all_1 x_fit1];
x_all_2 = [x_all_2 x_fit2];
x_all_3 = [x_all_3 x_fit3];
x_all_m = [x_all_m x_fit_m];

y_all_1 = [y_all_1 y_fit1];
y_all_2 = [y_all_2 y_fit2];
y_all_3 = [y_all_3 y_fit3];
y_all_m = [y_all_m y_fit_m];



%------lösche Leerzeilen------------------------------
x_fit1(isnan(y_fit1)) = [];
y_fit1(isnan(y_fit1)) = [];
x_fit2(isnan(y_fit2)) = [];
y_fit2(isnan(y_fit2)) = [];
x_fit3(isnan(y_fit3)) = [];
y_fit3(isnan(y_fit3)) = [];
x_fit_m(isnan(y_fit_m)) = [];
y_fit_m(isnan(y_fit_m)) = [];




%------ausgleichsgerade errechenn------------------------------------
gerade_1 = polyfit(x_fit1,y_fit1,1);
gerade_2 = polyfit(x_fit2,y_fit2,1);
gerade_3 = polyfit(x_fit3,y_fit3,1);
gerade_m = polyfit(x_fit_m,y_fit_m,1);


hold on
plot(x_fit1,y_fit1,'Color','[1.0 0.5 0.5]','LineStyle','none','Marker','x');
plot(x_fit1,polyval(gerade_1,x_fit1),'-r', 'LineWidth',2);

plot(x_fit2,y_fit2,'Color','[0.9 0.5 0.9]','LineStyle','none','Marker','x');
plot(x_fit2,polyval(gerade_2,x_fit2),'color','[0.8 0.2 0.9]', 'LineWidth',1.2);

plot(x_fit3,y_fit3,'Color','[0.8 0.8 1.0]','LineStyle','none','Marker','x');
plot(x_fit3,polyval(gerade_3,x_fit3),'Color','[0.1 0.1 1.0]', 'LineWidth',1.2);

%    plot(x_fit_m,y_fit_m,'Color','k','LineStyle','none','Marker','x');
plot(x_fit_m,polyval(gerade_m,x_fit_m),'-k','LineWidth',1.5);


% nicht berücksichtigte Werte
%       plot(x_nicht,y_nicht,'o')
plot(x_letzte, y_letzte,'Color','[1.0 0.5 0.5]','LineStyle','none','Marker','o');



%------steigung und y achsenabschnitt------------------------------------
m_1=gerade_1(1);
y0_1=gerade_1(2)  ;

m_2=gerade_2(1);
y0_2=gerade_2(2);

m_3=gerade_3(1);
y0_3=gerade_3(2);

m_m=gerade_m(1);
y0_m=gerade_m(2);



%-------Gütemaß------------------------------------------
RSquared_1 = corrcoef(y_fit1,polyval(gerade_1,x_fit1));
RSquared_1 = RSquared_1(1,2)  ;

RSquared_2 = corrcoef(y_fit2,polyval(gerade_2,x_fit2));
RSquared_2 = RSquared_2(1,2);

RSquared_3 = corrcoef(y_fit3,polyval(gerade_3,x_fit3));
RSquared_3 = RSquared_3(1,2);

RSquared_m = corrcoef(y_fit_m,polyval(gerade_m,x_fit_m));
RSquared_m = RSquared_m(1,2);



%-----beschriftung-----------------------------------------
geraden_besch_1 = sprintf('y1 = %1.0f x % +1.0f \nR^2 = %1.4f',m_1,y0_1,RSquared_1);
text(6,2200,geraden_besch_1,'Color','r');

geraden_besch_2 = sprintf('y2 = %1.0f x % +1.0f \nR^2 = %1.4f',m_2,y0_2,RSquared_2);
text(6,1800,geraden_besch_2,'Color','[0.8 0.2 0.9]');

geraden_besch_3 = sprintf('y3 = %1.0f x % +1.0f \nR^2 = %1.4f',m_3,y0_3,RSquared_3);
text(6,1400,geraden_besch_3,'Color','[0.1 0.1 1.0]');

geraden_besch_m = sprintf('y_m = %1.0f x % +1.0f \nR^2 = %1.4f',m_m,y0_m,RSquared_m);
text(6,1000,geraden_besch_m,'Color','k');



% in Tabelle schrieben
geraden_besch_1 = sprintf('y1 = %1.0f x % +1.0f , R^2 = %1.4f',m_1,y0_1,RSquared_1);
geraden_besch_2 = sprintf('y2 = %1.0f x % +1.0f , R^2 = %1.4f',m_2,y0_2,RSquared_2);
geraden_besch_3 = sprintf('y3 = %1.0f x % +1.0f , R^2 = %1.4f',m_3,y0_3,RSquared_3);
geraden_besch_m = sprintf('y_m = %1.0f x % +1.0f , R^2 = %1.4f',m_m,y0_m,RSquared_m);

warm(3) =	{geraden_besch_1};
freezing(3) =	{geraden_besch_2};
thawing(3) =	{geraden_besch_3};
mean(3) =	{geraden_besch_m};



%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                           Reihe4
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(4)
set(gca,'Fontsize',10);
title('T- \rho - Diagramm Zyklus1  Reihe4 (Galvanisch)','Fontsize',10)
ylabel('Resistivity in [\Omega m]','Fontsize',10)
xlabel('Temperatur in [°C]','Fontsize',10)
grid on
axis([-6 12 150 2500])


%     plot(T1,Reihe4,'kx')
%     pause(0.1)
%     hold on
%
%     for i=1:718
%
%         plot(T1(i),Reihe4(i),'rx')
%           i
%         pause(0.2)
%     end
%


% Reihe4
%---------------------------------------------------------------------
%---------------------------------------------------------------------
%------definiere die Abschnitte der linearen zuordnung (visuell)------
a=1;
b=90;
c=250;
d=250;
e=340;

%------datenabschnitte aus vektor holen------------------
%1=a:b und e:end
x_fit1 = T1(a:b)';
y_fit1 = Reihe4(a:b)';
x_letzte = T1(e:end)';
y_letzte = Reihe4(e:end)';
x_fit1 = [x_fit1 x_letzte];
y_fit1 = [y_fit1 y_letzte];

%2=b:c
x_fit2 = T1(b:c)';
y_fit2 = Reihe4(b:c)';
%nicht c:d
x_nicht = T1(c:d)';
y_nicht = Reihe4(c:d)';

%3=d:e
x_fit3 = T1(d:e)';
y_fit3 = Reihe4(d:e)';

%mittlere negative
%b:c + d:e
x_fit_m = T1(b:c)';
y_fit_m = Reihe4(b:c)';
x_fit_m = [x_fit_m T1(d:e)'];
y_fit_m = [y_fit_m Reihe4(d:e)'];


%alle
x_all_1 = [x_all_1 x_fit1];
x_all_2 = [x_all_2 x_fit2];
x_all_3 = [x_all_3 x_fit3];
x_all_m = [x_all_m x_fit_m];

y_all_1 = [y_all_1 y_fit1];
y_all_2 = [y_all_2 y_fit2];
y_all_3 = [y_all_3 y_fit3];
y_all_m = [y_all_m y_fit_m];



%------lösche Leerzeilen------------------------------
x_fit1(isnan(y_fit1)) = [];
y_fit1(isnan(y_fit1)) = [];
x_fit2(isnan(y_fit2)) = [];
y_fit2(isnan(y_fit2)) = [];
x_fit3(isnan(y_fit3)) = [];
y_fit3(isnan(y_fit3)) = [];
x_fit_m(isnan(y_fit_m)) = [];
y_fit_m(isnan(y_fit_m)) = [];




%------ausgleichsgerade errechenn------------------------------------
gerade_1 = polyfit(x_fit1,y_fit1,1);
gerade_2 = polyfit(x_fit2,y_fit2,1);
gerade_3 = polyfit(x_fit3,y_fit3,1);
gerade_m = polyfit(x_fit_m,y_fit_m,1);


hold on
plot(x_fit1,y_fit1,'Color','[1.0 0.5 0.5]','LineStyle','none','Marker','x');
plot(x_fit1,polyval(gerade_1,x_fit1),'-r', 'LineWidth',2);

plot(x_fit2,y_fit2,'Color','[0.9 0.5 0.9]','LineStyle','none','Marker','x');
plot(x_fit2,polyval(gerade_2,x_fit2),'color','[0.8 0.2 0.9]', 'LineWidth',1.2);

plot(x_fit3,y_fit3,'Color','[0.8 0.8 1.0]','LineStyle','none','Marker','x');
plot(x_fit3,polyval(gerade_3,x_fit3),'Color','[0.1 0.1 1.0]', 'LineWidth',1.2);

%    plot(x_fit_m,y_fit_m,'Color','k','LineStyle','none','Marker','x');
plot(x_fit_m,polyval(gerade_m,x_fit_m),'-k','LineWidth',1.5);


%         plot(x_nicht,y_nicht,'o')




%------steigung und y achsenabschnitt------------------------------------
m_1=gerade_1(1);
y0_1=gerade_1(2)  ;

m_2=gerade_2(1);
y0_2=gerade_2(2);

m_3=gerade_3(1);
y0_3=gerade_3(2);

m_m=gerade_m(1);
y0_m=gerade_m(2);



%-------Gütemaß------------------------------------------
RSquared_1 = corrcoef(y_fit1,polyval(gerade_1,x_fit1));
RSquared_1 = RSquared_1(1,2)  ;

RSquared_2 = corrcoef(y_fit2,polyval(gerade_2,x_fit2));
RSquared_2 = RSquared_2(1,2);

RSquared_3 = corrcoef(y_fit3,polyval(gerade_3,x_fit3));
RSquared_3 = RSquared_3(1,2);

RSquared_m = corrcoef(y_fit_m,polyval(gerade_m,x_fit_m));
RSquared_m = RSquared_m(1,2);



%-----beschriftung-----------------------------------------
geraden_besch_1 = sprintf('y1 = %1.0f x % +1.0f \nR^2 = %1.4f',m_1,y0_1,RSquared_1);
text(6,2200,geraden_besch_1,'Color','r');

geraden_besch_2 = sprintf('y2 = %1.0f x % +1.0f \nR^2 = %1.4f',m_2,y0_2,RSquared_2);
text(6,1800,geraden_besch_2,'Color','[0.8 0.2 0.9]');

geraden_besch_3 = sprintf('y3 = %1.0f x % +1.0f \nR^2 = %1.4f',m_3,y0_3,RSquared_3);
text(6,1400,geraden_besch_3,'Color','[0.1 0.1 1.0]');

geraden_besch_m = sprintf('y_m = %1.0f x % +1.0f \nR^2 = %1.4f',m_m,y0_m,RSquared_m);
text(6,1000,geraden_besch_m,'Color','k');



% in Tabelle schrieben
geraden_besch_1 = sprintf('y1 = %1.0f x % +1.0f , R^2 = %1.4f',m_1,y0_1,RSquared_1);
geraden_besch_2 = sprintf('y2 = %1.0f x % +1.0f , R^2 = %1.4f',m_2,y0_2,RSquared_2);
geraden_besch_3 = sprintf('y3 = %1.0f x % +1.0f , R^2 = %1.4f',m_3,y0_3,RSquared_3);
geraden_besch_m = sprintf('y_m = %1.0f x % +1.0f , R^2 = %1.4f',m_m,y0_m,RSquared_m);

warm(4) =	{geraden_besch_1};
freezing(4) =	{geraden_besch_2};
thawing(4) =	{geraden_besch_3};
mean(4) =	{geraden_besch_m};


%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                           Reihe5
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(5)
set(gca,'Fontsize',10);
title('T- \rho - Diagramm Zyklus1  Reihe5 (Klebeelektroden)','Fontsize',10)
ylabel('Resistivity in [\Omega m]','Fontsize',10)
xlabel('Temperatur in [°C]','Fontsize',10)
grid on

axis([-6 12 150 2500])

%     plot(T1,Reihe5,'kx')
%     pause(0.1)
%     hold on
%
%     for i=300:718
%
%         plot(T1(i),Reihe5(i),'ro')
%           i
%         pause(0.2)
%     end
%
%

% Reihe5
%---------------------------------------------------------------------
%---------------------------------------------------------------------
%------definiere die Abschnitte der linearen zuordnung (visuell)------
a=1;
b=100;
c=250;
d=250;
e=340;

%------datenabschnitte aus vektor holen------------------
%1=a:b und e:end
x_fit1 = T1(a:b)';
y_fit1 = Reihe5(a:b)';
x_letzte = T1(e:end)';
y_letzte = Reihe5(e:end)';
% x_fit1 = [x_fit1 x_letzte];
% y_fit1 = [y_fit1 y_letzte];

%2=b:c
x_fit2 = T1(b:c)';
y_fit2 = Reihe5(b:c)';
%nicht c:d
x_nicht = T1(c:d)';
y_nicht = Reihe5(c:d)';

%3=d:e
x_fit3 = T1(d:e)';
y_fit3 = Reihe5(d:e)';

%mittlere negative
%b:c + d:e
x_fit_m = T1(b:c)';
y_fit_m = Reihe5(b:c)';
x_fit_m = [x_fit_m T1(d:e)'];
y_fit_m = [y_fit_m Reihe5(d:e)'];


%alle
x_all_1 = [x_all_1 x_fit1];
x_all_2 = [x_all_2 x_fit2];
x_all_3 = [x_all_3 x_fit3];
x_all_m = [x_all_m x_fit_m];

y_all_1 = [y_all_1 y_fit1];
y_all_2 = [y_all_2 y_fit2];
y_all_3 = [y_all_3 y_fit3];
y_all_m = [y_all_m y_fit_m];




%------lösche Leerzeilen------------------------------
x_fit1(isnan(y_fit1)) = [];
y_fit1(isnan(y_fit1)) = [];
x_fit2(isnan(y_fit2)) = [];
y_fit2(isnan(y_fit2)) = [];
x_fit3(isnan(y_fit3)) = [];
y_fit3(isnan(y_fit3)) = [];
x_fit_m(isnan(y_fit_m)) = [];
y_fit_m(isnan(y_fit_m)) = [];




%------ausgleichsgerade errechenn------------------------------------
gerade_1 = polyfit(x_fit1,y_fit1,1);
gerade_2 = polyfit(x_fit2,y_fit2,1);
gerade_3 = polyfit(x_fit3,y_fit3,1);
gerade_m = polyfit(x_fit_m,y_fit_m,1);


hold on
plot(x_fit1,y_fit1,'Color','[1.0 0.5 0.5]','LineStyle','none','Marker','x');
plot(x_fit1,polyval(gerade_1,x_fit1),'-r', 'LineWidth',2);

plot(x_fit2,y_fit2,'Color','[0.9 0.5 0.9]','LineStyle','none','Marker','x');
plot(x_fit2,polyval(gerade_2,x_fit2),'color','[0.8 0.2 0.9]', 'LineWidth',1.2);

plot(x_fit3,y_fit3,'Color','[0.8 0.8 1.0]','LineStyle','none','Marker','x');
plot(x_fit3,polyval(gerade_3,x_fit3),'Color','[0.1 0.1 1.0]', 'LineWidth',1.2);

%    plot(x_fit_m,y_fit_m,'Color','k','LineStyle','none','Marker','x');
plot(x_fit_m,polyval(gerade_m,x_fit_m),'-k','LineWidth',1.5);

% nicht berücksichtigte Werte
%       plot(x_nicht,y_nicht,'o')
plot(x_letzte, y_letzte,'Color','[1.0 0.5 0.5]','LineStyle','none','Marker','o');



%------steigung und y achsenabschnitt------------------------------------
m_1=gerade_1(1);
y0_1=gerade_1(2)  ;

m_2=gerade_2(1);
y0_2=gerade_2(2);

m_3=gerade_3(1);
y0_3=gerade_3(2);

m_m=gerade_m(1);
y0_m=gerade_m(2);



%-------Gütemaß------------------------------------------
RSquared_1 = corrcoef(y_fit1,polyval(gerade_1,x_fit1));
RSquared_1 = RSquared_1(1,2)  ;

RSquared_2 = corrcoef(y_fit2,polyval(gerade_2,x_fit2));
RSquared_2 = RSquared_2(1,2);

RSquared_3 = corrcoef(y_fit3,polyval(gerade_3,x_fit3));
RSquared_3 = RSquared_3(1,2);

RSquared_m = corrcoef(y_fit_m,polyval(gerade_m,x_fit_m));
RSquared_m = RSquared_m(1,2);



%-----beschriftung-----------------------------------------
geraden_besch_1 = sprintf('y1 = %1.0f x % +1.0f \nR^2 = %1.4f',m_1,y0_1,RSquared_1);
text(6,2200,geraden_besch_1,'Color','r');

geraden_besch_2 = sprintf('y2 = %1.0f x % +1.0f \nR^2 = %1.4f',m_2,y0_2,RSquared_2);
text(6,1800,geraden_besch_2,'Color','[0.8 0.2 0.9]');

geraden_besch_3 = sprintf('y3 = %1.0f x % +1.0f \nR^2 = %1.4f',m_3,y0_3,RSquared_3);
text(6,1400,geraden_besch_3,'Color','[0.1 0.1 1.0]');

geraden_besch_m = sprintf('y_m = %1.0f x % +1.0f \nR^2 = %1.4f',m_m,y0_m,RSquared_m);
text(6,1000,geraden_besch_m,'Color','k');




% in Tabelle schrieben
geraden_besch_1 = sprintf('y1 = %1.0f x % +1.0f , R^2 = %1.4f',m_1,y0_1,RSquared_1);
geraden_besch_2 = sprintf('y2 = %1.0f x % +1.0f , R^2 = %1.4f',m_2,y0_2,RSquared_2);
geraden_besch_3 = sprintf('y3 = %1.0f x % +1.0f , R^2 = %1.4f',m_3,y0_3,RSquared_3);
geraden_besch_m = sprintf('y_m = %1.0f x % +1.0f , R^2 = %1.4f',m_m,y0_m,RSquared_m);

warm(5) =	{geraden_besch_1};
freezing(5) =	{geraden_besch_2};
thawing(5) =	{geraden_besch_3};
mean(5) =	{geraden_besch_m};




%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                           ALLLE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


figure(6)
set(gca,'Fontsize',10);
title('T- \rho - Diagramm Zyklus1  alle Reihen','Fontsize',10)
ylabel('Resistivity in [\Omega m]','Fontsize',10)
xlabel('Temperatur in [°C]','Fontsize',10)
grid on


%---------------------------------------------------------------------
%---------------------------------------------------------------------
%------definiere die Abschnitte der linearen zuordnung (visuell)------
a=1;
b=100;
c=250;
d=250;
e=340;


%alle
x_all_1 = [x_all_1 x_fit1];
x_all_2 = [x_all_2 x_fit2];
x_all_3 = [x_all_3 x_fit3];
x_all_m = [x_all_m x_fit_m];

y_all_1 = [y_all_1 y_fit1];
y_all_2 = [y_all_2 y_fit2];
y_all_3 = [y_all_3 y_fit3];
y_all_m = [y_all_m y_fit_m];




%------lösche Leerzeilen------------------------------
x_all_1(isnan(y_all_1)) = [];
y_all_1(isnan(y_all_1)) = [];

x_all_2(isnan(y_all_2)) = [];
y_all_2(isnan(y_all_2)) = [];

x_all_3(isnan(y_all_3)) = [];
y_all_3(isnan(y_all_3)) = [];

x_all_m(isnan(y_all_m)) = [];
y_all_m(isnan(y_all_m)) = [];




%------ausgleichsgerade errechenn------------------------------------
gerade_1 = polyfit(x_all_1,y_all_1,1);
gerade_2 = polyfit(x_all_2,y_all_2,1);
gerade_3 = polyfit(x_all_3,y_all_3,1);
gerade_m = polyfit(x_all_m,y_all_m,1);




hold on
plot(x_all_1,y_all_1,'Color','[1.0 0.5 0.5]','LineStyle','none','Marker','x');
plot(x_all_1,polyval(gerade_1,x_all_1),'-r', 'LineWidth',2);

plot(x_all_2,y_all_2,'Color','[0.9 0.5 0.9]','LineStyle','none','Marker','x');
plot(x_all_2,polyval(gerade_2,x_all_2),'Color','[0.8 0.2 0.9]', 'LineWidth',2);

plot(x_all_3,y_all_3,'Color','[0.8 0.8 1.0]','LineStyle','none','Marker','x');
plot(x_all_3,polyval(gerade_3,x_all_3),'Color','[0.1 0.1 1.0]', 'LineWidth',2);

%   plot(x_all_m,y_all_m,'Color','[1.0 0.5 0.5]','LineStyle','none','Marker','x');
plot(x_all_m,polyval(gerade_m,x_all_m),'-k', 'LineWidth',2);


%------steigung und y achsenabschnitt------------------------------------
m_1=gerade_1(1);
y0_1=gerade_1(2)  ;

m_2=gerade_2(1);
y0_2=gerade_2(2)  ;

m_3=gerade_3(1);
y0_3=gerade_3(2)  ;

m_m=gerade_m(1);
y0_m=gerade_m(2)  ;


%-------Gütemaß------------------------------------------
RSquared_1 = corrcoef(y_all_1,polyval(gerade_1,x_all_1));
RSquared_1 = RSquared_1(1,2)  ;

RSquared_2 = corrcoef(y_all_2,polyval(gerade_2,x_all_2));
RSquared_2 = RSquared_2(1,2)  ;

RSquared_3 = corrcoef(y_all_3,polyval(gerade_3,x_all_3));
RSquared_3 = RSquared_3(1,2)  ;

RSquared_m = corrcoef(y_all_m,polyval(gerade_m,x_all_m));
RSquared_m = RSquared_m(1,2)  ;



%-----beschriftung-----------------------------------------
geraden_besch_1 = sprintf('y1 = %1.0f x % +1.0f \nR^2 = %1.4f',m_1,y0_1,RSquared_1);
text(6,2200,geraden_besch_1,'Color','r');

geraden_besch_2 = sprintf('y2 = %1.0f x % +1.0f \nR^2 = %1.4f',m_2,y0_2,RSquared_2);
text(6,1800,geraden_besch_2,'Color','[0.8 0.2 0.9]');

geraden_besch_3 = sprintf('y3 = %1.0f x % +1.0f \nR^2 = %1.4f',m_3,y0_3,RSquared_3);
text(6,1400,geraden_besch_3,'Color','[0.1 0.1 1.0]');

geraden_besch_m = sprintf('y_m = %1.0f x % +1.0f \nR^2 = %1.4f',m_m,y0_m,RSquared_m);
text(6,1000,geraden_besch_m,'Color','k');




% plot(T1,Reihe1,'yo')
% plot(T1,Reihe2,'yo')
% plot(T1,Reihe3,'yo')
% plot(T1,Reihe4,'yo')
% plot(T1,Reihe5,'yo')



%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                           Tabelle und Grafik speichern
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


Tabelle = table(Nr, Zyclus, Reihe, warm, freezing, thawing, mean,...
    'VariableNames',{'Nr' 'Zyclus' 'Reihe' 'warm' 'freezing' 'thawing' 'mean'})

% writetable(Tabelle, 'Ausgleichsgerade_Zyclus1.txt')
% 
% print( figure(1), '-djpeg','-r400', 'C:\Users\Sebi\Dropbox\Studium\Semester 8\Bachelorarbeit\StoneMon\Grafiken\t-p-Kurven\Zyclus1-Reihe1.jpg');
% print( figure(2), '-djpeg','-r400', 'C:\Users\Sebi\Dropbox\Studium\Semester 8\Bachelorarbeit\StoneMon\Grafiken\t-p-Kurven\Zyclus1-Reihe2.jpg');
% print( figure(3), '-djpeg','-r400', 'C:\Users\Sebi\Dropbox\Studium\Semester 8\Bachelorarbeit\StoneMon\Grafiken\t-p-Kurven\Zyclus1-Reihe3.jpg');
% print( figure(4), '-djpeg','-r400', 'C:\Users\Sebi\Dropbox\Studium\Semester 8\Bachelorarbeit\StoneMon\Grafiken\t-p-Kurven\Zyclus1-Reihe4.jpg');
% print( figure(5), '-djpeg','-r400', 'C:\Users\Sebi\Dropbox\Studium\Semester 8\Bachelorarbeit\StoneMon\Grafiken\t-p-Kurven\Zyclus1-Reihe5.jpg');
% 

