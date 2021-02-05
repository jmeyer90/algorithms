require 'byebug'

def find_lhs(nums)
    hs = Hash.new
    max = 0
    
    nums.each do |num|
        # debugger
        if hs.has_key?(num)
            hs[num][0] += 1
            hs[num][1] += 1
        else
            hs[num] = [1,1]
        end
        if hs.has_key?(num-1)
            hs[num-1][1] += 1
            max = hs[num-1][0] if hs[num-1][0] > max
            max = hs[num-1][1] if hs[num-1][1] > max
        end
        if hs.has_key?(num+1)
            hs[num+1][0] += 1
            # debugger
            max = hs[num+1][0] if hs[num+1][0] > max
            max = hs[num+1][1] if hs[num+1][1] > max
        end
        max = hs[num][0] if hs[num][0] > max
        max = hs[num][1] if hs[num][1] > max
    end
    
    return max > 1 ? max : 0
end

puts find_lhs([1,3,2,2,5,2,3,7])