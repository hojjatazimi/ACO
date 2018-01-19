clear;
clc;


number_of_ants = 10;
cities = makeRandomCities(10);    
max_epochs = 500;

[means, mins, final_tour] = TSP(cities, number_of_ants, max_epochs);





disp(final_tour);
disp(mins(length(mins)));
disp(min(mins));

X = cities(:, 1);
Y = cities(:, 2);
subplot(3,1,1);
plot(X, Y,'o','MarkerFaceColor','b','MarkerEdgeColor','r','MarkerSize',10);
title('Coordinates of Cities');
xlabel('x  (km)');
ylabel('y  (km)');
hold on;
plot(X(final_tour), Y(final_tour));
hold off;
subplot(3,1,2);
plot(means, '.-');
title('Average of tour distance vs Number of iterations');
xlabel('iteration');
ylabel('distance (km)');
% 
subplot(3,1,3);
plot(mins, '.-');
title('Minimum of tour distance vs Number of iterations');
xlabel('iteration');
ylabel('distance (km)');




