class Node
  attr_accessor :value
  attr_accessor :left
  attr_accessor :right

  def initialize(value)
      @value = value
      @left = nil
      @right = nil
  end
end


class BinarySearchTree
  def initialize
  @n1 = nil
  end

  def self.constuct
    @n1 = Node.new(1)
    @n1.left =Node.new(2)
    @n1.right = Node.new(3)
    @n1.left.left = Node.new(4)
    @n1.left.right = Node.new 5
  end

  def self.pre_order(node)
    #Root, Left and Right
    if node.left == nil || node.right == nil
     return node.value
    end
    return [node.value,pre_order(node.left),pre_order(node.right)].flatten
  end


  def self.post_order(node)
    #Left and Right, root
    if node.left == nil || node.right == nil
      return node.value
     end
     return [post_order(node.left),post_order(node.right),node.value].flatten
 
  end

  def self.inorder_order(node)
    #Left, root and Right
    if node.left == nil || node.right == nil
      return node.value
    end
     return [inorder_order(node.left),node.value,inorder_order(node.right)].flatten
  end

end
# BST construction
n1 = Node.new(1)
n1.left=Node.new(2)
n1.right=Node.new(3)
n1.left.left = Node.new(4)
n1.left.right =Node.new 5

BinarySearchTree.pre_order(n1)
BinarySearchTree.post_order(n1)
BinarySearchTree.inorder_order(n1)
