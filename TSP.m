function [ means, mins, final_tour ] = TSP( cities, number_of_ants, max_epochs )
%TSP Summary of this function goes here
%   Detailed explanation goes here
[number_of_cities, ~]= size(cities);
X=cities(:, 1);
Y=cities(:, 2);
distances = calcDistances(cities);
formons = distances;
for i = 1 : number_of_cities
    for j = 1 : number_of_cities
        if formons(i, j) ~= 0
            formons(i, j) = 1 ./ formons(i, j);
        end
    end
end

cycles = createRandomCycles(number_of_cities, number_of_ants);
lengths = calcLength(cycles, distances);



cntr = 0;
p = 0.1;
means = zeros(1, max_epochs);
mins = zeros(1, max_epochs);
while cntr ~= max_epochs
    cntr = cntr +1;
    cycles = calcCycles(ceil(rand(number_of_ants, 1) .* number_of_cities), formons);
    lengths = calcLength(cycles, distances);
    fitnesses = 1 ./ (lengths - (0.97 .* min(lengths))) ;
    formons = (1-p) .* formons;
    formons = updateFormons(formons, cycles, fitnesses);
    means (cntr) = mean(lengths);
    mins (cntr) = min(lengths);
end

[~, index] = min(lengths);
final_tour = cycles(index, :);


end

