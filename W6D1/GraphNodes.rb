require 'set'
require 'byebug'

class GraphNode

    attr_reader :parent, :value
    attr_accessor :neighbors

    def initialize(val)
        @parent = nil
        @neighbors = []
        @value = val
    end

    def inspect
        @value
    end

    def bfs(starting_node, target_value)
        queue = [starting_node]
        visited = Set.new()

        until queue.empty?
            node = queue.shift
            unless visited.include?(node)
                return node.value if node.value == target_value
                visited.add(node)
                queue += node.neighbors
            end
        end
    
        return nil
    end
end


a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

p a.bfs(a, "f")