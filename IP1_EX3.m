
tc = linspace(0, 1, 101);
xc = humps(tc);
td = linspace(0, 1, 11);
xd = humps(td);
figure(1); clf
plot(tc, xc, 'b-')
hold on
plot(td, xd, 'bo')
hold off

h2 = [1/2, 1/2]
h5 = [1/5, 1/5, 1/5, 1/5, 1/5]

twopa = conv(xd, h2, 'same')
fivepa = conv(xd, h5, 'same')


hold on
plot(td, twopa, 'ro-')

plot(td, fivepa, 'go-')
hold off

title('Moving Averages (mbk28)')