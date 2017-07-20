%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%    SEBASTIAN AVERDUNK       %%%%%%%%%%
%%%%%%%%    03649086                 %%%%%%%%%%
%%%%%%%%    BSc. Umweltingenieur     %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%
clear all
load('C:\Users\Sebi\Dropbox\Studium\Semester 8\Bachelorarbeit\StoneMon\Daten\Auswertung\Zyclus3\workspace-zylclus3.mat')
scrsz = get(groot,'ScreenSize');
close all



%% in Übersichtsmatrix speichen:

    %    -> Zyclus | Reihe | +0°C   | freezing | thawing | mean    
    %    ->    1   |    1  | y=mx+t | y=mx+t   | y=mx+t  | y=mx+t
    %    -> ....
    
% Zyclus 1
Nr = [11;12;13;14;15];
Zyclus = [3;3;3;3;3];
Reihe = [1;2;3;4;5];
Absch1 =  {'';'';'';'';''};
Absch2 =  {'';'';'';'';''};  
Absch3 =  {'';'';'';'';''};
Absch4 =  {'';'';'';'';''};
Absch_m_pos =  {'';'';'';'';''};
Absch_m_neg =  {'';'';'';'';''};

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
title('T- \rho - Diagramm Zyklus3 Reihe1 (Klebeelektroden)','Fontsize',10)
ylabel('Resistivity in [\Omega m]','Fontsize',10)
xlabel('Temperatur in [°C]','Fontsize',10)
grid on

axis([-10 20 -2000 10000])


% 
%     plot(T1,Reihe1,'kx')
%     pause(0.1)
%     hold on
%         
%     for i=1:357
% 
%         plot(T1(i),Reihe1(i),'rx')
%           i
%         pause(0.2)
%     end
    
    
%------definiere die Abschnitte der linearen zuordnung (visuell)------
a=1;
b=88;
c=212;
d=c;
e=270;

%berechnung in externer funktion
[ m_1,y0_1,RSquared_1, m_2,y0_2,RSquared_2, m_3,y0_3,RSquared_3, m_4,y0_4,RSquared_4, m_m_pos,y0_m_pos,RSquared_m_pos, m_m_neg,y0_m_neg,RSquared_m_neg] = ausgleichsgerade(Reihe1, T1, a,b,c,d,e );
    
    
  %-----beschriftung-----------------------------------------  
    geraden_besch_1 = sprintf('y1 = %1.0f x % +1.0f \nR^2 = %1.4f',m_1,y0_1,RSquared_1);
    text(10,9000,geraden_besch_1,'Color','r');
    
    geraden_besch_2 = sprintf('y2 = %1.0f x % +1.0f \nR^2 = %1.4f',m_2,y0_2,RSquared_2);
    text(10,7500,geraden_besch_2,'Color','[0.8 0.2 0.9]');
    
    geraden_besch_3 = sprintf('y3 = %1.0f x % +1.0f \nR^2 = %1.4f',m_3,y0_3,RSquared_3);
    text(10,6000,geraden_besch_3,'Color','[0.1 0.1 1.0]');
        
    geraden_besch_4 = sprintf('y4 = %1.0f x % +1.0f \nR^2 = %1.4f',m_4,y0_4,RSquared_4);
    text(10,4500,geraden_besch_4,'Color','[0.2 0.2 0.5]');
    
    geraden_besch_m_pos = sprintf('y_mpos = %1.0f x % +1.0f \nR^2 = %1.4f',m_m_pos,y0_m_pos,RSquared_m_pos);
    text(10,3000,geraden_besch_m_pos,'Color','k'); 
       
    geraden_besch_m_neg = sprintf('y_mneg = %1.0f x % +1.0f \nR^2 = %1.4f',m_m_neg,y0_m_neg,RSquared_m_neg);
    text(10,1500,geraden_besch_m_neg,'Color','k'); 
    
    

    
  % in Tabelle schreiben
    geraden_besch_1 = sprintf('y1 = %1.0f x % +1.0f , R^2 = %1.4f',m_1,y0_1,RSquared_1);
    geraden_besch_2 = sprintf('y2 = %1.0f x % +1.0f , R^2 = %1.4f',m_2,y0_2,RSquared_2);
    geraden_besch_3 = sprintf('y3 = %1.0f x % +1.0f , R^2 = %1.4f',m_3,y0_3,RSquared_3);
   	geraden_besch_4 = sprintf('y3 = %1.0f x % +1.0f , R^2 = %1.4f',m_4,y0_4,RSquared_4);
    geraden_besch_m_pos = sprintf('y_mpos = %1.0f x % +1.0f , R^2 = %1.4f',m_m_pos,y0_m_pos,RSquared_m_pos);
    geraden_besch_m_neg = sprintf('y_mneg = %1.0f x % +1.0f , R^2 = %1.4f',m_m_neg,y0_m_neg,RSquared_m_neg);

    Absch1(1) =	{geraden_besch_1};
    Absch2(1) =	{geraden_besch_2};
    Absch3(1) =	{geraden_besch_3};
    Absch4(1) =	{geraden_besch_4};
    Absch_m_pos(1) =	{geraden_besch_m_pos};  
    Absch_m_neg(1) =	{geraden_besch_m_neg};
    
    

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
title('T- \rho - Diagramm Zyklus3 Reihe2 (Galvanisch)','Fontsize',10)
ylabel('Resistivity in [\Omega m]','Fontsize',10)
xlabel('Temperatur in [°C]','Fontsize',10)
grid on
axis([-10 20 -2000 10000])
% 
%     plot(T1,Reihe2,'kx')
%     pause(0.1)
%     hold on
%         
%     for i=1:357
% 
%         plot(T1(i),Reihe2(i),'rx')
%           i
%         pause(0.2)
%     end
    
    

