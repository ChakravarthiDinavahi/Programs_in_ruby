
class Node
  attr_accessor :value
  attr_accessor :next
  def initialize(value)
    @value = value
    @next=nil
  end
end

def condense(head)
    s = Set.new
    current = head
    prev = nil

    while current
        if s.include?(current.value)
          p"yes"
            prev.next = current.next
        else
            s.add(current.value)
            prev = current   
        end
        current = current.next
    end
    head
end


root = Node.new(1)
root.next = Node.new(2)
root.next.next = Node.new(2)
root.next.next.next = Node.new(3)
c=condense(root)
