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
        @queue.push(el)
    end

    def dequeue
        @queue.shift
    end

    def peek
        return @queue.first
    end

end

# queue1 = Queue.new
# p queue1
# queue1.enqueue(1)
# queue1.enqueue(2)
# queue1.enqueue(3)
# queue1.enqueue(4)
# p queue1
# queue1.dequeue
# p queue1
# p queue1.peek

class Map

    def initialize
        @map = Array.new
    end

    def set(key, val)
        if check(key, val) == false
            @map << [key, val]
        end
    end

    def check(key, val)
        @map.each do |subArr| 
            if subArr[0] == key 
                subArr[1] = val
                return true
            end
        end
        false
    end

    def get(key)
        @map.each do |subArr| 
            if subArr.include?(key)
                return subArr
            end
        end
        nil
    end

    def show
        p @map
    end

    def delete(key)
        @map.each_with_index do |subArr, idx|
            if subArr.include?(key)
                @map.delete_at(idx)
            end
        end
    end
end

map1 = Map.new

map1.set(1, 2)
map1.set(3, 4)
p map1
map1.set(3,5)
p map1
p map1.get(3)
map1.show
map1.delete(3)
p map1



