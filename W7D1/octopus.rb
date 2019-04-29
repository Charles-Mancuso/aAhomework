def sluggish_octopus(fishes)
    idx = 0
    fishes.each_with_index do |fish1, idx1|
        fishes.each_with_index do |fish2, idx2|
            if idx2 > idx1
                if fish2.length > fish1.length
                    idx = idx2
                end
            end
        end
    end
    fishes[idx]
end

class Array
    def merge_sort(&prc)
        prc ||= Proc.new{ |x,y| x<=> y }
        if self.count <= 1
            return self
        end

        half = self.length / 2
        left = self[0...half].merge_sort(&prc)
        right = self[half..-1].merge_sort(&prc)

        Array.merge(left, right, &prc)
    end

    private
    def self.merge(left, right, &prc)
        result = []
        while left.length > 0 && right.length > 0
            case prc.call(left.first, right.first)
            when -1
                result << left.shift
            when 0
                result << left.shift
            when 1
                result << right.shifend
            end
        end
    result + left + right
    end
end


def clever_octopus(fishes)
    longest_fish = fishes[0]

    fishes.each do |fish|
        if fish.length > longest_fish.length
            longest_fish = fish
        end
    end
end

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(tile_direction, tile_array)
    tile_array.each_with_index { |tile, idx| return idx if tile_direction == tile}
end

tiles = { "up" => 0, "right-up" => 1, "right"=> 2, "right-down" => 3,
          "down" => 4, "left-down" => 5, "left" => 6, "left-up" => 7 }

def fast_dance(tile_direction, tiles)
    tiles[tile_direction]
end

