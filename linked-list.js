class Node {
  constructor(value, next) {
    this.value = value
    this.next = null
  }

  traverseList() {
    console.log(this.value)
    if (this.next) {
      this.next.traverseList()
    }
  }
}

const createLinkedList = (values) => {
  if (values.length === 0) return null
  let head = node = new Node(values.shift())
  values.forEach((num) => {
    node.next = new Node(num)
    node = node.next
  })
  return head
}

let head = createLinkedList([2,1,4,3,5])
head.traverseList()
