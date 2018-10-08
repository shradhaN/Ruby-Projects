

$linked_list = []

class Node 
	attr_accessor :val, :next_node
	def initialize(val,next_node = nil)
		@val = val
		@next_node = next_node
	end
end

alist = Array(1..10)

def to_linked_list(alist)
	if alist.length ==1
		return Node.new(alist[0])
	end
	return Node.new(alist[0], to_linked_list(alist[1..-1]))
end

newNode = to_linked_list(alist)


def traverse(newNode)	
	$linked_list.push(newNode.val)
	return traverse(newNode.next_node) if newNode.next_node
	#return linked_list	
end

traverse(newNode)
puts $linked_list
