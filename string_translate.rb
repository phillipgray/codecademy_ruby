print "So what are you trying to say to Daffy?"
user_input = gets.chomp

if user_input.include? "s"
    user_input.gsub!(/s/, "th")
    translate = true
else
    translate = false
end

if user_input.include? "S"
    user_input.gsub!(/S/, "Th")
    translate = true
else
    translate = false
end

unless translate
    print "Thorry, there ith no tranthlation"
else
    puts "Tho: #{user_input}"
end