%------definiere die Abschnitte der linearen zuordnung (visuell)------
a=1;
b=50;
c=237;
d=c;
e=260;

   
%berechnung in externer funktion
[ m_1,y0_1,RSquared_1, m_2,y0_2,RSquared_2, m_3,y0_3,RSquared_3, m_4,y0_4,RSquared_4, m_m_pos,y0_m_pos,RSquared_m_pos, m_m_neg,y0_m_neg,RSquared_m_neg] = ausgleichsgerade(Reihe2, T1, a,b,c,d,e );
     
    
  %-----beschriftung-----------------------------------------  
    geraden_besch_1 = sprintf('y1 = %1.0f x % +1.0f \nR^2 = %1.4f',m_1,y0_1,RSquared_1);
    text(10,9000,geraden_besch_1,'Color','r');
    
    geraden_besch_2 = sprintf('y2 = %1.0f x % +1.0f \nR^2 = %1.4f',m_2,y0_2,RSquared_2);
    text(10,7500,geraden_besch_2,'Color','[0.8 0.2 0.9]');
    
    geraden_besch_3 = sprintf('y3 = %1.0f x % +1.0f \nR^2 = %1.4f',m_3,y0_3,RSquared_3);
    text(10,6000,geraden_besch_3,'Color','[0.1 0.1 1.0]');
        
    geraden_besch_4 = sprintf('y4 = %1.0f x % +1.0f \nR^2 = %1.4f',m_4,y0_4,RSquared_4);
    text(10,4500,geraden_besch_4,'Color','[0.2 0.2 0.5]');
    
    geraden_besch_m_pos = sprintf('y_mpos = %1.0f x % +1.0f \nR^2 = %1.4f',m_m_pos,y0_m_pos,RSquared_m_pos);
    text(10,3000,geraden_besch_m_pos,'Color','k'); 
       
    geraden_besch_m_neg = sprintf('y_mneg = %1.0f x % +1.0f \nR^2 = %1.4f',m_m_neg,y0_m_neg,RSquared_m_neg);
    text(10,1500,geraden_besch_m_neg,'Color','k'); 
    
    
    
  % in Tabelle schreiben
    geraden_besch_1 = sprintf('y1 = %1.0f x % +1.0f , R^2 = %1.4f',m_1,y0_1,RSquared_1);
    geraden_besch_2 = sprintf('y2 = %1.0f x % +1.0f , R^2 = %1.4f',m_2,y0_2,RSquared_2);
    geraden_besch_3 = sprintf('y3 = %1.0f x % +1.0f , R^2 = %1.4f',m_3,y0_3,RSquared_3);
   	geraden_besch_4 = sprintf('y4 = %1.0f x % +1.0f , R^2 = %1.4f',m_4,y0_4,RSquared_4);
    geraden_besch_m_pos = sprintf('y_mpos = %1.0f x % +1.0f , R^2 = %1.4f',m_m_pos,y0_m_pos,RSquared_m_pos);
    geraden_besch_m_neg = sprintf('y_mneg = %1.0f x % +1.0f , R^2 = %1.4f',m_m_neg,y0_m_neg,RSquared_m_neg);

    Absch1(2) =	{geraden_besch_1};
    Absch2(2) =	{geraden_besch_2};
    Absch3(2) =	{geraden_besch_3};
    Absch4(2) =	{geraden_besch_4};
    Absch_m_pos(2) =	{geraden_besch_m_pos};  
    Absch_m_neg(2) =	{geraden_besch_m_neg};
    
    


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
title('T- \rho - Diagramm Zyklus3 Reihe3 (Klebeelektroden)','Fontsize',10)
ylabel('Resistivity in [\Omega m]','Fontsize',10)
xlabel('Temperatur in [°C]','Fontsize',10)
grid on
axis([-10 20 -2000 10000])


