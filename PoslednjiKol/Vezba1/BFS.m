% BFS

function G = BFS(G,s) % s-Starting point
    
  v=1:length(G.AdjMatrix); % Oznacava sve elemnte od prvog do poslednjeg u matrici
  
    %Postavljanje svih elementata osim prvog
  for u=v(v~=s)
    
    G.V(u).color='W';
    G.V(u).d=NaN;
    G.V(u).pred=inf;
    
  endfor
    % Postavljanje prvog elementa
  G.V(s).color='W';
  G.V(s).d=0;
  G.V(s).pred=NaN;
  
  Q=[]; % Kreiranje liste
  Q=[Q s]; % Dodavanje u listu Q pocetni element koji 's'
  
  while ~isempty(Q) % Gleda sve elemnte dok ih ima koji nisu crni
    
    u=Q(1); % Cuvanje podatka kojeg obradjujemo
    Q(1)=[]; % Skidanje elemenata sa liste
    
    for v=find(G.AdjMatrix(u,:))
      
      if G.V(v).color=='W' % Uzimamo samo elemente koji su beli
        
        G.V(v).color='G'; % Postavljanje elemenata da su u procesu obrade
        G.V(v).d=G.V(u).d+1; % Postavljanje daljine elementa
        G.V(v).pred=u; % Postavljanje prethodnog elementa
        Q=[Q v]; % Dodavanje elemenata na pregled...
        
      endif
      
    endfor
    
    G.V(u).color='B'; % Postavljanje obradjenih elemenata
    
  endwhile
  
endfunction