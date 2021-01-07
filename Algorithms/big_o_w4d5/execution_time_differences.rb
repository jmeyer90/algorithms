#given a list of integers, find the smallest number in the list
def my_min( arr )
    min = arr[0]

    (0..arr.length-1).each{ |idx| min = arr[idx] if arr[idx] < min }

    min
end

# find the largest contiguous (together in sequence) sub-sum
def largest_continguous_sum( arr )
  curr_sum = arr[0]
  cont_sum = arr[0]

  (1...arr.length).each do |idx|
    num = arr[idx]
    if curr_sum + num > 0 
      curr_sum+=num
    elsif curr_sum < 0 && num > curr_sum # || curr_sum < 0 && num >= 0
      curr_sum = num
    end
    cont_sum = curr_sum if curr_sum > cont_sum
  end

  cont_sum
end

arr1 = [ 2, 3, -8, 7, -6, 7 ]
arr2 = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
arr3 = [ -4, -7, -1, -5 ]

p my_min( arr1 ) # -8
p my_min( arr2 ) # -5
p my_min( arr3 ) # -7

p largest_continguous_sum( arr1 ) # 13
p largest_continguous_sum( arr2 ) # 108
p largest_continguous_sum( arr3 ) # -1
