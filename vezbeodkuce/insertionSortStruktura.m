%insertionSortStruktura

function student= insertionSortStruktura(student)
  
  for i=2:length(student)
    key=student(i);
    j=i-1;
    while j>0 && student(j).brIndeksa>key.brIndeksa
      student(j+1)=student(j);
      j--;
    endwhile
    student(j+1)=key;
  endfor
  
endfunction