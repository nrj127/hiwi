function [c1,r1,c2,r2,some1,some2,new_list1_x,new_list1_y,new_list2_x,new_list2_y] = do_splitting( x,y,k,sortIndex,c)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

line = [x(k(sortIndex(1))) y(k(sortIndex(1)))  x( k(sortIndex(1)+1) )  y(k(sortIndex(1)+1) )]
[new_point] = projPointOnLine([c(1) c(2)] ,line)

line2 = [x(k(sortIndex(2))) y(k(sortIndex(2)))  x(k(sortIndex(2)+1))  y(k(sortIndex(2)+1))]
[new_point_2] = projPointOnLine([c(1) c(2)] ,line2)

new_list1_x = [new_point(1) x(k(2:4))   new_point_2(1)]
new_list1_y =  [new_point(2) y(k(2:4))  new_point_2(2) ]

new_list2_x = [new_point_2(1) x(k(1))   new_point(1)]
new_list2_y =  [new_point(2) y(k(1))  new_point(2) ]


[c1 r1] = minboundcircle(new_list1_x, new_list1_y)
some=plot_circles(c1,r1)
some1 = some
[c2 r2] = minboundcircle(new_list2_x, new_list2_y)
some=plot_circles(c2,r2)
some2 = some

end

