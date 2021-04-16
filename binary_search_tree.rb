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
    @root = nil
    constuct
    traversals
  end

  def constuct
    puts "tree with 5 nodes construction started"
    @root = Node.new(1)
    @root.left =Node.new(2)
    @root.right = Node.new(3)
    @root.left.left = Node.new(4)
    @root.left.right = Node.new 5
    puts "tree with 5 nodes construction done"
  end

  def traversals
    preorder = preorder(@root)
    puts "Preorder traversal of trees is #{preorder.join(",")}"
    inorder = inorder(@root)
    puts "Inorder traversal of trees is #{inorder.join(",")}"
    postorder = postorder(@root)
    puts "Postorder traversal of trees is #{postorder.join(",")}"
  end

  def preorder(node)
    #Root, Left and Right
    if node.left == nil || node.right == nil
     return node.value
    end
    return [node.value,preorder(node.left),preorder(node.right)].flatten
  end


  def postorder(node)
    #Left and Right, root
    if node.left == nil || node.right == nil
      return node.value
     end
     return [postorder(node.left),postorder(node.right),node.value].flatten
  end

  def inorder(node)
    #Left, root and Right
    if node.left == nil || node.right == nil
      return node.value
    end
     return [inorder(node.left),node.value,inorder(node.right)].flatten
  end

end

BinarySearchTree.new
