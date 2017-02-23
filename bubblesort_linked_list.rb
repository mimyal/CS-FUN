class LinkedList
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

def sort_linked(list)
  first = list
  list_length = 0
  counter = 0
  sort_counter = 0 # to break us out of the loop eventually we need this OR see while loop
  begin
    sort_counter = 0
    while list.next_node != nil # HERE we can optimize by reducing counter from length instead of looking for nil
      puts "Counter#{counter}"
      if list.value > list.next_node.value
        max_value = list.value
        list.value = list.next_node.value
        list.next_node.value = max_value
      else # elsif list.value <= list.next_node.value
        sort_counter +=1
        puts "SORT COUNTER #{sort_counter}"
      end
      counter +=1
      list = list.next_node
      #Dont change list_length except throughout the first time
      if list_length == 0 || counter >= list_length + 1
        list_length = counter
        puts "LENGTH #{list_length}"
      end
    end #while
    list = first
    counter = 0
  end while counter < list_length && sort_counter != list_length
  return first
end

def test_sort
  lin_E = LinkedList.new(6)
  lin_D = LinkedList.new(12, lin_E)
  lin_C = LinkedList.new(2, lin_D)
  lin_B = LinkedList.new(15, lin_C)
  lin_A = LinkedList.new(1, lin_B)
  lin_root = LinkedList.new(3, lin_A)

  ll = sort_linked(lin_root)
  puts [ll.value, ll.next_node.value, ll.next_node.next_node.value, ll.next_node.next_node.next_node.value, ll.next_node.next_node.next_node.next_node.value, ll.next_node.next_node.next_node.next_node.next_node.value]
  return ll
end
