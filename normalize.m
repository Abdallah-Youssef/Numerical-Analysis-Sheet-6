function [y, n] = normalize(x)
y = x;
n = 0;

while abs(y) < 1 
    n = n+1;
    y = y*10;
    
end
  
end

