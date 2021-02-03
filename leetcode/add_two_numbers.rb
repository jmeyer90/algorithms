require 'byebug'

# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
    sum = sum_from_list(l1)
    sum += sum_from_list(l2)
    digit = Math.log(sum, 10).floor
    # debugger
    list_from_sum(sum, digit)
end

def list_sum(list_node, digit=0)
    unless list_node.next
        return list_node.val*(10**digit)
    end
    
    sum = list_sum(list_node.next, digit+1)
    sum + list_node.val*(10**digit)
end

def list_from_sum(sum, digit, current = 0)
    if current == digit
        return ListNode.new(sum) 
    end
    
    val = sum / (10**current)
    rest = sum % (10**current)
    current += 1
    
    next_node = list_from_sum(val, digit, current)
    ListNode.new(val, next_node)
end

l1 = ListNode.new(3)
l2 = ListNode.new(4, l1)
l3 = ListNode.new(2, l2)
l4 = ListNode.new(4)
l5 = ListNode.new(6, l4)
l6 = ListNode.new(5, l5)

puts add_two_numbers(l3, l6).val