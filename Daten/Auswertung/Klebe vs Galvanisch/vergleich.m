
load('vergleich.workspac.mat')
scrsz = get(groot,'ScreenSize');

%%
close(gcf)
Time2=DateTime-15.9;
% 
% 
% figure(1)
%     hold on
%     plot(Time,T1,'r')
%     plot(Time2,T5,'b')
% 
% figure(2)
%     hold on
%     plot(Time,Reihe1,'r')
%     plot(Time2,Reihe2_1,'b')
% figure(3)
%     hold on
%     plot(Time,Reihe2,'r')
%     plot(Time2,Reihe2_2,'b')
% figure(4)
%     hold on
%     plot(Time,Reihe3,'r')
%     plot(Time2,Reihe2_3,'b')
% figure(5)
%     hold on
%     plot(Time,Reihe4,'r')
%     plot(Time2,Reihe2_4,'b')
% 
%     
    
    
 %%
 close all
k=60000;
figure(2)

   subplot(1,2,1)
   hold on
   axis([-7 12 0 k]) 
            plot(T1,Reihe1,'rx')
           plot(T2_1,Reihe2_1,'bx')

            plot(T1,Reihe3,'rx')
           plot(T2_1,Reihe2_3,'bx')

            plot(T1,Reihe5,'rx')
            plot(T2_1,Reihe2_5,'bx') 
    
    
   subplot(1,2,2)    
    hold on
    axis([-7 12 0 k])

            plot(T1,Reihe2,'rx')
           plot(T2_1,Reihe2_2,'bx')

            plot(T1,Reihe4,'rx')
           plot(T2_1,Reihe2_4,'bx')
    
    %%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    figure(4)
    k=60000;
   subplot(3,2,1)
    hold on
    axis([-7 12 0 k])
    title('Zyclus1 Klebeelektroden')
    plot(K_Temperatur_absch1,Klebe_absch1,'LineStyle','none','Color','[1.0 0.5 0.5]','Marker','x') 
    plot(K_Temperatur_absch2,Klebe_absch2,'LineStyle','none','Color','[0.9 0.5 0.9]','Marker','x')
    plot(K_Temperatur_absch3,Klebe_absch3,'LineStyle','none','Color','[0.8 0.8 1.0]','Marker','x')
%     plot(K_Temperatur_absch4,Klebe_absch4,'LineStyle','none','Color','[0.2 0.2 0.5]','Marker','x') 
 

   subplot(3,2,2)
   hold on
   axis([-7 12 0 k])
   title('Zyclus2 Galvanische Elektroden')
    plot(G_Temperatur_absch1,Galvanisch_absch1,'LineStyle','none','Color','[1.0 0.5 0.5]','Marker','x')
    plot(G_Temperatur_absch2,Galvanisch_absch2,'LineStyle','none','Color','[0.9 0.5 0.9]','Marker','x')
    plot(G_Temperatur_absch3,Galvanisch_absch3,'LineStyle','none','Color','[0.8 0.8 1.0]','Marker','x')
