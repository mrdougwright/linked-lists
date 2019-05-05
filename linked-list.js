class Node {
  constructor(value, next) {
    this.value = value
    this.next = null
  }
}

class LinkedList {
  constructor(values) {
    if (values.length === 0) return null
    let node = this.head = new Node(values.shift())
    values.forEach((num) => {
      node.next = new Node(num)
      node = node.next
    })
    this.head
  }

  traverse() {
    let node = this.head
    while (node) {
      console.log(node.value)
      node = node.next
    }
  }
}

let llist = new LinkedList([2,1,4,3,5])
llist.traverse()
