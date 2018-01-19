function [ cycles ] = calcCycles( startNodes, formons )
%CALCCYCLES Summary of this function goes here
%   Detailed explanation goes here
[number_of_cities, ~] = size(formons);
[number_of_cycles, ~] = size(startNodes);
cycles = zeros(number_of_cycles, number_of_cities + 1);
for i = 1 : number_of_cycles
    current_node = startNodes(i);
    cycle = [current_node];
    selected = zeros(1, number_of_cities);
    selected(current_node) = 1;
    for j = 1 : number_of_cities -1
        tmp_formons = formons(current_node, :);
        next_node = current_node;
        while selected (next_node) == 1
            next_node = randomSelect(tmp_formons);
        end
        selected(next_node) = 1;
        current_node = next_node;
        cycle = [cycle, current_node];
    end
    cycles(i, :) = [cycle, startNodes(i)];
end
end

