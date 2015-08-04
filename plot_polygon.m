function[k,v] = plot_polygon(x,y)
 
figure(7)
 plot(x,y,'r.','Markersize',10)
 hold on
 [k,v] = convhull(x,y)
 plot(x(k),y(k))

end