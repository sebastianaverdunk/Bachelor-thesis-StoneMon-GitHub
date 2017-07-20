%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%    SEBASTIAN AVERDUNK       %%%%%%%%%%
%%%%%%%%    03649086                 %%%%%%%%%%
%%%%%%%%    BSc. Umweltingenieur     %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


load('C:\Users\Sebi\Dropbox\Studium\Semester 8\Bachelorarbeit\StoneMon\Daten\Auswertung\Allgemeines\allgemein.mat')

close all
Time_z1 = Time;
Time_z2 = Time2-15.9545;
Time_z3 = DateTime3-38.75;
    
figure(1)
    hold on
    plot(Time_z1,T1,'r')
    plot(Time_z2,T2_1,'b')  
    plot(Time_z3,T3_1,'b')
    
%%

figure(2)
    set(gca,'Fontsize',10);
    title('rH-Time','Fontsize',10)
    ylabel('rH in [%]','Fontsize',10)
    xlabel('normalisierte Zeit [-]','Fontsize',10)
    grid on
    
    hold on

axis([5000 600000 87 97])
    hold on
    plot(Time_z1,F4,'r')
    plot(Time_z2,F2_4,'b')  
    plot(Time_z3,F3_4,'c')
    
legend('Zyklus 1', 'Zyklus 2', 'Zyklus 3','Location','east')

set(gca, 'xTick', [],'xticklabel',[]); 

mean(F5)
v=sqrt(var(F5))

mean(F2_5)
v=sqrt(var(F2_5))

mean(F3_5)
v=sqrt(var(F3_5))


%print( figure(2), '-djpeg','-r400', 'C:\Users\Sebi\Dropbox\Studium\Semester 8\Bachelorarbeit\StoneMon\Grafiken\allgemein\Feuchte.jpg');
   

%%
figure(3)
subplot(1,3,1)
    boxplot([Reihe1, Reihe2, Reihe3, Reihe4, Reihe5],...
            'Notch','on',...
            'Labels',{'Reihe1', 'Reihe2',' Reihe3', 'Reihe4', 'Reihe5'})
    ylabel('Resistivity')
    title('Boxplot zyclus1')
    axis([0 6 -1.5 300000])

subplot(1,3,2)
    boxplot([Reihe2_1, Reihe2_2, Reihe2_3, Reihe2_4, Reihe2_5],...
            'Notch','on',...
            'Labels',{'Reihe2_1',' Reihe2_2', 'Reihe2_3', 'Reihe2_4',' Reihe2_5'})
        ylabel('Resistivity')
        title('Boxplot zyclus2')
        axis([0 6 -1.5 300000])
        
subplot(1,3,3)               
    boxplot([Reihe3_1, Reihe3_2, Reihe3_3, Reihe3_4, Reihe3_5],...
            'Notch','on',...
            'Labels',{'Reihe3_1',' Reihe3_2', 'Reihe3_3', 'Reihe3_4',' Reihe3_5'})
        ylabel('Resistivity')
        title('Boxplot zyclus3')
        axis([0 6 -1.5 300000])
        
        
        
  %%

  figure(4)
   set(gca,'Fontsize',10);
    title('Temperatur-Time','Fontsize',10)
    ylabel('T in [°C]','Fontsize',10)
    xlabel('Zeit','Fontsize',10)
    hold on
   p(1) = plot(Time_z1,T1,'color','[0.5 .0.90 .5]')
   p(2) =  plot(Time_z1,T3,'b') 
    
    
    a=93;
   p(3) =  plot(Time_z1(a),T1(a),'or','MarkerSize',12) 
    
        
   text_1 = '\downarrow unterkühltes Wasser'
   text(datenum(Time_z1(a)),1.2, text_1,'Color','k'); 
    

    b=96;
    c=158;
  p(4) =   plot(Time_z1(b:c),T1(b:c),'-r','LineWidth',1.7);
    
   text_2 = '\uparrow Gefrierplateau'
   text(datenum(Time_z1(120)),-1.2, text_2,'Color','k'); 
    
  
  
    b=299;
    c=341;
  p(5) =   plot(Time_z1(b:c),T1(b:c),'-r','LineWidth',1.7);
    
   text_2 = '\uparrow Tauplateau'
   text(datenum(Time_z1(320)),-1.2, text_2,'Color','k'); 
    
   plot(Time_z1,zeros(539,1),'k')    ;   
   t(1)=Time_z1(1)-0.5;
   t(2)=Time_z1(1);
   plot(t,[0 0],'k')  ;
  
  legend('Steintemperatur T1','Raumlufttemperatur T3','Lokalisation','east')
  legend(p([1 2]))
  
  
          
 print( figure(4), '-djpeg','-r400', 'C:\Users\Sebi\Dropbox\Studium\Semester 8\Bachelorarbeit\StoneMon\Grafiken\allgemein\Temperatur.jpg');

  %%

  figure(5)
   set(gca,'Fontsize',10);
    title('Temperatur-Time','Fontsize',10)
    ylabel('T in [°C]','Fontsize',10)
    xlabel('Zeit','Fontsize',10)


    hold on
    grid on
    
    plot(Zeit, TemperatureC0, 'color','[0.5 .0.90 .5]')

    plot(Time_z1(94),T1(160),'or','MarkerSize',120) 
    plot(Zeit,zeros(19896,1),'k')          
           
% print( figure(5), '-djpeg','-r400', 'C:\Users\Sebi\Dropbox\Studium\Semester 8\Bachelorarbeit\StoneMon\Grafiken\allgemein\unterkühltes wasser.jpg');
  


  
  %%
  figure(6)
  
  [hAx,hLine1,hLine2] = plotyy(Time_z1,T1,Time_z1,F4)
  
  title('T- /rH- Time')
    xlabel('Time')

    ylabel(hAx(1),'Temperatur in [°C]')
    ylabel(hAx(2),'relative Luftfeuchtigkeit in [%]')
  
%    print( figure(6), '-djpeg','-r400', 'C:\Users\Sebi\Dropbox\Studium\Semester 8\Bachelorarbeit\StoneMon\Grafiken\allgemein\Temperatur_feuchte.jpg');

  
  figure(6)
  
  plot(T1,F4,'x')
%   
  




%%
figure(7)
a=60;
b=170;
c=100;


set(gca,'Fontsize',10);
title('T- \rho - Diagramm - equilibrium freezing point','Fontsize',10)
ylabel('Resistivity in [\Omega m]','Fontsize',10)
xlabel('Temperatur in [°C]','Fontsize',10)


% achsen = [-0.5 1 260 440]
% 
% axis(achsen)

plot(T1(a:b),Reihe2(a:b),'x')
hold on
plot(T1(c),Reihe2(c),'or','MarkerSize',30)
grid on
 print( figure(7), '-djpeg','-r600', 'C:\Users\Sebi\Dropbox\Studium\Semester 8\Bachelorarbeit\StoneMon\Grafiken\allgemein\equilibrium freezing point.jpg');


TTT=T1(c)
RRR=Reihe2(c)
  
  
  
  
  
  
  
  
  