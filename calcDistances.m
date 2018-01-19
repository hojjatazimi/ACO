function [ distances ] = calcDistances( cities )
%CALCDISTANCES Summary of this function goes here
%   Detailed explanation goes here
[number_of_cities,  ~] = size(cities);
distances = zeros(number_of_cities);
for i = 1 : (number_of_cities - 1)
    for j = i + 1 : (number_of_cities )
        distances (i, j) = sqrt(((cities(i, 1) - cities(j, 1)) .^ 2) + ((cities(i, 2) - cities(j, 2)).^2));
        distances (j, i) = distances (i, j);
    end
end

end

