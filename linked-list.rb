class Node
  attr_accessor :value, :next

  def initialize(value)
    self.value = value
    self.next = nil
  end

  def traverse_list()
    puts self.value
    self.next.traverse_list() if self.next
  end
end

def create_linked_list(values)
  return nil if values.empty?
  head = node = Node.new(values.shift)
  values.each do |num|
    node.next = Node.new(num)
    node = node.next
  end
  head
end

head = create_linked_list([2,1,4,3,5])
head.traverse_list()
