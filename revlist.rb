class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end



def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end



class Stack
    attr_reader :data

    def initialize
        @data = nil
    end


    def push(value)
      @data = LinkedListNode.new(value, @data)
    end


    def pop
      if @data.value == nil
        return print "nil"
      end  
      print "#{@data.value}"
  
      @data = @data.next_node
    end

end


def reverse_list(list)
    stack = Stack.new

    while list
      stack.push(list.value) 
      list = list.next_node
    end

    return stack.data
end



node1 = LinkedListNode.new(1)
node2 = LinkedListNode.new(2, node1)
node3 = LinkedListNode.new(3, node2)


print_values(node3)

puts "-------"

revlist = reverse_list(node3)

print_values(revlist)







