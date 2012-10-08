#!/usr/bin/ruby

class Node
  attr_accessor :data, :next
  
  def initialize(data = nil)
    @data = data
    @next = nil
  end
end

# cpu: O(n^2) mem: O(n)
def has_loop?(node)
  seen = []
  until node.next.nil? do
    return true if seen.include? node
    seen << node
    node = node.next
  end
  false
end

# cpu: O(n) mem: O(1)  #2.5
def has_loop2?(node)
  slow = node
  fast = node
  until slow.next.nil? or fast.next.nil? do
    slow = slow.next
    fast = fast.next.next
    return true if (slow == fast)
  end
  false
end

def rm_node(head, node)
  point = head
  if point == node  # remove head
      head = point.next
      return head
  end
  until point.next.nil? do
      if point.next == node
        point.next = point.next.next 
        return head
      end
      point = point.next
  end
end

# 2.1 rm duplicate nodes
def rm_dup(head)
  seen=[]
  p = head
  until p.next.nil? do
    if seen.include(p)?
        p.next= p.next.next
    else
      seen<<p
      p=p.next
    end  
  end
  return head
end

#2.2 nth to last nodes
def nth2last(head,n)
  c, p = head, head # finally c will be point to nth and return c
  m = 0
  ## c and p distance will be n first
  until p.next.nil? || m >= n do 
      p = p.next
      m++
  end
  until p.next.nil? do
      p = p.next
      c = c.next
  end
  return c
end

#2.3 rm in middle of a node
def rm_node(head, node)
  p = head
  until p.next.nil? do
    if p.next == node
        p.next = p.next.next
    else
        p = p.next
    end
  end
  return head
end

#2.4 linklist x +y
def node_plus(x, y)
  head = Node.new(0,nil)
  r= head
  m = 0
  until x.next.nil? || y.next.nil? do
    tmp = x.data + y.data + m
    m = 0 if m == 1 # reset m to 0
    if tmp >= 10
      r.data = tmp%10
      m = 1
    else
      r.data = tmp
    end
    n=Node.new(0,nil)  # next one
    r.next = n
    r = n
    x = x.next
    y = y.next
  end  
  return head
end

