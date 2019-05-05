class Node:
    def __init__(self, value):
        self.value = value
        self.next = None

class LinkedList:
    def __init__(self, values):
        if not values:
            return None
        self.head = node = Node(values[0])
        for num in values[1:]:
            node.next = Node(num)
            node = node.next

    def traverse(self):
        node = self.head
        while node:
            print(node.value)
            node = node.next

llist = LinkedList([2,1,4,3,5])
llist.traverse()
