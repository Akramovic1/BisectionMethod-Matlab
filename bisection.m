function root = bisection(xl, xu, es, imax,func) 
if (feval(func,xl)*feval(func,xu))>0
    disp('no bracket') 
    return
end
for i=1:1:imax
    
    xr=(xu+xl)/2;
    ea = abs(xu-xl);
    
    test= feval(func,xl)*feval(func,xr);
    
    if (test < 0) xu=xr; 
    else xl=xr; 
    end
    
    if (test == 0) ea=0; end 
    if (ea < es) break; end
    
end

s=sprintf('\n Root= %f #Iterations = %d \n', xr,i); disp(s);
root = xr;