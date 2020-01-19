#Recurrennce Approach
def fibo_recur(n)
  if n==1 || n==2
    result = 1
  else
    result = fibo(n-1)+fibo(n-2)
  end
  return result
end

# Memioze Approach
def fibo_memoize(n,memo)
  if memo[n] != nil
    return memo[n]
  elsif n==1 || n==2
    result= 1
  else
    memo[n-1] =result = fibo_memoize(n-1,memo)+fibo_memoize(n-2,memo)
    result
  end
end

# Bottom up Approach
def fibo_loop(n)
  a=[]
a[0] =1
a[1] =1
  (2..n).each do |i|
  a[i] = a[i-1]+a[i-2]
  end
  a[n-1]
end
