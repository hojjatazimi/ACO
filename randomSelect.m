function [ selected ] = randomSelect( formons )
%SELECTBEST Summary of this function goes here
%   Detailed explanation goes here
sum_of_formons = sum(formons); 
percentages = ceil((formons .* 100) ./ sum_of_formons);
tmp = [];
for i = 1 : length(formons)
    tmp_ones = ones(1, percentages(i)) .* i;
    tmp = [tmp, tmp_ones];
end
tmp = tmp (randperm(length(tmp)));
selected = tmp(randperm(length(tmp), 1));
end

