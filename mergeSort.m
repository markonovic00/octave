%mergeSort

function A = mergeSort(A)
   
   A=mergeSortStep(A,1,length(A));
  
endfunction  

function A = mergeSortStep(A, p, r) % p prvi indeks a r je poslednji indeks

    if p < r
      
      q=floor((p+r)/2); % q je srednji element niza
      A = mergeSortStep(A,p,q);
      A = mergeSortStep(A,q+1,r);
      A = merge(A,p,q,r); %Obavezno A=merge ! ! !
      
    endif  
  
endfunction  

function A = merge(A, p, q, r)
    
    n1 = q-p+1; %prva polovina nizamerge
    n2 = r-q; %druga polovina niza  
    for i=1:n1
      L(i)=A(p+i-1);
    endfor  
    for j=1:n2
      R(j)=A(j+q);
    endfor  
    L(n1+1).brIndeksa=inf;
    R(n2+1).brIndeksa=inf;
    i=1;
    j=1;
    for k=p:r
        
        if L(i).brIndeksa<=R(j).brIndeksa
          A(k)=L(i);
          i++;
        else
          A(k)=R(j);
          j++;
          
        endif  
      
    endfor  
    
endfunction  