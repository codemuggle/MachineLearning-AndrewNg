function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

m=size(X,1);
n1=1;
n0=1;
for i = 1:m,
    if y(i)==1,
        matrix1(n1,:)=X(i,:);
        n1=n1+1;
    end;
    if y(i)==0,
        matrix0(n0,:)=X(i,:);
        n0=n0+1;
    end;
end;

scatter(matrix1(:,1),matrix1(:,2),'r','+');
scatter(matrix0(:,1),matrix0(:,2));





% =========================================================================



hold off;

end
