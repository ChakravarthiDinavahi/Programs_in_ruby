class Node
 attr_accessor :next
 attr_reader   :value

 def initialize(value)
  @value = value
  @next = nil
 end
end

class LinkedList
 def initialize(value)
  @head = Node.new(value)
 end

 def add_node_at_begining(value)
  node = Node.new(value)
  node.next = @head
  @head = node

 end
 
 def add_node_at_last(value)
  current_node = @head
  while current_node.next != nil
   current_node = current_node.next
  end
  node = Node.new(value)
  current_node.next = node 

 end

 def add_node_at_after_value(pos_val, value)
  current_node = @head
  node = Node.new(value)
  while current_node.value != pos_val
   current_node = current_node.next
  end
  node.next =current_node.next
  current_node.next = node
 end 

 def remove_node_at_begining
  @head = @head.next
 end

 def remove_node_at_end
  current_node = @head
  while current_node.next.next != nil
   current_node = current_node.next
  end
  current_node.next = nil
 end

 def remove_node_after_pos(pos_val)
  current_node = @head
  while current_node.value != pos_val
   current_node = current_node.next
  end
  current_node.next = current_node.next.next
 end

 def traverse
  current_node = @head
  while current_node.next != nil
   p current_node.value
   current_node = current_node.next
  end
  p current_node.value

 end
end
l=LinkedList.new(1)
p "Linked list with head 1"
l.add_node_at_last(2)
p "node added 2 after head 1"
l.add_node_at_last(4)
p "node added 4 after head 2"
l.add_node_at_after_value(2,3)
p "node added 2 after head 3"
l.add_node_at_begining(0)
p "Linked list with head changed 0"

l.traverse

l.remove_node_at_begining
l.remove_node_at_end
l.remove_node_after_pos(2)

l.traverse
