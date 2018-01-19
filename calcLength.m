function [ lengths ] = calcLength( cycles, distances )
%CALCLENGTH Summary of this function goes here
%   Detailed explanation goes here
[number_of_cycles, number_of_nodes] = size(cycles);
lengths = zeros (number_of_cycles, 1);
for i = 1 : number_of_cycles
    cycle = cycles (i, :);
    for j = 1 : number_of_nodes - 1
        lengths(i, 1) = lengths(i, 1) + distances(cycle(j), cycle(j+1));
    end
end
end

