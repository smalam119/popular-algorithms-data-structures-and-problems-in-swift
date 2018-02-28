//BinaryTree
//Sayed Mahmudul Alam

class Node {
    var value: Int?
    var leftChild: Node?
    var rightChild: Node?
    
    init(value: Int) {
        self.value = value
        leftChild = nil
        rightChild = nil
    }
}

class BinaryTree {
    private var root: Node?
    
    init(rootValue: Int) {
        root = Node(value: rootValue)
    }
    
    func insertLeft(value: Int) {
        var temp = Node(value: value)
        if root!.leftChild == nil {
            root!.leftChild = temp
        } else {
            temp.leftChild = root!.leftChild
            root!.leftChild = temp
        }
    }
    
    func insertRight(value: Int) {
        var temp = Node(value: value)
        if root!.rightChild == nil {
            root!.rightChild = temp
        } else {
            temp.rightChild = root!.rightChild
            root!.rightChild = temp
        }
    }
}