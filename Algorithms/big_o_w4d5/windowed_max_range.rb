# Given an array, and a window size w, 
# find the maximum range (max - min) within a set of w elements.
require 'byebug'

def windowed_max_range( arr, w )
  dif = arr[0] - arr[w-1]
  range = dif.abs
  # debugger

  (1..arr.length-w).each do |idx|
    window_dif = arr[idx] - arr[idx+w-1]
    window_range = window_dif.abs
    range = window_range if window_range > range
    # debugger
  end

  puts "------------------------------------------------------------------------------\n"
  range
end

p windowed_max_range([1, 0, 2, 5, 4, 8], 2) # == 4 # 4, 8
p windowed_max_range([1, 0, 2, 5, 4, 8], 3) # == 5 # 0, 2, 5
p windowed_max_range([1, 0, 2, 5, 4, 8], 4) # == 6 # 2, 5, 4, 8
p windowed_max_range([1, 3, 2, 5, 4, 8], 5) # == 5 # 3, 2, 5, 4, 8