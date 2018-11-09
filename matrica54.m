%Popunjavanje matrice zanimljivo
%matrica54.m

function A = matrica54 (d,el1,el2,el3)
  
  A1=eye(d)*el1;
  A2=(ones(d)-tril(ones(d)))*el2;
  A3=(ones(d)-triu(ones(d)))*el3;
  A=fliplr(A1+A2+A3);
  
  
  
endfunction
