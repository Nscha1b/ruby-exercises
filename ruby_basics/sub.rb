def substrings(passed_in_s, words)
  h = {}
  words.each do |word| 
      count = passed_in_s.downcase.split.find_all { |item| item.downcase.include?(word.downcase) }
      unless count.empty?
        h[word] = count.length
      end
  end
  puts(h)
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# substrings("below", dictionary)
# substrings("i", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)