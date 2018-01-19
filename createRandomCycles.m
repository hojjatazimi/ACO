function [ random_cycles ] = createRandomCycles( number_of_cities, number_of_ants )
%CREATERANDOMCYCLES Summary of this function goes here
%   Detailed explanation goes here
random_cycles = zeros(number_of_ants, number_of_cities + 1);
for i = 1 : number_of_ants
    tmp = randperm(number_of_cities);
    random_cycles(i, :) = [tmp tmp(1)];
end
end

