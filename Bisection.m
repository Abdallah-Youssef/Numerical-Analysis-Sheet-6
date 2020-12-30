clc;




xl = -1;
xu = 0;
fprintf('xl\txr\txu\n')
n = 14;
while (((xu - xl) / 2) >= 10 ^(-4.4))  && n > 0
    n = n-1;
    xr = round_significant((xl + xu) / 2);
    
    fprintf('%d\t%d\t%d\t%d\n', xl,xr,xu,(xu - xl))
    
    
    if f(xr)*f(xl) < 0
        xu = xr;
    else 
        xl = xr;
    end
end

xr = round_significant((xl + xu) / 2);
fprintf("Xr = %d", xr)

