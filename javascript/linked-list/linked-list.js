export class Node {
  constructor(value){
    this._value = value
    this._previous = null
    this._next = null
  }

  set previous(previous){
    this._previous =  previous
  }

  set next(next){
    this._next =  next
  }

  get value(){
    return this._value
  }

  get previous(){
    return this._previous
  }

  get next(){
    return this._next
  }
}

export class LinkedList {
  constructor(){
    this.head = null
    this.tail = null
    this.numberOfElements = 0
  }

  push(value) {
    let node = new Node(value)
    if (this.head  ==  null){
      this.head = node
    } else {   
      this.tail.next = node
      node.previous = this.tail
    }
    this.tail = node 
    this.numberOfElements++
  }

  pop() {
    let removedNode  = this.tail
    this.tail = removedNode.previous
    this.numberOfElements--
    return removedNode.value
  }

  shift() {
    let removedNode  = this.head
    this.head = removedNode.next
    this.numberOfElements--
    return removedNode.value
  }

  unshift(value) {
    let node = new Node(value)

    if (this.tail  ==  null){
      this.tail = node
    } else {   
      this.tail.previous = node
      node.next = this.head
    }
    this.head = node
    this.numberOfElements++
  }

  delete(element) {
    if(this.head.value == element){
      this.head = this.head.next
      this.numberOfElements--
    } else {
      let currentElement = this.head
      while(currentElement != null && currentElement.next != null) {
        currentElement = currentElement.next
        if(currentElement.value == element)  {
          if(this.tail.value  == element) {
            this.tail = currentElement.previous
          } else {
            currentElement.previous.next = currentElement.next
            currentElement.next.previous = currentElement.previous
          }
          this.numberOfElements--
          break
        }
      }
    }
  }

  count() {
    return this.numberOfElements
  }
}
