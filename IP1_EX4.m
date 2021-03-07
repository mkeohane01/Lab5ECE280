tc = linspace(0, 1, 101);
xc = humps(tc);
deltatc = tc(2) - tc(1);
td = linspace(0, 1, 11);
xd = humps(td);
deltatd = td(2) - td(1);

h = [1, 0, -1] ./ (2*deltatd)
con = conv(xd, h, 'same')

figure(1); clf
plot(tc, xc, 'b-')
hold on
plot(td, xd, 'bo')
hold off
title('Values')


figure(2); clf
twopointdiff = diff(xc)/deltatc;
twopointdiff(end+1) = twopointdiff(end);
plot(tc, twopointdiff, 'b-')
hold on
plot(tc(1:10:end), twopointdiff(1:10:end), 'bo');
hold on
plot(td, con, 'mo')
hold off
title('Derivative Approximation (11 points) (mbk28)')
