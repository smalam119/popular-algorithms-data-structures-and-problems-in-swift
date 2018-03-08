//Sayed Mahmudul Alam
//Add two Linked List digits

//Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
//Output: 7 -> 0 -> 8

class AddTwoLinkList {
    func addBruteForce(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var temp1 = l1
        var temp2 = l2
        var a = 0;
        var b = 0;
        var mul_a = 1
        var mul_b = 1
        let dummy: ListNode = ListNode(0)
        var output: ListNode? = dummy
        
        while temp1 != nil {
            a += temp1!.val * mul_a
            temp1 = temp1!.next
            mul_a = mul_a * 10
        }
        
        while temp2 != nil {
            b += temp2!.val * mul_b
            temp2 = temp2!.next
            mul_b = mul_b * 10
        }
        
        var sum = a + b
        
        while sum != 0 {
            var x = ListNode(sum % 10)
            output!.next = x
            output = output!.next!
            sum = sum / 10
            
        }
        
        return dummy.next
    }

        func add(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var temp1 = l1
        var temp2 = l2
        let dummy: ListNode = ListNode(0)
        var output: ListNode? = dummy
        var carry = 0
        var sumTemp = 0
        
        while temp1 != nil || temp2 != nil {
            
            var sum = 0
            
            if let n = temp1 {
                sum = temp1!.val
                temp1 = temp1!.next
            }
            
            if let n = temp2 {
                sum += temp2!.val
                temp2 = temp2!.next
            }
            
            sum += carry
            carry = sum / 10
            sumTemp = sum
            
            var x = ListNode(sum % 10)
            output!.next = x
            output = output!.next!
        }
        
        if sumTemp / 10 == 1 {
            output!.next = ListNode(1)
        }
        
        return dummy.next
    }
}
