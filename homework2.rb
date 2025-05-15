# Task 1

array = [4, 4, 5, 6, 6, 5]

frequency = Hash.new(0)
array.each { |num| frequency[num] += 1 }

max_freq = frequency.values.max

most_frequent = frequency.select { |k, v| v == max_freq }.keys

puts "Most frequent elements: #{most_frequent.join(', ')}"

# Task 2

sentence = "I love Ruby programming!"

words = sentence.split

pig_latin_words = words.map do |word|
  if word =~ /(\w+)(\W*)/
    base = $1
    punctuation = $2
    pig_latin_word = base[1..] + base[0] + "ay"
    pig_latin_word + punctuation
  else
    word
  end
end

puts "Pig Latin: #{pig_latin_words.join(' ')}"

