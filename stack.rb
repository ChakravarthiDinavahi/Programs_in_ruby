
def push(a,el,size)
 if a.length == stack_size
   puts "Stack is Full!"
 else
   a.push el
   puts "Pushed  item: #{el} to stack"
 end
 print_current_stack(a)
end

def pop(a)
 if a.length == 0
  puts "Stack is Empty"
 else 
  a.pop
  puts "Popped item: #{el} from stack"
 end
 print_current_stack(a)
end

def print_current_stack(a)
  p "Current stack: #{a.join(", ")}"
end

puts "Please enter stack size"
stack_size = gets.chomp.to_i
a=Array.new(stack_size)  

p "Push element to stack using push method with element"
p "Pop element from stack using pop mmethod"