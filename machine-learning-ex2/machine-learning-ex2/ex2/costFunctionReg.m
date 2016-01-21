function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

J1 = (1/m)*(log(sigmoid(X*theta))'*(-y)-log(1-sigmoid(X*theta))'*(1-y));
theta1 = theta(1)
theta(1) = 0
J0 = (lambda*sum(theta.^2))/(2*m)
theta(1) = theta1
J = J1 + J0

grad0 = (1/m)*((sigmoid(X*theta)-y)'*X(:,1));
grad1 = (1/m)*(X'*(sigmoid(X*theta)-y))+(lambda*theta)/m;
grad = [grad0; grad1(2:size(grad1))]

% =============================================================

end
