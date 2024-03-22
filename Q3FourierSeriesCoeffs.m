function Coeff = Q3FourierSeriesCoeffs(k, P)
    T = 2;
    x = @(t) (t <= 1) .* (t) + ((t >= 1) & (t <= 2)) .* (1 - t);
    temp = integral(@(t) x(t) .* exp(-1i * 2 * pi * k / P * t), 0, T);
    Coeff = 1/sqrt(P) * temp;
end

