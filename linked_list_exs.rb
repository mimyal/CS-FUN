# Given a linked list, find a value inside it.

class LinkedList

  attr_accessor :next_node, :value

  def initialize(data, next_node = nil)
    @value = data
    @next_node = next_node
  end
end

def find_value(linked_list, value)
  while linked_list.next_node != nil
    if linked_list.value == value
      return true
    end
    linked_list = linked_list.next_node
  end
  return false
end

def find_node(linked_list, node_number)
  i = 0
  ll = linked_list
  until i==node_number
    ll = ll.next_node
  end
  return ll.value
end

#To find the nth node value from the end
def find_node_reverse(ll, reverse_node_num)
  #Code at home (batteries running out)
end

lin_E = LinkedList.new(6)
lin_D = LinkedList.new(12, lin_E)
lin_C = LinkedList.new(2, lin_D)
lin_B = LinkedList.new(15, lin_C)
lin_A = LinkedList.new(1, lin_B)
ll = LinkedList.new(3, lin_A)

if find_value(ll, 2) == true && find_value(ll, 120) == false
  puts "The linked list find method found 2 and did not find 120 correctly"
end

if  find_node(ll,0) == 3
  puts "Found the first node using find_node"
end

if find_node(ll, 2) == 15
  puts "Found value 15 in the correct link using find_node"
end


