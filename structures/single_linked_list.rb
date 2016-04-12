class Node
  attr_accessor :value, :next
  def initialize(value, next_node = nil)
    @value = value
    @next = next_node
  end
end
class SingleLinkedList
  
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end
 
  # @params value [Object]
  def initialize(value)
    @head = Node.new(value)
    @tail = @head
  end

  # @params value [Object] is added to the single linked list
  # at the end of the list
  # O(1) operation
  def add(value)
  	new_node = Node.new(value)
  	if @head.nil?
      @head = new_node
      @tail = @head 
  	else
      @tail.next = new_node
      @tail = new_node
  	end
  end

  # @params value [Object]
  # O(N) operation
  # @returns the number of node where the position is stored.
  def search(value)
  	current = @head
  	found = false
  	index = -1
  	while !current.nil? && !found
      found = true if current.value == value
  	  index += index
  	end
  	index
  end

  # @params value [Object] to be deleted
  # O(N) operation
  # returns true if succesful; false otherway
  def delete(value)
    deleted = false
    unless @head == nil
      if @head.value == value
      	if @head == @tail
      	  @head = nil
  	      @tail = nil
  	    else
          @head = @head.next
      	end
  	    deleted = true
  	  else
  	  	current = @head
  	    while !current.nil? && current.next.value != value
          current = current.next
        end
  	    if current.next != nil
          if current.next == @tail
            current.next = nil
            @tail = current
          else
          	current.next = nil
            current.next = current.next.next
          end
          deleted = true
  	    end
  	  end
    end
  	deleted
  end

  def delete_list
    @head = nil
    @tail = nil
  end

  # Prints all node values. 
  # O(N) Operation
  def print
  	list = ''
  	current = @head
  	while !current.nil?
      list = list + "#{current.value}"
      list = list + ' ' if current.next != nil 
      current = current.next
  	end
  	list
  end
end