%     plot(T1,Reihe3,'kx')
%     pause(0.1)
%     hold on
%         
%     for i=1:357
% 
%         plot(T1(i),Reihe3(i),'rx')
%           i
%         pause(0.2)
%     end
    
    

% Reihe3
%---------------------------------------------------------------------
%---------------------------------------------------------------------
%------definiere die Abschnitte der linearen zuordnung (visuell)------
a=1;
b=70;
c=220;
d=c;
e=260;

%berechnung in externer funktion
[ m_1,y0_1,RSquared_1, m_2,y0_2,RSquared_2, m_3,y0_3,RSquared_3, m_4,y0_4,RSquared_4, m_m_pos,y0_m_pos,RSquared_m_pos, m_m_neg,y0_m_neg,RSquared_m_neg] = ausgleichsgerade(Reihe3, T1, a,b,c,d,e );
     
    
  %-----beschriftung-----------------------------------------  
    geraden_besch_1 = sprintf('y1 = %1.0f x % +1.0f \nR^2 = %1.4f',m_1,y0_1,RSquared_1);
    text(10,9000,geraden_besch_1,'Color','r');
    
    geraden_besch_2 = sprintf('y2 = %1.0f x % +1.0f \nR^2 = %1.4f',m_2,y0_2,RSquared_2);
    text(10,7500,geraden_besch_2,'Color','[0.8 0.2 0.9]');
    
    geraden_besch_3 = sprintf('y3 = %1.0f x % +1.0f \nR^2 = %1.4f',m_3,y0_3,RSquared_3);
    text(10,6000,geraden_besch_3,'Color','[0.1 0.1 1.0]');
        
    geraden_besch_4 = sprintf('y4 = %1.0f x % +1.0f \nR^2 = %1.4f',m_4,y0_4,RSquared_4);
    text(10,4500,geraden_besch_4,'Color','[0.2 0.2 0.5]');
    
    geraden_besch_m_pos = sprintf('y_mpos = %1.0f x % +1.0f \nR^2 = %1.4f',m_m_pos,y0_m_pos,RSquared_m_pos);
    text(10,3000,geraden_besch_m_pos,'Color','k'); 
       
    geraden_besch_m_neg = sprintf('y_mneg = %1.0f x % +1.0f \nR^2 = %1.4f',m_m_neg,y0_m_neg,RSquared_m_neg);
    text(10,1500,geraden_besch_m_neg,'Color','k'); 
    
    

    
  % in Tabelle schreiben
    geraden_besch_1 = sprintf('y1 = %1.0f x % +1.0f , R^2 = %1.4f',m_1,y0_1,RSquared_1);
    geraden_besch_2 = sprintf('y2 = %1.0f x % +1.0f , R^2 = %1.4f',m_2,y0_2,RSquared_2);
    geraden_besch_3 = sprintf('y3 = %1.0f x % +1.0f , R^2 = %1.4f',m_3,y0_3,RSquared_3);
   	geraden_besch_4 = sprintf('y4 = %1.0f x % +1.0f , R^2 = %1.4f',m_4,y0_4,RSquared_4);
    geraden_besch_m_pos = sprintf('y_mpos = %1.0f x % +1.0f , R^2 = %1.4f',m_m_pos,y0_m_pos,RSquared_m_pos);
    geraden_besch_m_neg = sprintf('y_mneg = %1.0f x % +1.0f , R^2 = %1.4f',m_m_neg,y0_m_neg,RSquared_m_neg);

    Absch1(3) =	{geraden_besch_1};
    Absch2(3) =	{geraden_besch_2};
    Absch3(3) =	{geraden_besch_3};
    Absch4(3) =	{geraden_besch_4};
    Absch_m_pos(3) =	{geraden_besch_m_pos};  
    Absch_m_neg(3) =	{geraden_besch_m_neg};



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
title('T- \rho - Diagramm Zyklus3 Reihe4 (Galvanisch)','Fontsize',10)
ylabel('Resistivity in [\Omega m]','Fontsize',10)
xlabel('Temperatur in [°C]','Fontsize',10)
grid on

