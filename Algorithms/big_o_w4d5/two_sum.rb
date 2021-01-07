# Given an array of unique integers and a target sum, 
# determine whether any two integers in the array 
# sum to that amount.

def two_sum( arr, target_sum )
  length = arr.length
  (0...length).each do |idx_1|
    (idx_1...length).each do |idx_2|
      return true if arr[idx_1] + arr[idx_2] == target_sum
    end
  end

  false
end

arr1 = [ 2, 3, -8, 7, -6, 7 ]
arr2 = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
arr3 = [ -4, -7, -1, -5 ]

p two_sum(arr1, 10) # true
p two_sum(arr2, 12) # false
p two_sum(arr3, -6) # true

