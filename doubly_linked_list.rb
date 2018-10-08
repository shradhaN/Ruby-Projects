class Node
	
	attr_accessor :prev_node, :val, :next_node

	def initialize(val, next_node = nil, prev_node =nil)
		@prev_node = prev_node
		@val = val
		@next_node = next_node
		
	end

	def val
		@val
	end

end

alist = Array(1..10)

def to_doubly_linked_list(alist)	
	if alist.length == 1
		return Node.new(alist[0])
	end
	return Node.new(alist[0], to_doubly_linked_list(alist[1..-1]),to_doubly_linked_list(Array(alist[0]-1)))
end


newNode = to_doubly_linked_list(alist)


#puts newNode.next_node.next_node.prev_node.val

def traverse_right(newNode)
	double_linked_list = []
	while newNode
		double_linked_list.push(newNode.val)
		newNode = newNode.next_node
	end
	return double_linked_list
end

def traverse_left(newNode)
	double_linked_list_left =[]
	while newNode
		double_linked_list_left.push(newNode.val)
		newNode = newNode.prev_node
	end
	return double_linked_list_left
end

double_linked_list = traverse_left(newNode)
puts double_linked_list




