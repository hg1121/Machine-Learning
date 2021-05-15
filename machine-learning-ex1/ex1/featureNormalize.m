function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

mu = mean(X); %If x is a matrix, compute the mean for each column and return them in a row vector.
sigma = std(X); %If x is a matrix, compute the standard deviation for each column and return them in a row vector.

% Loop through all features of X, normalize the value and store it in X_norm.
% ====================== YOUR CODE HERE ======================
for i = 1:size(X, 1),
	for j = 1:size(X,2),
		X_norm(i,j) = (X_norm(i,j) - mu(j)) / sigma(j);

end

end	

% for i = 1:size(X, 2),
%     norm = (X(:, i) - mu(i)) / sigma(i); % 对每一列进行feature normalization
% 	X_norm(:, i) = norm;
% end
	

% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 



%
% Hint: You might find the 'mean' and 'std' functions useful.
%       









% ============================================================

end
