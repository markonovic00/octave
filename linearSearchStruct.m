% Linearna pretraga za strukture
% linearSearchStruct.m

function rez = linearSearchStruct(ST,tip,key)
  j=0;
  for k=1:length(ST)
    if(length(getfield(ST(k),tip))==length(key))
      if(all(getfield(ST(k),tip)==key))
          j++;
          rez(j)=k;
      endif
    endif
  endfor
endfunction  