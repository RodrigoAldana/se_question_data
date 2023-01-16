clear all;
close all;
clc;
load data

n = 400;
m = size(M,1);

theta = randn(n,1);
w = 5*randn(m,1);  
x = M*theta + w;

est_theta1 = inv(M'*M)*M'*x;
est_theta2 = M_special*x;

std1 = sqrt((est_theta1-theta)'*(est_theta1-theta)/n),
std2 = sqrt((est_theta2-theta)'*(est_theta2-theta)/n),