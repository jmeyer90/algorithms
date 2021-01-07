def anagram?( str1, str2 )
    count = Hash.new( 0 )

    (0..str1.length-1).each do |idx|
      count[str1[idx]]+= 1
      count[str2[idx]]-= 1
    end

    count.values.all?{ |char_count| char_count == 0}
end