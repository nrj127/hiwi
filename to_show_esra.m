%x = [1 3 4 5 6 7]
%y = [3 2 1 6 7 1]


x = randn(250,1);
y = randn(250,1);
k= plot_polygon(x,y)

[c,r] = minboundcircle(x,y)
hline=plot_circles(c,r)
delete(hline)
[c,r] = minboundcircle(x(k(1:6)),y(k(1:6)))
hline1 = plot_circles(c,r)
%delete(hline1)
[c,r] = minboundcircle(x(k(6:11)),y(k(6:11)))
hline2 = plot_circles(c,r)
