# Given an array, and a window size w, 
# find the maximum range (max - min) within a set of w elements.
require 'byebug'

def windowed_max_range( arr, w )
    max = arr[ w - 1 ] - arr[ 0 ]
    # debugger

    (1... arr.length - w + 1).each do | idx |
        difference = arr[ w + idx - 1 ] - arr[ idx ]
        max = difference if max < difference
        # debugger
    end

    max
end

p windowed_max_range([1, 0, 2, 5, 4, 8], 2) # == 4 # 4, 8
p windowed_max_range([1, 0, 2, 5, 4, 8], 3) # == 5 # 0, 2, 5
p windowed_max_range([1, 0, 2, 5, 4, 8], 4) # == 6 # 2, 5, 4, 8
p windowed_max_range([1, 3, 2, 5, 4, 8], 5) # == 6 # 3, 2, 5, 4, 8