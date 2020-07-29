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
end
l=LinkedList.new(1)
l.add_node_at_last(2)
l.add_node_at_last(4)
l.add_node_at_after_value(2,3)
l.add_node_at_begining(0)
