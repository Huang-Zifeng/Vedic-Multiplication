
a = myrandi(30);
b = myrandi(40);
c = vedicmultiply(a, b);
disp(['a = ', a ]);
disp(['b = ', b ]);
disp(['c = ', c ]);

T = zeros(1, 5);
for N = 10:10:50
    tic;
    for k = 1:100
        a = myrandi(N);
        b = myrandi(N);
        vedicmultiply(a, b);
    end
    T(N/10) = toc/100;
end
plot(10:10:50, T, 'o-');
xlabel('Number of digits (N)');
ylabel('Average time (s)');
title('Vedic Multiplication');