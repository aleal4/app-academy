def ae_count(str)
  count = {'a'=>0, 'e'=>0}

  str.each_char do |str|
     if (str == 'a' || str == 'e')
      count[str] += 1
     end
  end
  return count
end

puts ae_count("everyone can program") #=> {"a"=>2, "e"=>3}
puts ae_count("keyboard") #=> {"a"=>1, "e"=>1}