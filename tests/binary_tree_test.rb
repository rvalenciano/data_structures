require 'test/unit'
require_relative '../structures/binary_tree'

class BinaryTreeTest < Test::Unit::TestCase
  def setup
   	# initialize the list with one element
    @bt = BinaryTree.new(10)
  end

  def teardown
    
  end

  def test_add_1
    assert_equal(true, @bt.add(12))
  end

  def test_add_2
    assert_equal(true, @bt.add(5))
  end

  def test_preorder
  	@bt.add(12)
  	@bt.add(14)
  	@bt.add(11)
  	@bt.add(5)
  	assert_equal('5 10 11 12 14 ', @bt.preorder_traversal(@bt.root, ''))
  end
end
