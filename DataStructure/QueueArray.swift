//Stack
//by Sayed Mahmudul Alam

struct QueueArray {
    
    private var queueSize: Int?
    private var front = 0
    private var rear = -1
    private var array: Array<Int?>
    
    init(queueSize: Int) {
        self.queueSize = queueSize
        array = Array(repeating: nil, count: queueSize)
    }
    
    mutating func enqueue(data: Int) {
        if rear < queueSize! {
            rear += 1
            array[rear] = data
        } else {
           print("Queue is full") 
        }
    }
    
    mutating func dequeue() -> Int? {
        let temp = array[front]
        if rear >= 0 {
           front += 1
           return temp
        } else {
            return nil
        }
    }
    
    mutating func peekFront() -> Int {
        return array[front]!
    }
    
    mutating func isEmpty() -> Bool {
        return queueSize == 0
    }
}