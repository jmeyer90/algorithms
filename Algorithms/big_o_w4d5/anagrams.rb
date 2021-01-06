def anagram?( str1, str2 )
    count = Hash.new( 0 )

    str1.each_char do | char |
        count[ char ] += 1
    end

    str2.each_char do | char |
        count[ char ] -= 1
    end

    count.values.all?{ |char_count| char_count == 0}
end