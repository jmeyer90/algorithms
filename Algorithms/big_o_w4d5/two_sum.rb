# Given an array of unique integers and a target sum, 
# determine whether any two integers in the array 
# sum to that amount.

def two_sum( arr, target_sum )
    differences = {}

    arr.each do | num |
        difference = target_sum - num
        differences[num] = difference
        return true if differences.key?( difference )
    end

    false
end
