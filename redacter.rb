puts "What's the text to be checked?"
text = gets.chomp

puts "Which word would you like to redact?"
redact = gets.chomp

words = text.split(" ")
words.each do |i|
    if i == redact
        print "REDACTED "
    else
        print i + " "
    end
end