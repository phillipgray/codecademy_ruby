puts "What's the text you're looking to parse?"
text = gets.chomp

words = text.split

frequencies = Hash.new(0)

words.each { |x|
    frequencies[x] += 1
}
frequencies = frequencies.sort_by {|word, num| num}
frequencies.reverse!

frequencies.each { |word, num|
    puts word + " " + num.to_s
}