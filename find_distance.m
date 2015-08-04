function [ d ] = find_distance( X,Y )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%d = pdist2(X,Y,'euclidean')


d = sqrt( (Y(2)-Y(1))^2 + (X(2) - X(1))^2 )
end

