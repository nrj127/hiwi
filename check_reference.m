% x = randn(250,1);
% y = randn(250,1);

% create data or polynom
x = gallery('uniformdata',20,1,20);
y = gallery('uniformdata',20,1,30);



figure(1)
 plot(x,y,'r.','Markersize',10)
 
 hold on
 
 %polynom from x,y using convex hull
 [k,v] = convhull(x,y);
 plot(x(k),y(k))

% find the minimum bounding circle
tic,[c,r] = minboundcircle(x,y);toc


th = 0:pi/50:2*pi;
xunit = r * cos(th) + c(1);
yunit = r *sin(th) + c(2);

h = plot(xunit,yunit); % plot circle

%hold off
% trial
% 
 x1 = x(4:6,:)
 y1 = y(4:6,:)
 tic,[c,r] = minboundcircle(x1,y1);toc
 [k,v] = convhull(x1,y1);
 xunit = r * cos(th) + c(1);
 yunit = r *sin(th) + c(2);

 h = plot(xunit,yunit);
 
 
 x1 = x(15:20,:)
 y1 = y(15:20,:)
 tic,[c,r] =minboundcircle(x1,y1);toc
 [k,v] = convhull(x1,y1);
 xunit = r * cos(th) + c(1);
 yunit = r *sin(th) + c(2);

 h = plot(xunit,yunit);

hold off
polyarea(x,y)