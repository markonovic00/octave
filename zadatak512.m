%Napisati funkciju koja vraca vektor prostih brojeva manjih od broja n 
%(pogledati algoritam Eratostenovo sito). ne radi

function prostimanjiodn = zadatak512(n)
  
  brojac=0;
  for i=1:n
    for j=1:n
      if(rem(i,j)==0)
      if(i==j)
      break;		
			else
			prostimanjiodn(end+1)=i;      
      endif
      endif
    endfor 
  endfor  
  
endfunction
