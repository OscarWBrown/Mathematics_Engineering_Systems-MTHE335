function FTxN = Q3FourierTransform(t, N, P)
    xN = 0;
    for k = -N:N
        xN = xN + Q3FourierSeriesCoeffs(k, P) * 1/sqrt(1/P) * exp(1i*2*pi*k/P*t);
    end
    FTxN = xN;
end

