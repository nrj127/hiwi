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


th = 0:pi/50:2*pi;
xunit = r * cos(th) + c(1);
yunit = r *sin(th) + c(2);

h = plot(xunit,yunit); % plot circle


[m n] = size(k)
radius = [];
centre = [];
area = [];

for j = 1:m
    x1(j) = x(k(j))
    y1(j) = y(k(j))
end
for i= 1:m-1 % 2 with 1
  %  x1(i) = x(k(i))
  %  y1(i) = y(k(i))
    [c r] = minboundcircle(x1(i:i+1),y1(i:i+1)); % i+1 i+2
    a = pi * r * r
    xunit = r *cos(th) + c(1);
    yunit  = r * sin(th) + c(2);
    radius = [radius; r];
    centre = [centre; c];
    area = [area;a];
    plot(xunit,yunit)
    
    
        
end

 area1 = sort(area);
% 
% 
 index_last = find(abs(area - area1(size(area1,1))) < 0.001 )
 index_sec_last = find(abs(area - area1(size(area1,1)-1)) < 0.001 )
 index_third_last = find(abs(area - area1(size(area1,1)-2)) < 0.001 )
% 
 x2 = [x1(index_last) x1(index_sec_last) x1(index_third_last) ]
 y2  =[y1(index_last)  y1(index_sec_last) y1(index_third_last)]
 
 [c r] = minboundcircle(x2,y2)
 xunit = r *cos(th) + c(1);
    yunit  = r * sin(th) + c(2);
    plot(xunit,yunit);
 
display(radius)
display(centre)
display(area)
k


