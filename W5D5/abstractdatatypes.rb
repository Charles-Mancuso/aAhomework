  class Stack
    def initialize
      @stack = Array.new
    end

    def push(el)
      @stack.push(el)
    end

    def pop
      # removes one element from the stack
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
    end
  end

  stack1 = Stack.new
  p stack1
  stack1.push(1)
  p stack1