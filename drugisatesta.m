% Drugi zadatak sa testa od prosle godine

function [A,s]= drugisatesta (u,m,d)
  
  dijagonala=eye(d)*m;
  iznad = triu(ones(d)*u,1);
  ispod = tril(ones(d)*u,-1);
  A=fliplr(dijagonala+iznad+ispod);
  
  maks=max(max(A))/2;
  srednja=mean(A(1:2:end,:),2);
  
  if(maks>srednja)
    s=true;
  else
    s=false;
  end
  
endfunction
