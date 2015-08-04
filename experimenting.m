% x = [4 3 6 7 1 8];
% y = [9 2 3 3 1 4];
% distance=[]
% [k,v] = plot_polygon(x,y)
% [c,r] = minboundcircle(x,y)
% plot_circles(c,r)
% [m,n] = size(x)
% [m1,n1] = size(k)

%for var= 1:5

function[new_list1_x,new_list1_y,new_list2_x,new_list2_y] = start_split(x,y,m1,k)
%for my_val = 1:13

    for i=1:m1
    if i~=m1
%X= [x(k(i:i+1));y(k(i:i+1))]
d=find_distance(x(k(i:i+1)), y(k(i:i+1)))
distance = [distance;d]
    end
end
distance = distance'

[sortedValues,sortIndex] = sort(distance,'descend');
%for k=1:2
%if k=1
    [c1,r1,c2,r2,some1,some2,new_list1_x,new_list1_y,new_list2_x,new_list2_y ]=do_splitting(x,y,k,sortIndex,c)
    %x = new_list1_x
    %y = new_list1_y
%     [k,v] = convhull(x,y)
%     [m1,n1] = size(k)
%     distance = []
%end
     
%end
%else
 %   [c1,r1,c2,r2,some1,some2,new_list1_x,new_list1_y,new_list2_x,new_list2_y ]=do_splitting(x,y,k,sortIndex,c)
%end


% x(k) = new_list1_x
% y(k) = new_list1_y

%index = find(distance==max(distance))

%new_point_list1_x = abs(  x(k(index)) - x(k(index+1))    )/2 
%new_point_list1_y = abs(  y(k(index)) - y(k(index+1))    )/2 

%list1_x = insertAt(x(k),new_point_list1_x,2)
%list1_y =  insertAt(y(k),new_point_list1_y,2)

%line = [x(k(sortIndex(1))) x(k(sortIndex(1))+1 )  x(k(sortIndex(2)))  x(k(sortIndex(2))+1 ) ]


%end
%line = [0 2 2 1];
%projPointOnLine([3 1], line)



%[k v] = convhull(list1_x,list1_y)

%angle = find_angle
% for i = 1:n
% for j = 1:n1
% if(x(i)==k(j))
% new_list_x(j) = x(i)
% end
% end
% end

%new_x = x(k)
%new_y = y(k)