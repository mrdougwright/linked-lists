class Node
  attr_accessor :value, :next

  def initialize(value)
    self.value = value
    self.next = nil
  end
end

class LinkedList
  attr_accessor :head

  def initialize(values)
    return nil if values.empty?
    self.head = node = Node.new(values.shift)
    values.each do |num|
      node.next = Node.new(num)
      node = node.next
    end
    self.head
  end

  def traverse()
    node = self.head
    while node
      puts node.value
      node = node.next
    end
  end
end

llist = LinkedList.new([2,1,4,3,5])
llist.traverse()
