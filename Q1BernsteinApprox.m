function [Bnf, polyApprox] = Q1BernsteinApprox(f, n, t)
    Bnf = 0;
    for k = 0:n
        Bnf = Bnf + nchoosek(n, k) * ((1 - t).^(n - k)) .* (t.^k) * f(k / n);
    end

    coeffs = zeros(n + 1);
    for k = 1:(n + 1)
        coeffs(k) = f((k - 1) / n) * nchoosek(n, (k - 1));
    end
    BNA = '';
    % find coefficients for Bernstein approximation
    for j = 1:(n + 1)
        if j == 1
            BNA = [num2str(coeffs(j)) '(1 - t)^(' num2str(n) ')'];
        else
            BNA = [BNA ' + ' num2str(coeffs(j)) 't^' num2str(j - 1) '(1 - t)^(' num2str(n - (j - 1)) ')'];
        end
    end
    % Return string representation of coefficients
    polyApprox = BNA;
end