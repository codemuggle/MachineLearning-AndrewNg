function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%

for i=1:K
    count=0;
    for j=1:m     %j用来遍历idx
        if  idx(j)==i
            count=count+1;
            centroids(i,:)= (centroids(i,:)*(count-1)+X(j,:))./count;
            j=j+1;
        else
            j=j+1;
        end
    end
end


%第二种方法（向量化表示）  
% for i = 1 : K  
%     centroids(i, :) = (X' * (idx == i)) / sum(idx == i);      
%     (idx ==i)目的是将不是i值的X中对应数据变为0.  
% end  
  


% =============================================================


end

