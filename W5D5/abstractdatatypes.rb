class Stack
    def initialize
      @stack = Array.new
    end

    def push(el)
      @stack.push(el)
    end

    def pop
      @stack.pop
    end

    def peek
      return @stack.first
    end
end

#   stack1 = Stack.new
#   p stack1
#   stack1.push(1)
#   stack1.push(2)
#   stack1.push("array")
#   stack1.push(false)
#   p stack1
#   stack1.pop
#   p stack1
#   p stack1.peek

class Queue
    
    def initialize
        @queue = Array.new
    end

    def enqueue(el)
        @queue.unshift(el)
    end

end