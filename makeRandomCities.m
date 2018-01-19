function [ cities ] = makeRandomCities( number_of_cities )
%MAKERANDOMCITIES Summary of this function goes here
%   Detailed explanation goes here

X = zeros (number_of_cities,1);
Y = zeros (number_of_cities,1);
for i=1:number_of_cities
    X(i)=fix(rand*20);
    Y(i)=fix(rand*20);
end
cities = [X, Y];
end

