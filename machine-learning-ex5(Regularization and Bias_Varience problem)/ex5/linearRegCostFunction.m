function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
hyp = X * theta;
J = 1/(2*m) * (sum((hyp - y).^2) + lambda * (sum(theta.^2) - theta(1).^2));

theta(1) = 0;
##grad(1) = 1/m * (X(1,:)' * (hyp(1,:)-y(1,:)))
grad = 1/m * (X' * (hyp-y)) + (1/m) * lambda * (theta);

%               You should set J to the cost and grad to the gradient.
%












% =========================================================================

grad = grad(:);

end
