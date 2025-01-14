function s = lab2p2_mysin(xx)
    % reducere la primul cadran
    [x, sin_sign, cos_sign] = lab2p2_reducere_cadran(xx);
    
    s = 0;
    t = x;
    n = 1;
    while s + t ~= s
        s = s + t;
        t = -t * x^2 / ((n+1)*(n+2));
        n = n + 2;
    end
    s = sin_sign * s;