axis([-10 20 -2000 10000])
%     plot(T1,Reihe4,'kx')
%     pause(0.1)
%     hold on
%         
%     for i=1:357
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
b=30;
c=220;
d=c;
e=260;
%berechnung in externer funktion13,
[ m_1,y0_1,RSquared_1, m_2,y0_2,RSquared_2, m_3,y0_3,RSquared_3, m_4,y0_4,RSquared_4, m_m_pos,y0_m_pos,RSquared_m_pos, m_m_neg,y0_m_neg,RSquared_m_neg] = ausgleichsgerade(Reihe4, T1, a,b,c,d,e );
     
    
    
  %-----beschriftung-----------------------------------------  
    geraden_besch_1 = sprintf('y1 = %1.0f x % +1.0f \nR^2 = %1.4f',m_1,y0_1,RSquared_1);
    text(10,9000,geraden_besch_1,'Color','r');
    
    geraden_besch_2 = sprintf('y2 = %1.0f x % +1.0f \nR^2 = %1.4f',m_2,y0_2,RSquared_2);
    text(10,7500,geraden_besch_2,'Color','[0.8 0.2 0.9]');
    
    geraden_besch_3 = sprintf('y3 = %1.0f x % +1.0f \nR^2 = %1.4f',m_3,y0_3,RSquared_3);
    text(10,6000,geraden_besch_3,'Color','[0.1 0.1 1.0]');
        
    geraden_besch_4 = sprintf('y4 = %1.0f x % +1.0f \nR^2 = %1.4f',m_4,y0_4,RSquared_4);
    text(10,4500,geraden_besch_4,'Color','[0.2 0.2 0.5]');
    
    geraden_besch_m_pos = sprintf('y_mpos = %1.0f x % +1.0f \nR^2 = %1.4f',m_m_pos,y0_m_pos,RSquared_m_pos);
    text(10,3000,geraden_besch_m_pos,'Color','k'); 
       
    geraden_besch_m_neg = sprintf('y_mneg = %1.0f x % +1.0f \nR^2 = %1.4f',m_m_neg,y0_m_neg,RSquared_m_neg);
    text(10,1500,geraden_besch_m_neg,'Color','k'); 
    

    
  % in Tabelle schreiben
    geraden_besch_1 = sprintf('y1 = %1.0f x % +1.0f , R^2 = %1.4f',m_1,y0_1,RSquared_1);
    geraden_besch_2 = sprintf('y2 = %1.0f x % +1.0f , R^2 = %1.4f',m_2,y0_2,RSquared_2);
    geraden_besch_3 = sprintf('y3 = %1.0f x % +1.0f , R^2 = %1.4f',m_3,y0_3,RSquared_3);
   	geraden_besch_4 = sprintf('y4 = %1.0f x % +1.0f , R^2 = %1.4f',m_4,y0_4,RSquared_4);
    geraden_besch_m_pos = sprintf('y_mpos = %1.0f x % +1.0f , R^2 = %1.4f',m_m_pos,y0_m_pos,RSquared_m_pos);
    geraden_besch_m_neg = sprintf('y_mneg = %1.0f x % +1.0f , R^2 = %1.4f',m_m_neg,y0_m_neg,RSquared_m_neg);

    Absch1(4) =	{geraden_besch_1};
    Absch2(4) =	{geraden_besch_2};
    Absch3(4) =	{geraden_besch_3};
    Absch4(4) =	{geraden_besch_4};
    Absch_m_pos(4) =	{geraden_besch_m_pos};  
    Absch_m_neg(4) =	{geraden_besch_m_neg};


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
title('T- \rho - Diagramm Zyklus3 Reihe5 (Klebeelektroden)','Fontsize',10)
ylabel('Resistivity in [\Omega m]','Fontsize',10)
xlabel('Temperatur in [°C]','Fontsize',10)
grid on

axis([-10 20 -2000 10000])
%     plot(T1,Reihe5,'kx')
%     pause(0.1)
%     hold on
%         
%     for i=1:357
% 
%         plot(T1(i),Reihe5(i),'rx')
%           i
%         pause(0.2)
%     end
%     
    

% Reihe5
%---------------------------------------------------------------------
%---------------------------------------------------------------------
%------definiere die Abschnitte der linearen zuordnung (visuell)------
a=1;
b=45;
c=160;
d=c;
e=270;

