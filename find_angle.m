function [ angle] = find_angle(x1,y1,x2,y2,x3,y3 )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

angle = atan2(abs((x2-x1)*(y3-y1)-(x3-x1)*(y2-y1)),(x2-x1)*(x3-x1)+(y2-y1)*(y3-y1));
end

