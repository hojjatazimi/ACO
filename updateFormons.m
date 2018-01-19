function [ new_formons ] = updateFormons( formons, cycles, fitnesses )
%UPDATEFORMONS Summary of this function goes here
%   Detailed explanation goes here
[number_of_cycles, number_of_nodes] = size(cycles);
new_formons = formons;
for i = 1 : number_of_cycles
    cycle = cycles(i, :);
    for j = 1 : number_of_nodes - 1
        new_formons (cycle(j), cycle(j+1)) = new_formons (cycle(j), cycle(j+1)) + fitnesses(i);
    end
end
end

