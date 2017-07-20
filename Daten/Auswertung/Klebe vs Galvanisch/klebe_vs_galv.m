%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%    SEBASTIAN AVERDUNK       %%%%%%%%%%
%%%%%%%%    03649086                 %%%%%%%%%%
%%%%%%%%    BSc. Umweltingenieur     %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%
clear all
load('alle reihen.mat')

%Zyclus1
K_Temperatur_absch1     =   [ T1(1:190)'  	T1(1:100)'         T1(1:100)'    	]	;
Klebe_absch1            =   [ Reihe1(1:190)'	Reihe3(1:100)'    Reihe5(1:100)'	]	;
G_Temperatur_absch1     =   [T1(1:99)'    	T1(1:90)'          	]	;
Galvanisch_absch1       =   [  Reihe2(1:99)'	Reihe4(1:90)'        ]	;

K_Temperatur_absch2     =   [ T1(190:260)'       T1(100:240)'        T1(100:240)'    	]	;
Klebe_absch2            =   [ Reihe1(190:260)'	Reihe3(100:240)'    Reihe5(100:240)'	]	;
G_Temperatur_absch2     =   [ T1(99:260)'    	T1(90:250)'          	]	;
Galvanisch_absch2       =   [Reihe2(99:260)'	Reihe4(90:250)'        ]	;

K_Temperatur_absch3     =   [ T1(260:340)'       T1(240:350)'        T1(250:340)'      	]	;
Klebe_absch3            =   [ Reihe1(260:340)'	Reihe3(240:350)'    Reihe5(250:340)'	]	;
G_Temperatur_absch3     =    [ T1(260:340)'    	T1(250:340)'          	]	;
Galvanisch_absch3       =  [ Reihe2(260:340)'	Reihe4(250:340)'        ]	;

K_Temperatur_absch4     =   [ T1(340:end)'       T1(350:end)'        T1(340:end)'      	]	;
Klebe_absch4            =   [ Reihe1(340:end)'	Reihe3(350:end)'    Reihe5(340:end)'	]	;
G_Temperatur_absch4     =   [ T1(340:end)'   	T1(340:end)'          	]	;
Galvanisch_absch4       =   [ Reihe2(340:end)'	Reihe4(340:end)'        ]	;

%Zyclus2
Z2_K_Temperatur_absch1     =   [ T2_1(1:100)'  	T2_1(1:90)'         T2_1(1:90)'    	]	;
Z2_Klebe_absch1            =   [ Reihe2_1(1:100)'	Reihe2_3(1:90)'    Reihe2_5(1:90)'	]	;
Z2_G_Temperatur_absch1     =   [T2_1(1:90)'    	T2_1(1:90)'          	]	;
Z2_Galvanisch_absch1       =   [  Reihe2_2(1:90)'	Reihe2_4(1:90)'        ]	;

Z2_K_Temperatur_absch2     =   [ T2_1(100:157)'       T2_1(90:160)'        T2_1(90:160)'    	]	;
Z2_Klebe_absch2            =   [ Reihe2_1(100:157)'	Reihe2_3(90:160)'    Reihe2_5(90:160)'	]	;
Z2_G_Temperatur_absch2     =   [ T2_1(90:160)'    	T2_1(90:160)'          	]	;
Z2_Galvanisch_absch2       =   [Reihe2_2(90:160)'	Reihe2_4(90:160)'        ]	;

Z2_K_Temperatur_absch3     =   [ T2_1(157:229)'         T2_1(160:220)'        T2_1(160:200)'      	]	;
Z2_Klebe_absch3            =   [ Reihe2_1(157:229)'     Reihe2_3(160:220)'    Reihe2_5(160:200)'	]	;
Z2_G_Temperatur_absch3     =   [ T2_1(160:220)'         T2_1(160:200)'          	]	;
Z2_Galvanisch_absch3       =   [ Reihe2_2(160:220)'     Reihe2_4(160:200)'        ]	;

Z2_K_Temperatur_absch4     =   [ T2_1(229:end)'       T2_1(220:end)'        T2_1(200:end)'      	]	;
Z2_Klebe_absch4            =   [ Reihe2_1(229:end)'	Reihe2_3(220:end)'    Reihe2_5(200:end)'	]	;
Z2_G_Temperatur_absch4     =   [ T2_1(220:end)'   	T2_1(200:end)'          	]	;
Z2_Galvanisch_absch4       =   [ Reihe2_2(220:end)'	Reihe2_4(200:end)'        ]	;

%Zyclus3
Z3_K_Temperatur_absch1     =   [ T3_1(1:88)'  	T3_1(1:70)'         T3_1(1:45)'    	]	;
Z3_Klebe_absch1            =   [ Reihe3_1(1:88)'	Reihe3_3(1:70)'    Reihe3_5(1:45)'	]	;
Z3_G_Temperatur_absch1     =   [T3_1(1:50)'    	T3_1(1:30)'          	]	;
Z3_Galvanisch_absch1       =   [  Reihe3_2(1:50)'	Reihe3_4(1:30)'        ]	;

Z3_K_Temperatur_absch2     =   [ T3_1(88:212)'       T3_1(70:220)'        T3_1(45:160)'    	]	;
Z3_Klebe_absch2            =   [ Reihe3_1(88:212)'	Reihe3_3(70:220)'    Reihe3_5(45:160)'	]	;
Z3_G_Temperatur_absch2     =   [ T3_1(50:237)'    	T3_1(30:220)'          	]	;
Z3_Galvanisch_absch2       =   [Reihe3_2(50:237)'	Reihe3_4(30:220)'        ]	;

Z3_K_Temperatur_absch3     =   [ T3_1(212:270)'       T3_1(220:260)'        T3_1(160:270)'      	]	;
Z3_Klebe_absch3            =   [ Reihe3_1(212:270)'	Reihe3_3(220:260)'    Reihe3_5(160:270)'	]	;
Z3_G_Temperatur_absch3     =    [ T3_1(237:260)'    	T3_1(220:260)'          	]	;
Z3_Galvanisch_absch3       =  [ Reihe3_2(237:260)'	Reihe3_4(220:260)'        ]	;

Z3_K_Temperatur_absch4     =   [ T3_1(270:end)'       T3_1(260:end)'        T3_1(270:end)'      	]	;
Z3_Klebe_absch4            =   [ Reihe3_1(270:end)'	Reihe3_3(260:end)'    Reihe3_5(270:end)'	]	;
Z3_G_Temperatur_absch4     =   [ T3_1(260:end)'   	T3_1(260:end)'          	]	;
Z3_Galvanisch_absch4       =   [ Reihe3_2(260:end)'	Reihe3_4(260:end)'        ]	;






     %%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    figure(6)
    
    
    
    k=2200;
    
    subplot(3,2,1)
    set(gca,'Fontsize',10);
    title('T- \rho - Diagramm Zyklus1 (Klebeelektroden)','Fontsize',8)
    ylabel('Resistivity in [\Omega m]','Fontsize',10)
    xlabel('Temperatur in [°C]','Fontsize',10)
    grid on
    
    hold on

    plot(K_Temperatur_absch1,Klebe_absch1,'LineStyle','none','Color','[1.0 0.5 0.5]','Marker','x')
    plot(K_Temperatur_absch2,Klebe_absch2,'LineStyle','none','Color','[0.9 0.5 0.9]','Marker','x')
    plot(K_Temperatur_absch3,Klebe_absch3,'LineStyle','none','Color','[0.8 0.8 1.0]','Marker','x')
    plot(K_Temperatur_absch4,Klebe_absch4,'LineStyle','none','Color','[0.2 0.2 0.5]','Marker','x')
        axis([-7 12 0 k])
    [ m_1,y0_1,RSquared_1, m_2,y0_2,RSquared_2, m_3,y0_3,RSquared_3, m_4,y0_4,RSquared_4, m_m_pos,y0_m_pos,RSquared_m_pos, m_m_neg,y0_m_neg,RSquared_m_neg] = ausgleichsgerade(K_Temperatur_absch1,K_Temperatur_absch2, K_Temperatur_absch3, K_Temperatur_absch4, Klebe_absch1, Klebe_absch2, Klebe_absch3, Klebe_absch4);
    
    geraden_besch_1 = sprintf('y1 = %1.0f x % +1.0f , R^2 = %1.4f',m_1,y0_1,RSquared_1);
    geraden_besch_2 = sprintf('y2 = %1.0f x % +1.0f , R^2 = %1.4f',m_2,y0_2,RSquared_2);
    geraden_besch_3 = sprintf('y3 = %1.0f x % +1.0f , R^2 = %1.4f',m_3,y0_3,RSquared_3);
   	geraden_besch_4 = sprintf('y3 = %1.0f x % +1.0f , R^2 = %1.4f',m_4,y0_4,RSquared_4);
    geraden_besch_m_pos = sprintf('y_mpos = %1.0f x % +1.0f , R^2 = %1.4f',m_m_pos,y0_m_pos,RSquared_m_pos);
    geraden_besch_m_neg = sprintf('y_mneg = %1.0f x % +1.0f , R^2 = %1.4f',m_m_neg,y0_m_neg,RSquared_m_neg);
        
    k_Absch1(1) =	{geraden_besch_1};
    k_Absch_m_neg(1) =	{geraden_besch_m_neg};
    
    subplot(3,2,2)
    set(gca,'Fontsize',10);
        title('T- \rho - Diagramm Zyklus1 (Glavanisch)','Fontsize',8)
    ylabel('Resistivity in [\Omega m]','Fontsize',10)
    xlabel('Temperatur in [°C]','Fontsize',10)
    grid on
    hold on
    axis([-7 12 0 k])
    plot(G_Temperatur_absch1,Galvanisch_absch1,'LineStyle','none','Color','[1.0 0.5 0.5]','Marker','x')
    plot(G_Temperatur_absch2,Galvanisch_absch2,'LineStyle','none','Color','[0.9 0.5 0.9]','Marker','x')
    plot(G_Temperatur_absch3,Galvanisch_absch3,'LineStyle','none','Color','[0.8 0.8 1.0]','Marker','x')
    plot(G_Temperatur_absch4,Galvanisch_absch4,'LineStyle','none','Color','[0.2 0.2 0.5]','Marker','x')
    
    %berechnung in externer funktion
    
    [ m_1,y0_1,RSquared_1, m_2,y0_2,RSquared_2, m_3,y0_3,RSquared_3, m_4,y0_4,RSquared_4, m_m_pos,y0_m_pos,RSquared_m_pos, m_m_neg,y0_m_neg,RSquared_m_neg] = ausgleichsgerade(G_Temperatur_absch1, G_Temperatur_absch2, G_Temperatur_absch3, G_Temperatur_absch4, Galvanisch_absch1, Galvanisch_absch2, Galvanisch_absch3, Galvanisch_absch4);
    
     
    geraden_besch_1 = sprintf('y1 = %1.0f x % +1.0f , R^2 = %1.4f',m_1,y0_1,RSquared_1);
    geraden_besch_2 = sprintf('y2 = %1.0f x % +1.0f , R^2 = %1.4f',m_2,y0_2,RSquared_2);
    geraden_besch_3 = sprintf('y3 = %1.0f x % +1.0f , R^2 = %1.4f',m_3,y0_3,RSquared_3);
   	geraden_besch_4 = sprintf('y3 = %1.0f x % +1.0f , R^2 = %1.4f',m_4,y0_4,RSquared_4);
    geraden_besch_m_pos = sprintf('y_mpos = %1.0f x % +1.0f , R^2 = %1.4f',m_m_pos,y0_m_pos,RSquared_m_pos);
    geraden_besch_m_neg = sprintf('y_mneg = %1.0f x % +1.0f , R^2 = %1.4f',m_m_neg,y0_m_neg,RSquared_m_neg);
    
    g_Absch1(1) =	{geraden_besch_1};
    g_Absch_m_neg(1) =	{geraden_besch_m_neg};
   
    
    subplot(3,2,3)
    set(gca,'Fontsize',10);
    title('T- \rho - Diagramm Zyklus2 (Klebeelektroden)','Fontsize',8)
    ylabel('Resistivity in [\Omega m]','Fontsize',10)
    xlabel('Temperatur in [°C]','Fontsize',10)
    grid on
    hold on
    axis([-7 12 0 k])
    plot(Z2_K_Temperatur_absch1,Z2_Klebe_absch1,'LineStyle','none','Color','[1.0 0.5 0.5]','Marker','x')
    plot(Z2_K_Temperatur_absch2,Z2_Klebe_absch2,'LineStyle','none','Color','[0.9 0.5 0.9]','Marker','x')
    plot(Z2_K_Temperatur_absch3,Z2_Klebe_absch3,'LineStyle','none','Color','[0.8 0.8 1.0]','Marker','x')
    plot(Z2_K_Temperatur_absch4,Z2_Klebe_absch4,'LineStyle','none','Color','[0.2 0.2 0.5]','Marker','x')
    
    [ m_1,y0_1,RSquared_1, m_2,y0_2,RSquared_2, m_3,y0_3,RSquared_3, m_4,y0_4,RSquared_4, m_m_pos,y0_m_pos,RSquared_m_pos, m_m_neg,y0_m_neg,RSquared_m_neg] = ausgleichsgerade(Z2_K_Temperatur_absch1, Z2_K_Temperatur_absch2, Z2_K_Temperatur_absch3, Z2_K_Temperatur_absch4, Z2_Klebe_absch1, Z2_Klebe_absch2, Z2_Klebe_absch3, Z2_Klebe_absch4);
    
    geraden_besch_1 = sprintf('y1 = %1.0f x % +1.0f , R^2 = %1.4f',m_1,y0_1,RSquared_1);
    geraden_besch_2 = sprintf('y2 = %1.0f x % +1.0f , R^2 = %1.4f',m_2,y0_2,RSquared_2);
    geraden_besch_3 = sprintf('y3 = %1.0f x % +1.0f , R^2 = %1.4f',m_3,y0_3,RSquared_3);
   	geraden_besch_4 = sprintf('y3 = %1.0f x % +1.0f , R^2 = %1.4f',m_4,y0_4,RSquared_4);
    geraden_besch_m_pos = sprintf('y_mpos = %1.0f x % +1.0f , R^2 = %1.4f',m_m_pos,y0_m_pos,RSquared_m_pos);
    geraden_besch_m_neg = sprintf('y_mneg = %1.0f x % +1.0f , R^2 = %1.4f',m_m_neg,y0_m_neg,RSquared_m_neg);
    
         k_Absch1(2) =	{geraden_besch_1};
    k_Absch_m_neg(2) =	{geraden_besch_m_neg};
        
    
    subplot(3,2,4)
    set(gca,'Fontsize',10);
    title('T- \rho - Diagramm Zyklus2 (Glavanisch)','Fontsize',8)
    ylabel('Resistivity in [\Omega m]','Fontsize',10)
    xlabel('Temperatur in [°C]','Fontsize',10)
    grid on
    hold on
    axis([-7 12 0 k])
    plot(Z2_G_Temperatur_absch1,Z2_Galvanisch_absch1,'LineStyle','none','Color','[1.0 0.5 0.5]','Marker','x')
    plot(Z2_G_Temperatur_absch2,Z2_Galvanisch_absch2,'LineStyle','none','Color','[0.9 0.5 0.9]','Marker','x')
    plot(Z2_G_Temperatur_absch3,Z2_Galvanisch_absch3,'LineStyle','none','Color','[0.8 0.8 1.0]','Marker','x')
    plot(Z2_G_Temperatur_absch4,Z2_Galvanisch_absch4,'LineStyle','none','Color','[0.2 0.2 0.5]','Marker','x')
    
    [ m_1,y0_1,RSquared_1, m_2,y0_2,RSquared_2, m_3,y0_3,RSquared_3, m_4,y0_4,RSquared_4, m_m_pos,y0_m_pos,RSquared_m_pos, m_m_neg,y0_m_neg,RSquared_m_neg] = ausgleichsgerade(Z2_G_Temperatur_absch1, Z2_G_Temperatur_absch2, Z2_G_Temperatur_absch3, Z2_G_Temperatur_absch4, Z2_Galvanisch_absch1, Z2_Galvanisch_absch2, Z2_Galvanisch_absch3, Z2_Galvanisch_absch4);
    
      geraden_besch_1 = sprintf('y1 = %1.0f x % +1.0f , R^2 = %1.4f',m_1,y0_1,RSquared_1);
    geraden_besch_2 = sprintf('y2 = %1.0f x % +1.0f , R^2 = %1.4f',m_2,y0_2,RSquared_2);
    geraden_besch_3 = sprintf('y3 = %1.0f x % +1.0f , R^2 = %1.4f',m_3,y0_3,RSquared_3);
   	geraden_besch_4 = sprintf('y3 = %1.0f x % +1.0f , R^2 = %1.4f',m_4,y0_4,RSquared_4);
    geraden_besch_m_pos = sprintf('y_mpos = %1.0f x % +1.0f , R^2 = %1.4f',m_m_pos,y0_m_pos,RSquared_m_pos);
    geraden_besch_m_neg = sprintf('y_mneg = %1.0f x % +1.0f , R^2 = %1.4f',m_m_neg,y0_m_neg,RSquared_m_neg);
    
    
        g_Absch1(2) =	{geraden_besch_1};
    g_Absch_m_neg(2) =	{geraden_besch_m_neg};
      
      
    
    subplot(3,2,5)
    set(gca,'Fontsize',10);
    title('T- \rho - Diagramm Zyklus3 (Klebeelektroden)','Fontsize',8)
    ylabel('Resistivity in [\Omega m]','Fontsize',10)
    xlabel('Temperatur in [°C]','Fontsize',10)
    grid on
    hold on
    axis([-7 12 0 k])
    plot(Z3_K_Temperatur_absch1,Z3_Klebe_absch1,'LineStyle','none','Color','[1.0 0.5 0.5]','Marker','x')
    plot(Z3_K_Temperatur_absch2,Z3_Klebe_absch2,'LineStyle','none','Color','[0.9 0.5 0.9]','Marker','x')
    plot(Z3_K_Temperatur_absch3,Z3_Klebe_absch3,'LineStyle','none','Color','[0.8 0.8 1.0]','Marker','x')
    plot(Z3_K_Temperatur_absch4,Z3_Klebe_absch4,'LineStyle','none','Color','[0.2 0.2 0.5]','Marker','x')
    
    [ m_1,y0_1,RSquared_1, m_2,y0_2,RSquared_2, m_3,y0_3,RSquared_3, m_4,y0_4,RSquared_4, m_m_pos,y0_m_pos,RSquared_m_pos, m_m_neg,y0_m_neg,RSquared_m_neg] = ausgleichsgerade(Z3_K_Temperatur_absch1, Z3_K_Temperatur_absch2, Z3_K_Temperatur_absch3, Z3_K_Temperatur_absch4, Z3_Klebe_absch1, Z3_Klebe_absch2, Z3_Klebe_absch3, Z3_Klebe_absch4);
    
    geraden_besch_1 = sprintf('y1 = %1.0f x % +1.0f , R^2 = %1.4f',m_1,y0_1,RSquared_1);
    geraden_besch_2 = sprintf('y2 = %1.0f x % +1.0f , R^2 = %1.4f',m_2,y0_2,RSquared_2);
    geraden_besch_3 = sprintf('y3 = %1.0f x % +1.0f , R^2 = %1.4f',m_3,y0_3,RSquared_3);
   	geraden_besch_4 = sprintf('y3 = %1.0f x % +1.0f , R^2 = %1.4f',m_4,y0_4,RSquared_4);
    geraden_besch_m_pos = sprintf('y_mpos = %1.0f x % +1.0f , R^2 = %1.4f',m_m_pos,y0_m_pos,RSquared_m_pos);
    geraden_besch_m_neg = sprintf('y_mneg = %1.0f x % +1.0f , R^2 = %1.4f',m_m_neg,y0_m_neg,RSquared_m_neg);
    
        k_Absch1(3) =	{geraden_besch_1};
    k_Absch_m_neg(3) =	{geraden_besch_m_neg};
      
        subplot(3,2,6)
    set(gca,'Fontsize',10);
    title('T- \rho - Diagramm Zyklus3 (Galvanisch)','Fontsize',8)
    ylabel('Resistivity in [\Omega m]','Fontsize',10)
    xlabel('Temperatur in [°C]','Fontsize',10)
    grid on
    hold on
    axis([-7 12 0 k])
    plot(Z3_G_Temperatur_absch1,Z3_Galvanisch_absch1,'LineStyle','none','Color','[1.0 0.5 0.5]','Marker','x')
    plot(Z3_G_Temperatur_absch2,Z3_Galvanisch_absch2,'LineStyle','none','Color','[0.9 0.5 0.9]','Marker','x')
    plot(Z3_G_Temperatur_absch3,Z3_Galvanisch_absch3,'LineStyle','none','Color','[0.8 0.8 1.0]','Marker','x')
    plot(Z3_G_Temperatur_absch4,Z3_Galvanisch_absch4,'LineStyle','none','Color','[0.2 0.2 0.5]','Marker','x')
    
    [ m_1,y0_1,RSquared_1, m_2,y0_2,RSquared_2, m_3,y0_3,RSquared_3, m_4,y0_4,RSquared_4, m_m_pos,y0_m_pos,RSquared_m_pos, m_m_neg,y0_m_neg,RSquared_m_neg] = ausgleichsgerade(Z3_G_Temperatur_absch1, Z3_G_Temperatur_absch2, Z3_G_Temperatur_absch3, Z3_G_Temperatur_absch4, Z3_Galvanisch_absch1, Z3_Galvanisch_absch2, Z3_Galvanisch_absch3, Z3_Galvanisch_absch4);
    
     geraden_besch_1 = sprintf('y1 = %1.0f x % +1.0f , R^2 = %1.4f',m_1,y0_1,RSquared_1);
    geraden_besch_2 = sprintf('y2 = %1.0f x % +1.0f , R^2 = %1.4f',m_2,y0_2,RSquared_2);
    geraden_besch_3 = sprintf('y3 = %1.0f x % +1.0f , R^2 = %1.4f',m_3,y0_3,RSquared_3);
   	geraden_besch_4 = sprintf('y3 = %1.0f x % +1.0f , R^2 = %1.4f',m_4,y0_4,RSquared_4);
    geraden_besch_m_pos = sprintf('y_mpos = %1.0f x % +1.0f , R^2 = %1.4f',m_m_pos,y0_m_pos,RSquared_m_pos);
    geraden_besch_m_neg = sprintf('y_mneg = %1.0f x % +1.0f , R^2 = %1.4f',m_m_neg,y0_m_neg,RSquared_m_neg);
    
           g_Absch1(3) =	{geraden_besch_1};
    g_Absch_m_neg(3) =	{geraden_besch_m_neg};
    
    
    
    
    
    %%
    
    %% in Übersichtsmatrix speichen:

% Zyclus 1
Zyclus = [1,2,3]';

k_Absch1=k_Absch1';
g_Absch1=g_Absch1';
k_Absch_m_neg=k_Absch_m_neg';
g_Absch_m_neg=g_Absch_m_neg';
    
    Tabelle = table(Zyclus, k_Absch1, g_Absch1, k_Absch_m_neg, g_Absch_m_neg,...
        'VariableNames',{'Zyclus' 'k_Absch1' 'g_Absch1' 'k_Absch_m_neg' 'g_Absch_m_neg'})
    
%     
%      writetable(Tabelle, 'Ausgleichsgerade_klebe vs galvanisch.txt')
%         
     print( figure(6), '-djpeg','-r600', 'C:\Users\Sebi\Dropbox\Studium\Semester 8\Bachelorarbeit\StoneMon\Grafiken\t-p-Kurven\Übersicht.jpg');
%     
    
    



















    
   