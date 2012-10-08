#!/usr/bin/ruby
# Generic stack implementation.

# 3.1, use array to be stack
class Stack

  def initialize
   @the_stack = []
  end

  def push(item)
    @the_stack.push item
  end

  def pop
    @the_stack.pop
  end

  def count
    @the_stack.length
  end
  
  def clear
    @the_stack.clear
  end
  
  def top
    @the_stack.last
  end

# 3.2 min function
  def min
    @the_stack.sort.first
  end
  
  def max
      @the_stack.sort.last
  end
end

stack = Stack.new
stack.push('abc')
stack.push('c')
stack.push('t')
stack.push('a')
stack.push('m')
stack.push('n')
puts stack.min()
puts stack.max()
#puts  stack.top
#puts  stack.count
#puts  stack.pop()
#puts  stack.clear( )
#puts  stack.count