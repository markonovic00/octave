%matrica55.m
%parne neparne vrste

function A = matrica55(d,el1,el2)
  A=zeros(d);
  
  A(1:2:end,:)=el2;
  A(2:2:end,:)=el1;
  
endfunction
