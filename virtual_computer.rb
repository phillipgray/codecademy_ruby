class Computer
    @@users = Hash.new
    
    def initialize(username, password)
        @username = username
        @password = password
        @files = Hash.new
        @@users[username] = password
    end
    
    def create(filename)
        time = Time.now
        @files[filename] = time
        puts "The file #{filename} was created at #{time} by user #{@username}."
    end
end

my_computer = Computer.new("phil", 1234)
my_laptop = Computer.new("mini phil", 5678)
my_computer.create("robots.txt")
my_laptop.create("kittens.txt")
