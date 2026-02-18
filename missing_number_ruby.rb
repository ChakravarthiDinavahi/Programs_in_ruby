
# find missing number

a= [1, 3,5,4]
n=5

# Sum

sum_of_n = (n*(n+1))/2

missing_num = sum_of_n - a.sum


a= [1, 3,5,4]
n=5
# XOR
x1 = 0
x2 = 0
(0..n-2).each do |i|
x1 = x1^a[i]
end
(1..n).each do |i|
x2 = x2^i
end

missing_num= x1^x2


