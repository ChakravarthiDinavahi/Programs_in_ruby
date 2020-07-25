class Queue
 def initialize()
  @queue = []
  @front = 0
  @rear = 0
  @max_queu_size = 3
 end

 def enqueu(elem)
   if @queue.length != @max_queu_size
    @queue << elem
    @rear+=1
   else
    puts "Queue is Full, Dequeue the Queue"
   end
 end

 def dequeue
   if @queue.length !=0
    @queue.shift(1)
    @front+=1
   else
    puts "Queue is Empty, Enqueue the Queue"
   end 
 end

 def display
   puts "Front at #{@front}"
   puts "Reat at #{@rear}"
   puts "Queue at #{@queue}"
 end
end