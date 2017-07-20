
close all
x1=[0:10];
x2=[-7:0];


%%
figure(1)

set(gca,'Fontsize',10);
title('T- \rho - Diagramm','Fontsize',10)
ylabel('Resistivity in [\Omega m]','Fontsize',10)
xlabel('Temperatur in [°C]','Fontsize',10)

hold on
% alfavalues = 1 *ones(11,1);
for m=-12:1:12
    for t=-219:1:219
     k_eins=    plot(x1,polyval([-21+m 505+t],x1),'color','[0.95 0.8 0.8]','LineWidth',0.2);
%    patch(x1,polyval([-21+m 505+t],x1),'red','EdgeColor','red',...
%    'FaceVertexAlphaData',alfavalues,'AlphaDataMapping','none',...
%    'EdgeAlpha','interp')
    end
end



for m=-14:1:14
    for t=-150:1:150
    g_eins =   plot(x1,polyval([-21+m 505+t],x1),'color','[0.8 0.8 0.95]','LineWidth',0.2);
%      patch(x1,polyval([-21+m 505+t],x1),'blue','EdgeColor','blue',...
%    'FaceVertexAlphaData',alfavalues,'AlphaDataMapping','none',...
%    'EdgeAlpha','interp')
    end
end


plot(x1,polyval([-21 505],x1),'-r', 'LineWidth',1.2);

plot(x1,polyval([-17 491],x1),'-b', 'LineWidth',1.2);

text1 = sprintf('-21(±12)x+505(±219)');
text(1,0,text1,'Color','r');

text1 = sprintf('17(±14)x+491(±150)');
text(1,100,text1,'Color','b');


print( figure(1), '-djpeg','-r400', 'C:\Users\Sebi\Dropbox\Studium\Semester 8\Bachelorarbeit\StoneMon\Grafiken\t-p-Kurven\abschnitt eins all.jpg');





%%

figure(2)

set(gca,'Fontsize',10);
title('T- \rho - Diagramm','Fontsize',10)
ylabel('Resistivity in [\Omega m]','Fontsize',10)
xlabel('Temperatur in [°C]','Fontsize',10)


hold on
alfavalues = 0.01 *ones(8,1);
for m=-407:20:407
    for t=-150:20:150
    k_mitt=     plot(x2,polyval([-577+m 491+t],x2),'color','[0.95 0.7 0.7]', 'LineWidth',0.2);
 %      patch(x2,polyval([-577+m 491+t],x2),'red','EdgeColor','red',...
%    'FaceVertexAlphaData',alfavalues,'AlphaDataMapping','none',...
 %   'EdgeAlpha','interp')
    end
end



for m=-684:20:684
    for t=-451:20:451
 %   g_mitt=     plot(x2,polyval([-916+m 866+t],x2),'color','[0.8 0.8 0.95]', 'LineWidth',0.2);
       patch(x2,polyval([-916+m 866+t],x2),'blue','EdgeColor','blue',...
   'FaceVertexAlphaData',alfavalues,'AlphaDataMapping','none',...
   'EdgeAlpha','interp')
    end
end





plot(x2,polyval([-577 491],x2),'-r', 'LineWidth',1.2);

plot(x2,polyval([-916 866],x2),'-b', 'LineWidth',1.2);


text1 = sprintf('577(±407)x+491(±150)');
text(-3.5,11000,text1,'Color','r');

text1 = sprintf('916(±684)x+866(±451)');
text(-3.5,10000,text1,'Color','b');


print( figure(2), '-djpeg','-r400', 'C:\Users\Sebi\Dropbox\Studium\Semester 8\Bachelorarbeit\StoneMon\Grafiken\t-p-Kurven\abschnitt zwei all.jpg');






