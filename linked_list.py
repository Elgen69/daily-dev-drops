# linked_list.py
# Simple singly linked list implementation

class Node:
    def __init__(self, data):
        self.data = data
        self.next = None

class LinkedList:
    def __init__(self):
        self.head = None

    def insert(self, data):
        new = Node(data)
        if not self.head:
            self.head = new
        else:
            current = self.head
            while current.next:
                current = current.next
            current.next = new

    def display(self):
        current = self.head
        while current:
            print(current.data, end=" -> ")
            current = current.next
        print("None")

    def delete(self, key):
        current = self.head
        prev = None
        while current:
            if current.data == key:
                if prev:
                    prev.next = current.next
                else:
                    self.head = current.next
                return True
            prev = current
            current = current.next
        return False

if __name__ == "__main__":
    ll = LinkedList()
    ll.insert("A")
    ll.insert("B")
    ll.insert("C")
    ll.display()
    ll.delete("B")
    ll.display()
