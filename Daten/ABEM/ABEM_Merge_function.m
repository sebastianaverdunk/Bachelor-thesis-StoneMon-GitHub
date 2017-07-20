%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%    SEBASTIAN AVERDUNK       %%%%%%%%%%
%%%%%%%%    03649086                 %%%%%%%%%%
%%%%%%%%    BSc. Umweltingenieur     %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Zeile 10,13,38,65 müssen angepasst werden
clear all
%wie viele Datein sollen fussioniert werden?
letzte = 354;
% erste Tabelle einlesen --- Dateipfad der ersten Datei
i = 1;
s1 = 'C:\Users\Sebi\Dropbox\Studium\Semester 8\Bachelorarbeit\StoneMon\Daten\ABEM\Zyklus3\ABEM_export_Zyklus3_4.7.17\Zyclus3 (';
s2 = num2str(i);
s3 = ').txt';

filename = [s1 s2 s3];

delimiter = '\t';
startRow = 2;
formatSpec = '%s%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%s%f%f%f%f%f%f%f%f%f%f%f%f%f%[^\n\r]';

fileID = fopen(filename,'r');
dataArray = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'HeaderLines' ,startRow-1, 'ReturnOnError', false);
fclose(fileID);


LAB1 = table(dataArray{1:end-1}, 'VariableNames', {'Time','MeasID','DPID','Channel','Ax','Ay','Az','Bx','By','Bz','Mx','My','Mz','Nx','Ny','Nz','Fx','Fy','Fz','Note','ImA','UoutV','UV','SPV','RO','Var','RhoaOm','Cycles','PintV','PextV','TintC','Latitude','Longitude'});


LAB_all = LAB1;

fprintf('Status:  %d von %d \n', i, letzte)

for i=2:letzte
    fprintf('Status:  %d von %d \n', i, letzte)
   % alle weiteren Tabelle einlesen --- Dateipfad aller anderen Datei en
    s1 = 'C:\Users\Sebi\Dropbox\Studium\Semester 8\Bachelorarbeit\StoneMon\Daten\ABEM\Zyklus3\ABEM_export_Zyklus3_4.7.17\Zyclus3 (';
    s2 = num2str(i);
    s3 = ').txt';
    
    filename = [s1 s2 s3];
    
    startRow = 2;
    formatSpec = '%s%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%s%f%f%f%f%f%f%f%f%f%f%f%f%f%[^\n\r]';
    
    fileID = fopen(filename,'r');
    dataArray = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'HeaderLines' ,startRow-1, 'ReturnOnError', false);
    fclose(fileID);
    
    
    LABi = table(dataArray{1:end-1}, 'VariableNames', {'Time','MeasID','DPID','Channel','Ax','Ay','Az','Bx','By','Bz','Mx','My','Mz','Nx','Ny','Nz','Fx','Fy','Fz','Note','ImA','UoutV','UV','SPV','RO','Var','RhoaOm','Cycles','PintV','PextV','TintC','Latitude','Longitude'});
    
    
    
    s = size(LABi);
    
    LAB_all(end+1:end+s(1),:) = LABi(1:s(1),:);
    
    
end


% Wie soll die Datei heißen
savedfile = 'ABEM_Export_Sample3.txt';

writetable(LAB_all,savedfile,'Delimiter',delimiter)

fprintf('Datei "%s" wurde erstellt \n', savedfile)

clearvars filename startRow formatSpec fileID dataArray s1 s2 s3 i ans s LAB1 LABi;





