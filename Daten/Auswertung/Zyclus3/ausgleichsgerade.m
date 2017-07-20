%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%    SEBASTIAN AVERDUNK       %%%%%%%%%%
%%%%%%%%    03649086                 %%%%%%%%%%
%%%%%%%%    BSc. Umweltingenieur     %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function [ m_1,y0_1,RSquared_1, m_2,y0_2,RSquared_2, m_3,y0_3,RSquared_3, m_4,y0_4,RSquared_4, m_m_pos,y0_m_pos,RSquared_m_pos, m_m_neg,y0_m_neg,RSquared_m_neg] = ausgleichsgerade(Reihe1,T1, a,b,c,d,e )


%------datenabschnitte aus vektor holen------------------
%1=a:b
x_fit1 = T1(a:b)';
y_fit1 = Reihe1(a:b)';

%2=b:c
x_fit2 = T1(b:c)';
y_fit2 = Reihe1(b:c)';

%nicht c:d
x_nicht = T1(c:d)';
y_nicht = Reihe1(c:d)';

%3=d:e
x_fit3 = T1(d:e)';
y_fit3 = Reihe1(d:e)';

%3=e:ende
x_fit4 = T1(e:end)';
y_fit4 = Reihe1(e:end)';

%mittlere positiv
%a:b + e:ende
x_fit_m_pos = [T1(a:b)' T1(e:end)'];
y_fit_m_pos = [Reihe1(a:b)' Reihe1(e:end)'];

%mittlere negative
%b:c + d:e
x_fit_m_neg = [T1(b:c)' T1(d:e)'];
y_fit_m_neg = [Reihe1(b:c)' Reihe1(d:e)'];



%------lösche Leerzeilen------------------------------
x_fit1(isnan(y_fit1)) = [];
y_fit1(isnan(y_fit1)) = [];
x_fit2(isnan(y_fit2)) = [];
y_fit2(isnan(y_fit2)) = [];
x_fit3(isnan(y_fit3)) = [];
y_fit3(isnan(y_fit3)) = [];
x_fit4(isnan(y_fit4)) = [];
y_fit4(isnan(y_fit4)) = [];
x_fit_m_pos(isnan(y_fit_m_pos)) = [];
y_fit_m_pos(isnan(y_fit_m_pos)) = [];
x_fit_m_neg(isnan(y_fit_m_neg)) = [];
y_fit_m_neg(isnan(y_fit_m_neg)) = [];




%------ausgleichsgerade errechenn------------------------------------
    gerade_1 = polyfit(x_fit1,y_fit1,1);
    gerade_2 = polyfit(x_fit2,y_fit2,1);
    gerade_3 = polyfit(x_fit3,y_fit3,1);
    gerade_4 = polyfit(x_fit4,y_fit4,1);
    gerade_m_pos = polyfit(x_fit_m_pos,y_fit_m_pos,1);   
    gerade_m_neg = polyfit(x_fit_m_neg,y_fit_m_neg,1);
        
    
    hold on
        plot(x_fit1,y_fit1,'Color','[1.0 0.5 0.5]','LineStyle','none','Marker','x');
        plot(x_fit1,polyval(gerade_1,x_fit1),'-r', 'LineWidth',1.2);
        
        plot(x_fit2,y_fit2,'Color','[0.9 0.5 0.9]','LineStyle','none','Marker','x');
        plot(x_fit2,polyval(gerade_2,x_fit2),'color','[0.8 0.2 0.9]', 'LineWidth',1.2);
        
        plot(x_fit3,y_fit3,'Color','[0.8 0.8 1.0]','LineStyle','none','Marker','x');
        plot(x_fit3,polyval(gerade_3,x_fit3),'Color','[0.1 0.1 1.0]', 'LineWidth',1.2);
       
        plot(x_fit4,y_fit4,'Color','[0.4 0.4 0.7]','LineStyle','none','Marker','x');
        plot(x_fit4,polyval(gerade_4,x_fit4),'Color','[0.2 0.2 0.5]', 'LineWidth',1.2);
                
   %    plot(x_fit_m_pos,y_fit_m_pos,'Color','k','LineStyle','none','Marker','x');
        plot(x_fit_m_pos,polyval(gerade_m_pos,x_fit_m_pos),'-k','LineWidth',1.7);
        
   %    plot(x_fit_m_neg,y_fit_m_neg,'Color','k','LineStyle','none','Marker','x');
        plot(x_fit_m_neg,polyval(gerade_m_neg,x_fit_m_neg),'-k','LineWidth',1.7);
        
        
% nicht berücksichtigte Werte
%       plot(x_nicht,y_nicht,'o')
%       plot(x_letzte, y_letzte,'Color','[1.0 0.5 0.5]','LineStyle','none','Marker','o');
      
        
%------steigung und y achsenabschnitt------------------------------------     
    m_1=gerade_1(1);
    y0_1=gerade_1(2)  ;
    
    m_2=gerade_2(1);
    y0_2=gerade_2(2);
    
    m_3=gerade_3(1);
    y0_3=gerade_3(2);
        
    m_4=gerade_4(1);
    y0_4=gerade_4(2);
          
    m_m_pos=gerade_m_pos(1);
    y0_m_pos=gerade_m_pos(2);
    
    m_m_neg=gerade_m_neg(1);
    y0_m_neg=gerade_m_neg(2);
    
    
    
  %-------Gütemaß------------------------------------------ 
    RSquared_1 = corrcoef(y_fit1,polyval(gerade_1,x_fit1));
    RSquared_1 = RSquared_1(1,2)  ;
    
    RSquared_2 = corrcoef(y_fit2,polyval(gerade_2,x_fit2));
    RSquared_2 = RSquared_2(1,2);
    
    RSquared_3 = corrcoef(y_fit3,polyval(gerade_3,x_fit3));
    RSquared_3 = RSquared_3(1,2);
        
    RSquared_4 = corrcoef(y_fit4,polyval(gerade_4,x_fit4));
    RSquared_4 = RSquared_4(1,2);
    
    RSquared_m_pos = corrcoef(y_fit_m_pos,polyval(gerade_m_pos,x_fit_m_pos));
    RSquared_m_pos = RSquared_m_pos(1,2);
    
    RSquared_m_neg = corrcoef(y_fit_m_neg,polyval(gerade_m_neg,x_fit_m_neg));
    RSquared_m_neg = RSquared_m_neg(1,2);
    
    




end

