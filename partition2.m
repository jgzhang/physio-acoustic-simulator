function out = partition2( count)
%PARTITION2 Summary of this function goes here
%   outputs list of partitions that increase in size exponentially.
%   if partition one is of size 1, the following partitions will be of size
%   2,4,8,16 etc.
if(size(count) ~= 1)
    error('variable count must be a single integer)');
end


sum = 1;
temp = 1;
for i=1:count-1;
    temp = temp *2;
    sum = sum + temp;
    fprintf('sum:%d temp:%d \n', sum, temp);
end

temp = 1;
temp1 = 10000 / sum;

out = [];

sum1 = 0;

for i=1:count;
    out = [out;sum1 (sum1 + temp*temp1)];
    sum1 = sum1 + temp*temp1;
    temp = temp * 2;
end
