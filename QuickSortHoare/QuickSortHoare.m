% QuickSortHoare

function A = QuickSortHoare(A)
  
  low=1;
  high=length(A);
  A=QuickSort(A,low,high);
  
endfunction

function A = QuickSort(A,low,high)
  
  if low < high
    
    [A,ind]=HoarePartition(A,low,high);
    A=QuickSort(A,low,ind);
    A=QuickSort(A,ind+1,high);
    
  endif
  
endfunction

function [A,ind] = HoarePartition(A,low,high)
  
  pivot = A(low);
  i=low-1;
  j=high+1;
  
  while true
    
    % Nadji najlvelji koji je veci od pivota
    do
      
      i++;
      
    until A(i)>=pivot
    
    % Nadji najdesniji koji je manji od pivota
    do
      
      j--;
      
    until A(j)<=pivot
    
    % Mesto gde se 'i' i 'j' nalaze
    if i >= j
      
      ind=j;
      return;
      
    endif
    
    % Zameni najlevlji veci od pivota i najdesniji manji od pivota
    temp = A(i); 
    A(i) = A(j); 
    A(j) = temp; 
    
  endwhile
  
endfunction