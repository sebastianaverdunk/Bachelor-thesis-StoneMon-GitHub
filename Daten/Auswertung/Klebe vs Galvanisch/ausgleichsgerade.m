function [ m_1,y0_1,RSquared_1, m_2,y0_2,RSquared_2, m_3,y0_3,RSquared_3, m_4,y0_4,RSquared_4, m_m_pos,y0_m_pos,RSquared_m_pos, m_m_neg,y0_m_neg,RSquared_m_neg] = ausgleichsgerade(x_absch1,x_absch2,x_absch3,x_absch4,y_absch1,y_absch2,y_absch3,y_absch4)
    
x_fit_m_pos = [x_absch1 x_absch4];
y_fit_m_pos = [y_absch1 y_absch4];
x_fit_m_neg = [x_absch2 x_absch3];
y_fit_m_neg = [y_absch2 y_absch3];

%------lösche Leerzeilen------------------------------
x_absch1(isnan(y_absch1)) = [];
y_absch1(isnan(y_absch1)) = [];
x_absch2(isnan(y_absch2)) = [];
y_absch2(isnan(y_absch2)) = [];
x_absch3(isnan(y_absch3)) = [];
y_absch3(isnan(y_absch3)) = [];
x_absch4(isnan(y_absch4)) = [];
y_absch4(isnan(y_absch4)) = [];
x_fit_m_pos(isnan(y_fit_m_pos)) = [];
y_fit_m_pos(isnan(y_fit_m_pos)) = [];
x_fit_m_neg(isnan(y_fit_m_neg)) = [];
y_fit_m_neg(isnan(y_fit_m_neg)) = [];




%------ausgleichsgerade errechenn------------------------------------
    gerade_1 = polyfit(x_absch1,y_absch1,1);
    gerade_2 = polyfit(x_absch2,y_absch2,1);
    gerade_3 = polyfit(x_absch3,y_absch3,1);
    gerade_4 = polyfit(x_absch4,y_absch4,1);
    gerade_m_pos = polyfit(x_fit_m_pos,y_fit_m_pos,1);   
    gerade_m_neg = polyfit(x_fit_m_neg,y_fit_m_neg,1);
        
    
    hold on
        plot(x_absch1,y_absch1,'Color','[1.0 0.7 0.7]','LineStyle','none','Marker','x');
        plot(x_absch1,polyval(gerade_1,x_absch1),'-r', 'LineWidth',.6);
        
        plot(x_absch2,y_absch2,'Color','[1 0.7 1]','LineStyle','none','Marker','x');
        plot(x_absch2,polyval(gerade_2,x_absch2),'color','[0.8 0.2 0.9]', 'LineWidth',.6);
        
        plot(x_absch3,y_absch3,'Color','[0.8 0.8 1.0]','LineStyle','none','Marker','x');
        plot(x_absch3,polyval(gerade_3,x_absch3),'Color','[0.1 0.1 1.0]', 'LineWidth',.6);
       
        plot(x_absch4,y_absch4,'Color','[0.7 0.7 1]','LineStyle','none','Marker','x');
        plot(x_absch4,polyval(gerade_4,x_absch4),'Color','[0.2 0.2 0.5]', 'LineWidth',.6);
                
   %    plot(x_fit_m_pos,y_fit_m_pos,'Color','k','LineStyle','none','Marker','x');
        plot(x_fit_m_pos,polyval(gerade_m_pos,x_fit_m_pos),'-k','LineWidth',1.0);
        
   %    plot(x_fit_m_neg,y_fit_m_neg,'Color','k','LineStyle','none','Marker','x');
        plot(x_fit_m_neg,polyval(gerade_m_neg,x_fit_m_neg),'-k','LineWidth',1.0);
        
        
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
    RSquared_1 = corrcoef(y_absch1,polyval(gerade_1,x_absch1));
    RSquared_1 = RSquared_1(1,2)  ;
    
    RSquared_2 = corrcoef(y_absch2,polyval(gerade_2,x_absch2));
    RSquared_2 = RSquared_2(1,2);
    
    RSquared_3 = corrcoef(y_absch3,polyval(gerade_3,x_absch3));
    RSquared_3 = RSquared_3(1,2);
        
    RSquared_4 = corrcoef(y_absch4,polyval(gerade_4,x_absch4));
    RSquared_4 = RSquared_4(1,2);
    
    RSquared_m_pos = corrcoef(y_fit_m_pos,polyval(gerade_m_pos,x_fit_m_pos));
    RSquared_m_pos = RSquared_m_pos(1,2);
    
    RSquared_m_neg = corrcoef(y_fit_m_neg,polyval(gerade_m_neg,x_fit_m_neg));
    RSquared_m_neg = RSquared_m_neg(1,2);
    
    




end

