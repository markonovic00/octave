% LinearSearchBetween

function ind = LinearSearchBetween(studenti,opseg)
  low=opseg(1);
  high=opseg(2);
  
  ind=[];
  br=1;
  for i =1:length(studenti)
    
    if studenti(i).ocena>=low && studenti(i).ocena<=high
      
      ind(br)=i;
      br++;
      
    endif
    
  endfor
  
endfunction