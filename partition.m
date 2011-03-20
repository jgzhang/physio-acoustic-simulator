% Physio-Acoustic Simulator
%
% Code for partitioning a range of frequencies
% using linearly growing range sizes

function out = partition(count, max)
%PARTITION Summary of this function goes here
%   outputs list of partitions that increase in size exponentially.
%   if partition one is of size 1, the following partitions will be of size
%   2,3,4,5 etc.

if nargin < 2; max = 10000; end

if(size(count) ~= 1)
    error('variable count must be a single integer)');
end


sum = 0;
for i=1:count;
    sum = sum + i;
end

temp = (max-1) / sum;

out = [];

sum = 0;

for i=1:count;
    out = [out;sum (sum + i*temp)];
    sum = sum + i*temp;
end