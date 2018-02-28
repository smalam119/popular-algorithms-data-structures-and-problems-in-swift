//BinaryTree
//Sayed Mahmudul Alam

class Node {
    var value: Int?
    var leftChild: BinaryTree?
    var rightChild: BinaryTree?
    
    init(value: Int) {
        self.value = value
        leftChild = nil
        rightChild = nil
    }
}