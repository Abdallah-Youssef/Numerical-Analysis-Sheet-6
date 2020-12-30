clc;




xl = 1;
xu = 2;
fprintf('xl\txr\txu\n')

n = 10;
while (((xu - xl) / 2) >= 10 ^(-4.4)) && n > 0
    n = n-1;
    xr = round_significant((xu * f(xl) - xl * f(xu)) / (f(xl) - f(xu)));
    
    fprintf('%d\t%d\t%d\t%d\n', xl,xr,xu,(xu - xl))
    
    
    if f(xr)*f(xl) < 0
        xu = xr;
    else 
        xl = xr;
    end
end

xr = round_significant((xu * f(xl) - xl * f(xu)) / (f(xl) - f(xu)));
fprintf("Xr = %d", xr)