%     plot(G_Temperatur_absch4,Galvanisch_absch4,'LineStyle','none','Color','[0.2 0.2 0.5]','Marker','x')
    
      %berechnung in externer funktion
 


    subplot(3,2,3)
    hold on
    axis([-7 12 0 k])
    title('Zyclus2 Klebeelektroden')
    plot(Z2_K_Temperatur_absch1,Z2_Klebe_absch1,'LineStyle','none','Color','[1.0 0.5 0.5]','Marker','x') 
    plot(Z2_K_Temperatur_absch2,Z2_Klebe_absch2,'LineStyle','none','Color','[0.9 0.5 0.9]','Marker','x')
    plot(Z2_K_Temperatur_absch3,Z2_Klebe_absch3,'LineStyle','none','Color','[0.8 0.8 1.0]','Marker','x')
    plot(Z2_K_Temperatur_absch4,Z2_Klebe_absch4,'LineStyle','none','Color','[0.2 0.2 0.5]','Marker','x') 
    

   subplot(3,2,4) 
   hold on
   axis([-7 12 0 k])
   title('Zyclus2 Galvanische Elektroden')
    plot(Z2_G_Temperatur_absch1,Z2_Galvanisch_absch1,'LineStyle','none','Color','[1.0 0.5 0.5]','Marker','x')
    plot(Z2_G_Temperatur_absch2,Z2_Galvanisch_absch2,'LineStyle','none','Color','[0.9 0.5 0.9]','Marker','x')
    plot(Z2_G_Temperatur_absch3,Z2_Galvanisch_absch3,'LineStyle','none','Color','[0.8 0.8 1.0]','Marker','x')
    plot(Z2_G_Temperatur_absch4,Z2_Galvanisch_absch4,'LineStyle','none','Color','[0.2 0.2 0.5]','Marker','x')
       
  
     
     
     
     
     
     %%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    figure(5)
    
    
    
    k=60000;
    
    subplot(3,2,1)
    set(gca,'Fontsize',10);
    title('T- \rho - Diagramm Zyklus1 (Klebeelektroden)','Fontsize',8)
    ylabel('Resistivity in [\Omega m]','Fontsize',10)
    xlabel('Temperatur in [°C]','Fontsize',10)
    grid on
    
    hold on
    axis([-7 12 0 k])
    plot(K_Temperatur_absch1,Klebe_absch1,'LineStyle','none','Color','[1.0 0.5 0.5]','Marker','x')
    plot(K_Temperatur_absch2,Klebe_absch2,'LineStyle','none','Color','[0.9 0.5 0.9]','Marker','x')
    plot(K_Temperatur_absch3,Klebe_absch3,'LineStyle','none','Color','[0.8 0.8 1.0]','Marker','x')
    plot(K_Temperatur_absch4,Klebe_absch4,'LineStyle','none','Color','[0.2 0.2 0.5]','Marker','x')
    
    [ m_1,y0_1,RSquared_1, m_2,y0_2,RSquared_2, m_3,y0_3,RSquared_3, m_4,y0_4,RSquared_4, m_m_pos,y0_m_pos,RSquared_m_pos, m_m_neg,y0_m_neg,RSquared_m_neg] = ausgleichsgerade(K_Temperatur_absch1,K_Temperatur_absch2, K_Temperatur_absch3, K_Temperatur_absch4, Klebe_absch1, Klebe_absch2, Klebe_absch3, Klebe_absch4);
    
    geraden_besch_1 = sprintf('y1 = %1.0f x % +1.0f , R^2 = %1.4f',m_1,y0_1,RSquared_1)
    geraden_besch_2 = sprintf('y2 = %1.0f x % +1.0f , R^2 = %1.4f',m_2,y0_2,RSquared_2)
    geraden_besch_3 = sprintf('y3 = %1.0f x % +1.0f , R^2 = %1.4f',m_3,y0_3,RSquared_3)
   	geraden_besch_4 = sprintf('y3 = %1.0f x % +1.0f , R^2 = %1.4f',m_4,y0_4,RSquared_4)
    geraden_besch_m_pos = sprintf('y_mpos = %1.0f x % +1.0f , R^2 = %1.4f',m_m_pos,y0_m_pos,RSquared_m_pos)
    geraden_besch_m_neg = sprintf('y_mneg = %1.0f x % +1.0f , R^2 = %1.4f',m_m_neg,y0_m_neg,RSquared_m_neg)
    
    
    
  
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
    
    [ m_1,y0_1,RSquared_1, m_2,y0_2,RSquared_2, m_3,y0_3,RSquared_3, m_4,y0_4,RSquared_4, m_m_pos,y0_m_pos,RSquared_m_pos, m_m_neg,y0_m_neg,RSquared_m_neg] = ausgleichsgerade(G_Temperatur_absch1, G_Temperatur_absch2, G_Temperatur_absch3, G_Temperatur_absch4, Galvanisch_absch1, Galvanisch_absch2, Galvanisch_absch3, Galvanisch_absch4)
    
     
    geraden_besch_1 = sprintf('y1 = %1.0f x % +1.0f , R^2 = %1.4f',m_1,y0_1,RSquared_1)
    geraden_besch_2 = sprintf('y2 = %1.0f x % +1.0f , R^2 = %1.4f',m_2,y0_2,RSquared_2)
    geraden_besch_3 = sprintf('y3 = %1.0f x % +1.0f , R^2 = %1.4f',m_3,y0_3,RSquared_3)
   	geraden_besch_4 = sprintf('y3 = %1.0f x % +1.0f , R^2 = %1.4f',m_4,y0_4,RSquared_4)
    geraden_besch_m_pos = sprintf('y_mpos = %1.0f x % +1.0f , R^2 = %1.4f',m_m_pos,y0_m_pos,RSquared_m_pos)
    geraden_besch_m_neg = sprintf('y_mneg = %1.0f x % +1.0f , R^2 = %1.4f',m_m_neg,y0_m_neg,RSquared_m_neg)
    
   
    
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
    
    [ m_1,y0_1,RSquared_1, m_2,y0_2,RSquared_2, m_3,y0_3,RSquared_3, m_4,y0_4,RSquared_4, m_m_pos,y0_m_pos,RSquared_m_pos, m_m_neg,y0_m_neg,RSquared_m_neg] = ausgleichsgerade(Z2_K_Temperatur_absch1, Z2_K_Temperatur_absch2, Z2_K_Temperatur_absch3, Z2_K_Temperatur_absch4, Z2_Klebe_absch1, Z2_Klebe_absch2, Z2_Klebe_absch3, Z2_Klebe_absch4)
    
    geraden_besch_1 = sprintf('y1 = %1.0f x % +1.0f , R^2 = %1.4f',m_1,y0_1,RSquared_1)
    geraden_besch_2 = sprintf('y2 = %1.0f x % +1.0f , R^2 = %1.4f',m_2,y0_2,RSquared_2)
    geraden_besch_3 = sprintf('y3 = %1.0f x % +1.0f , R^2 = %1.4f',m_3,y0_3,RSquared_3)
   	geraden_besch_4 = sprintf('y3 = %1.0f x % +1.0f , R^2 = %1.4f',m_4,y0_4,RSquared_4)
    geraden_besch_m_pos = sprintf('y_mpos = %1.0f x % +1.0f , R^2 = %1.4f',m_m_pos,y0_m_pos,RSquared_m_pos)
    geraden_besch_m_neg = sprintf('y_mneg = %1.0f x % +1.0f , R^2 = %1.4f',m_m_neg,y0_m_neg,RSquared_m_neg)
    
     
        
    
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
    
    [ m_1,y0_1,RSquared_1, m_2,y0_2,RSquared_2, m_3,y0_3,RSquared_3, m_4,y0_4,RSquared_4, m_m_pos,y0_m_pos,RSquared_m_pos, m_m_neg,y0_m_neg,RSquared_m_neg] = ausgleichsgerade(Z2_G_Temperatur_absch1, Z2_G_Temperatur_absch2, Z2_G_Temperatur_absch3, Z2_G_Temperatur_absch4, Z2_Galvanisch_absch1, Z2_Galvanisch_absch2, Z2_Galvanisch_absch3, Z2_Galvanisch_absch4)
    
      geraden_besch_1 = sprintf('y1 = %1.0f x % +1.0f , R^2 = %1.4f',m_1,y0_1,RSquared_1)
    geraden_besch_2 = sprintf('y2 = %1.0f x % +1.0f , R^2 = %1.4f',m_2,y0_2,RSquared_2)
    geraden_besch_3 = sprintf('y3 = %1.0f x % +1.0f , R^2 = %1.4f',m_3,y0_3,RSquared_3)
   	geraden_besch_4 = sprintf('y3 = %1.0f x % +1.0f , R^2 = %1.4f',m_4,y0_4,RSquared_4)
    geraden_besch_m_pos = sprintf('y_mpos = %1.0f x % +1.0f , R^2 = %1.4f',m_m_pos,y0_m_pos,RSquared_m_pos)
    geraden_besch_m_neg = sprintf('y_mneg = %1.0f x % +1.0f , R^2 = %1.4f',m_m_neg,y0_m_neg,RSquared_m_neg)
    
      
      
    
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
    
    [ m_1,y0_1,RSquared_1, m_2,y0_2,RSquared_2, m_3,y0_3,RSquared_3, m_4,y0_4,RSquared_4, m_m_pos,y0_m_pos,RSquared_m_pos, m_m_neg,y0_m_neg,RSquared_m_neg] = ausgleichsgerade(Z3_K_Temperatur_absch1, Z3_K_Temperatur_absch2, Z3_K_Temperatur_absch3, Z3_K_Temperatur_absch4, Z3_Klebe_absch1, Z3_Klebe_absch2, Z3_Klebe_absch3, Z3_Klebe_absch4)
    
    geraden_besch_1 = sprintf('y1 = %1.0f x % +1.0f , R^2 = %1.4f',m_1,y0_1,RSquared_1)
    geraden_besch_2 = sprintf('y2 = %1.0f x % +1.0f , R^2 = %1.4f',m_2,y0_2,RSquared_2)
    geraden_besch_3 = sprintf('y3 = %1.0f x % +1.0f , R^2 = %1.4f',m_3,y0_3,RSquared_3)
   	geraden_besch_4 = sprintf('y3 = %1.0f x % +1.0f , R^2 = %1.4f',m_4,y0_4,RSquared_4)
    geraden_besch_m_pos = sprintf('y_mpos = %1.0f x % +1.0f , R^2 = %1.4f',m_m_pos,y0_m_pos,RSquared_m_pos)
    geraden_besch_m_neg = sprintf('y_mneg = %1.0f x % +1.0f , R^2 = %1.4f',m_m_neg,y0_m_neg,RSquared_m_neg)
    
      
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
    
    [ m_1,y0_1,RSquared_1, m_2,y0_2,RSquared_2, m_3,y0_3,RSquared_3, m_4,y0_4,RSquared_4, m_m_pos,y0_m_pos,RSquared_m_pos, m_m_neg,y0_m_neg,RSquared_m_neg] = ausgleichsgerade(Z3_G_Temperatur_absch1, Z3_G_Temperatur_absch2, Z3_G_Temperatur_absch3, Z3_G_Temperatur_absch4, Z3_Galvanisch_absch1, Z3_Galvanisch_absch2, Z3_Galvanisch_absch3, Z3_Galvanisch_absch4)
    
     geraden_besch_1 = sprintf('y1 = %1.0f x % +1.0f , R^2 = %1.4f',m_1,y0_1,RSquared_1)
    geraden_besch_2 = sprintf('y2 = %1.0f x % +1.0f , R^2 = %1.4f',m_2,y0_2,RSquared_2)
    geraden_besch_3 = sprintf('y3 = %1.0f x % +1.0f , R^2 = %1.4f',m_3,y0_3,RSquared_3)
   	geraden_besch_4 = sprintf('y3 = %1.0f x % +1.0f , R^2 = %1.4f',m_4,y0_4,RSquared_4)
    geraden_besch_m_pos = sprintf('y_mpos = %1.0f x % +1.0f , R^2 = %1.4f',m_m_pos,y0_m_pos,RSquared_m_pos)
    geraden_besch_m_neg = sprintf('y_mneg = %1.0f x % +1.0f , R^2 = %1.4f',m_m_neg,y0_m_neg,RSquared_m_neg)
       
    
