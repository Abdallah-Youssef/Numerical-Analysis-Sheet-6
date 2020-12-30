function [out] = round_significant(x)

[y, n] = normalize(x);
out = round(y, 5, 'significant');
out = out / (10 ^ n);

end

