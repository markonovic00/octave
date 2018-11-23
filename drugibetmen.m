%veci seal, floor nizi


function B = drugibetmen(A,d)
  
  minel = min(min(A));
  diagonal = eye(d)*minel;
  
  prparnih=prod(prod(A(2:2:end,:)));
  ispod=tril(ones(d)*prparnih,-1);
  
  prneparnih = prod(prod((A(1:2:end,:))));
  iznad=triu(ones(d)*prneparnih,1);
  
  B=diagonal+ispod+iznad;
  
endfunction
