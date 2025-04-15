def add_two_numbers(l1, l2)
    if l1.nil? && l2.nil?
        return
    end

    l1 = l1.nil? ? ListNode.new(0) : l1
    l2 = l2.nil? ? ListNode.new(0) : l2

    result = l1.val.to_i + l2.val.to_i
    if result > 9
        next_node = l1.next
        if next_node.nil?
            next_node = ListNode.new(0)
        end
        next_node.val += 1
        l1.next = next_node
    end
    ListNode.new(result.to_s[-1], add_two_numbers(l1.next, l2.next))
end
