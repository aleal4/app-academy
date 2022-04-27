def all_words_capitalized?(array)
  array.all?{|word| word.capitalize == word }
end

def no_valid_url?(array)
  urls = ['.com', '.net', '.io', '.org']

  array.none? do |ele| 
    urls.any? do |ending| 
      ele.end_with?(ending)
    end
  end
end