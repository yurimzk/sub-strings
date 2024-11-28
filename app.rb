def substring(word, dictionary)
  result = Hash.new(0)

  dictionary.each do |substring|
    matches = word.downcase.scan(substring.downcase).length
    result[substring] = matches if matches > 0
  end
  result
end

word = "Howdy partner, sit down! How's it going?"
dictionary = ["how", "down", "it", "go", "sit"]

puts substring(word, dictionary)
