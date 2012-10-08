#!/usr/bin/ruby
# Generic Queue implementation.
# 3.1, use array to be Queue
class Queue

  def initialize
   @the_q = []
  end

  def enq(item)
    @the_q.push item
  end

  def defq
    @the_q.shift
  end

  def count
    @the_q.length
  end
  
  def clear
    @the_q.clear
  end
  
  def top
    @the_q.first
  end

# 3.2 min function
  def min
    @the_q.sort.first
  end
  
  def max
      @the_q.sort.last
  end
end

q = Queue.new
q.enq('c')
q.enq('t')
q.enq('a')
q.enq('m')
q.enq('n')
puts q.top()
puts q.defq()
puts q.top()
puts q.min()
puts q.max()