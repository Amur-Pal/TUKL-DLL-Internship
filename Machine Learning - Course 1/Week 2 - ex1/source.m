data = load('ex1data1.txt');
X = data(:,1);
y = data(:,2);

m = length(X);

plotData(X,y);

theta=[0;0];
alpha=0.01;
num_iters=1500;

X = [ones(m,1), X];

cost = computeCost(X,y,theta);
[theta, cost_updated] = gradientDescent(X,y,theta,alpha,num_iters);
