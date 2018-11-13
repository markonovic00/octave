%Cetvrti zadatak sa testa od prosle godine

function r = cetvrtisatesta (A,B)
  
  [red,col]=size(A);
  r=1;
  for i=1:red
    for j=1:col
      if(rem(A(i,j),2)==0)
        if(A(i,j)>max(max(B)))
          r*=A(i,j);
        end
      end
    endfor
  endfor
endfunction
