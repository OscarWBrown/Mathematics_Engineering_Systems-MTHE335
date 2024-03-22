function FsCoeffs = Q2FourierSeriesCoeffs(x, N)
    aks = zeros(1, 2*N+1);
    for k = -N:N
        sum_term = 0;
        for n = -N:N
            sum_term = sum_term + x(n+N+1) * exp(-1i * k * (2*pi/(2*N+1)) * n);
        end
        aks(k+N+1) = (1/sqrt(2*N+1)) * sum_term;
    end
    FsCoeffs = aks;
end

