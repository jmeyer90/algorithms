#given a list of integers, find the smallest number in the list
def my_min( arr )
    min = arr.first

    arr.each do | num |
        min = num if num < min
    end

    min
end

# find the largest contiguous (together in sequence) sub-sum
def largest_continguous_sum( arr )
    cont_sum = arr.first
    cur_sum = arr.first

    arr.each do | num |
        next_sum = cur_sum < 0 && num > 0 ? num : cur_sum + num
        cur_sum = next_sum > cur_sum ? next_sum : num
        cont_sum = cur_sum if cur_sum > cont_sum
    end

    cont_sum
end

arr1 = [ 2, 3, -6, 7, -6, 7 ]
arr2 = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
arr3 = [ -4, -7, -1, -5 ]

p my_min( arr1 )
p my_min( arr2 )
p my_min( arr3 )

p largest_continguous_sum( arr1 )
p largest_continguous_sum( arr2 )
p largest_continguous_sum( arr3 )
