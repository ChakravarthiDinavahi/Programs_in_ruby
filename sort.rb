 a=[10, 5, 6, 3, 2, 20, 100, 80]

 l= a.length

(0..l-1).each do |i|
  (1..l-1).each do |j|
    if( a[i] >=a[j] && j!=i )
    a[i],a[j] = a[j], a[i]
    end
  end
end

a=[10, 5, 6, 3, 2, 20, 100, 80]

l= a.length

(0..l-1).each do |i|
 (1..l-1).each do |j|
   if( a[i] <=a[j] && j!=i )
     a[i],a[j] = a[j], a[i]
   end
 end
end
a=[10, 5, 6, 3, 2, 20, 100, 80]

l= a.length

i=0
until i >=l do
  j=2    
  until j >= l do
    if( a[i] <=a[j] && j!=i )
           a[i],a[j] = a[j], a[i]
    end
    j= j+2
  end
  i= i+2
end
a=[10, 5, 6, 3, 2, 20, 100, 80]

l= a.length

i=0
until i <=l do

  if a[i]< a[i+1] && i<l-1

     	a[i+1], a[i] = a[i], a[i+1]
  end
  if a[i-1] > a[i] && i>0
 	a[i-1], a[i] = a[i], a[i-1]
  end
  i = i+2
end


a=[10, 5, 6, 3, 2, 20, 100, 80]

l= a.length

i=0
(0..l-1).each do |i|
p i
	if i+1 != l && a[i] > a[i+1]
	
	     	a[i+1], a[i] = a[i], a[i+1]
	     	i=-1
	end
end




def factorial(n)
  if n==0
    return 1
  end
  n * factorial(n-l) 
end

1. factorial(3)
cal 1 - 3 


f
stack (1) -3 

==============
a = [22, 13 ,12, 1, 9]

lowest1, lowest2 = a[0], a[1]

length = a.length
(2..length -1).each do | i|
  if lowest1 < a[i]
    lowest1, a[i] = a[i], lowest1
  end
  if  
end


a = [1, 3, 5, 7, 9,15, 25, 30]

a.each do |k|
  if K%3 == 0
    print "buzz "
  end
  if k%5 == 0
    print "fuzz"
  end
end

a=10 
b=a
b=11

a= 10
KA = 1


s ="ss"
s =



def user
   valid $use
  @user = User.find 1

end