%berechnung in externer funktion
[ m_1,y0_1,RSquared_1, m_2,y0_2,RSquared_2, m_3,y0_3,RSquared_3, m_4,y0_4,RSquared_4, m_m_pos,y0_m_pos,RSquared_m_pos, m_m_neg,y0_m_neg,RSquared_m_neg] = ausgleichsgerade(Reihe5, T1, a,b,c,d,e );
     
    
  %-----beschriftung-----------------------------------------  
    geraden_besch_1 = sprintf('y1 = %1.0f x % +1.0f \nR^2 = %1.4f',m_1,y0_1,RSquared_1);
    text(10,9000,geraden_besch_1,'Color','r');
    
    geraden_besch_2 = sprintf('y2 = %1.0f x % +1.0f \nR^2 = %1.4f',m_2,y0_2,RSquared_2);
    text(10,7500,geraden_besch_2,'Color','[0.8 0.2 0.9]');
    
    geraden_besch_3 = sprintf('y3 = %1.0f x % +1.0f \nR^2 = %1.4f',m_3,y0_3,RSquared_3);
    text(10,6000,geraden_besch_3,'Color','[0.1 0.1 1.0]');
        
    geraden_besch_4 = sprintf('y4 = %1.0f x % +1.0f \nR^2 = %1.4f',m_4,y0_4,RSquared_4);
    text(10,4500,geraden_besch_4,'Color','[0.2 0.2 0.5]');
    
    geraden_besch_m_pos = sprintf('y_mpos = %1.0f x % +1.0f \nR^2 = %1.4f',m_m_pos,y0_m_pos,RSquared_m_pos);
    text(10,3000,geraden_besch_m_pos,'Color','k'); 
       
    geraden_besch_m_neg = sprintf('y_mneg = %1.0f x % +1.0f \nR^2 = %1.4f',m_m_neg,y0_m_neg,RSquared_m_neg);
    text(10,1500,geraden_besch_m_neg,'Color','k'); 
    

    
  % in Tabelle schreiben
    geraden_besch_1 = sprintf('y1 = %1.0f x % +1.0f , R^2 = %1.4f',m_1,y0_1,RSquared_1);
    geraden_besch_2 = sprintf('y2 = %1.0f x % +1.0f , R^2 = %1.4f',m_2,y0_2,RSquared_2);
    geraden_besch_3 = sprintf('y3 = %1.0f x % +1.0f , R^2 = %1.4f',m_3,y0_3,RSquared_3);
   	geraden_besch_4 = sprintf('y4 = %1.0f x % +1.0f , R^2 = %1.4f',m_4,y0_4,RSquared_4);
    geraden_besch_m_pos = sprintf('y_mpos = %1.0f x % +1.0f , R^2 = %1.4f',m_m_pos,y0_m_pos,RSquared_m_pos);
    geraden_besch_m_neg = sprintf('y_mneg = %1.0f x % +1.0f , R^2 = %1.4f',m_m_neg,y0_m_neg,RSquared_m_neg);

    Absch1(5) =	{geraden_besch_1};
    Absch2(5) =	{geraden_besch_2};
    Absch3(5) =	{geraden_besch_3};
    Absch4(5) =	{geraden_besch_4};
    Absch_m_pos(5) =	{geraden_besch_m_pos};  
    Absch_m_neg(5) =	{geraden_besch_m_neg};





%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                           Tabelle
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


Tabelle = table(Nr, Zyclus, Reihe, Absch1, Absch2, Absch3, Absch4, Absch_m_pos, Absch_m_neg,...
    'VariableNames',{'Nr' 'Zyclus' 'Reihe' 'Absch1' 'Absch2' 'Absch3' 'Absch4' 'meanpos' 'meanneg'})

writetable(Tabelle, 'Ausgleichsgerade_Zyclus3.txt')

        
print( figure(1), '-djpeg','-r400', 'C:\Users\Sebi\Dropbox\Studium\Semester 8\Bachelorarbeit\StoneMon\Grafiken\t-p-Kurven\Zyclus3-Reihe1.jpg');
print( figure(2), '-djpeg','-r400', 'C:\Users\Sebi\Dropbox\Studium\Semester 8\Bachelorarbeit\StoneMon\Grafiken\t-p-Kurven\Zyclus3-Reihe2.jpg');
print( figure(3), '-djpeg','-r400', 'C:\Users\Sebi\Dropbox\Studium\Semester 8\Bachelorarbeit\StoneMon\Grafiken\t-p-Kurven\Zyclus3-Reihe3.jpg');
print( figure(4), '-djpeg','-r400', 'C:\Users\Sebi\Dropbox\Studium\Semester 8\Bachelorarbeit\StoneMon\Grafiken\t-p-Kurven\Zyclus3-Reihe4.jpg');
print( figure(5), '-djpeg','-r400', 'C:\Users\Sebi\Dropbox\Studium\Semester 8\Bachelorarbeit\StoneMon\Grafiken\t-p-Kurven\Zyclus3-Reihe5.jpg');
 
    
    