%     
%     print( figure(5), '-djpeg','-r400', 'C:\Users\Sebi\Dropbox\Studium\Semester 8\Bachelorarbeit\StoneMon\Grafiken\t-p-Kurven\Übersicht.jpg');
%     
    
    
    
     
    %%

    figure(4)
    k=60000;
    
    hold on
    axis([-7 12 0 k])

    plot(K_Temperatur_absch1,Klebe_absch1,'LineStyle','none','Color','[1.0 0.5 0.5]','Marker','x') 
    plot(K_Temperatur_absch2,Klebe_absch2,'LineStyle','none','Color','[1.0 0.5 0.5]','Marker','x')
    plot(K_Temperatur_absch3,Klebe_absch3,'LineStyle','none','Color','[1.0 0.5 0.5]','Marker','x')
    plot(K_Temperatur_absch4,Klebe_absch4,'LineStyle','none','Color','[1.0 0.5 0.5]','Marker','x') 
    

    plot(G_Temperatur_absch1,Galvanisch_absch1,'LineStyle','none','Color','[0.8 0.8 1.0]','Marker','x')
    plot(G_Temperatur_absch2,Galvanisch_absch2,'LineStyle','none','Color','[0.8 0.8 1.0]','Marker','x')
    plot(G_Temperatur_absch3,Galvanisch_absch3,'LineStyle','none','Color','[0.8 0.8 1.0]','Marker','x')
    plot(G_Temperatur_absch4,Galvanisch_absch4,'LineStyle','none','Color','[0.8 0.8 1.0]]','Marker','x')
    
    

 
%%

figure(5)


    set(gca,'Fontsize',10);
    title('T-rH','Fontsize',8)
    ylabel('Resistivity in [\Omega m]','Fontsize',10)
    xlabel('Temperatur in [°C]','Fontsize',10)
    grid on
    hold on



hold on

farbe=[0.0 0.3 0.7]; 


for i=1:718
    
    farbe(1)=1/718*i;


    plot(T1(i),F4(i),'x','color',farbe)
    
    
end 
 





    