require 'test/unit'
require_relative '../structures/single_linked_list'

class SingleLinkedListTest < Test::Unit::TestCase
   def setup
   	# initialize the list with one element
   	@sl = SingleLinkedList.new(10)
   end

   def teardown
    @sl.delete_list
   end

  def test_add
  	@sl.add(2)
    assert_equal('10 2', @sl.print)
  end

  def test_print
    assert_equal('10', @sl.print)
  end

  def test_add_2
  	@sl.add(-99)
  	@sl.add(5)
    assert_equal('10 -99 5', @sl.print)
  end

  def test_delete
  	@sl.delete(10)
    assert_equal('', @sl.print)
  end

  def test_delete_2
  	@sl.add(-99)
  	@sl.add(5)
  	@sl.delete(5)
    assert_equal('10 -99', @sl.print)
  end

end
