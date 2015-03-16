movies = Hash.new("No movies present")
movies[:Matrix] = 5

puts "Which would you like to do?"
choice = gets.chomp

case choice
when "add"
    puts "Which movie would you like to add?"
    title = gets.chomp
    if movies[title.to_sym].nil?
        puts "How would you rate the movie (scale: 1 to 5)?"
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
        puts "#{title} has been added with a rating of #{rating}"
    else
        puts "That movie has already been rated! Sorry!"
    end
    
when "update"
    puts "Which movie would you like to update? Here are the movies already added: "
    movies.each_key {|name| print name, ", "}
    title = gets.chomp
    if movies[title.to_sym].nil?
        puts "Sorry! That movie hasn't been added yet."
    else
        puts "Updated rating (scale: 1 to 5)?"
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
        puts "#{title} has been changed to have a rating of #{rating}"
    end
    
when "display"
    movies.each { |movie, rating|
    puts "#{movie}: #{rating}"
}

when "delete"
    puts "Which movie would you like to delete? Here are the movies already added: "
    movies.each_key {|name| print name, ", "}
    title = gets.chomp
    if movies[title.to_sym].nil?
        puts "Sorry! That movie hasn't been added yet, so you can't delete it."
    else
        puts "#{title} has been deleted."
        movies.delete(title.to_sym)
        print "Movies remaining: "
        movies.each { |movie, rating|
    puts "#{movie}: #{rating}"
}
    end
else
    puts "Error!"
end