class Node
  attr_accessor :left, :right, :value

  def initialize(value)
  	@value = value
  	@left = nil
  	@right = nil
  end

end
class BinaryTree
  attr_accessor :root

  def initialize(value)
     @root = Node.new(value)
  end

  def add(value)
  	inserted = false
    if @root == nil
      @root = Node.new(value)
      inserted = true
    else
      current = @root
      while current != nil && !inserted
      	if value > current.value
      	  if current.right == nil
      	    # insert here
      	    current.right = Node.new(value)
      	    inserted = true
      	  else
           current = current.right
      	  end
      	else
          if current.left == nil
      	    # insert here
      	    current.left = Node.new(value)
      	    inserted = true
      	  else
           current = current.left
      	  end
      	end
      end
    end
    inserted
  end

  def preorder_traversal(node, l)
    if node != nil
      puts "VISITING node : #{node.value} and l is #{l}"
      l = l + "#{node.value} "
      preorder_traversal(node.left, l)
      preorder_traversal(node.right, l)
    end
    l
  end

  def postorder_traversal(node, l)
  	if node != nil
      preorder_traversal(node.left, l)
      preorder_traversal(node.right, l)
      l = l + "#{node.value} "
    end
  end

  def inorder_traversal(node, l)
  	if node != nil
      preorder_traversal(node.left, l)
      l = l + "#{node.value} "
      preorder_traversal(node.right, l)
    end
  end
end
