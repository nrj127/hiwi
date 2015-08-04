%function [] =  spherical_representation(x_coordinate,y_coordinate) 
 rng(1)
 x = randn(250,1);
 y = randn(250,1);

% create data or polynom
%x = gallery('uniformdata',340,1,40); %20
%y = gallery('uniformdata',340,1,30); %30

%x = x_coordinate
%y = y_coordinate

figure(1)
 plot(x,y,'r.','Markersize',10)
 
 hold on
 
 %polynom from x,y using convex hull
 [k,v] = convhull(x,y)
 plot(x(k),y(k))

% find the minimum bounding circle
tic,[c,r] = minboundcircle(x,y);toc

 
 plot_circles(c,r); % plot circle
 
 
 %[c,r] = minboundcircle(x(k(1:7)),y(k(1:7)))
 %plot_circles(c,r)
 %[c,r] = minboundcircle(x(k(7:13)),y(k(7:13)))
 %plot_circles(c,r)
 [c,r] = minboundcircle(x(k(7:10)),y(k(7:10)))
 plot_circles(c,r)
  [c,r] = minboundcircle(x(k(10:13)),y(k(10:13)))
 plot_circles(c,r)
 
 
[m n] = size(k)
radius = [];
centre = [];
area = [];


