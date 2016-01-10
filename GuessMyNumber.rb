#Ruby Project: Guess my number
#Explanation: For the computer to generate a random number and the user to guess. 
game = false
rand_num = rand(1..10)

puts "Welcome to Guess my Number!"
puts "Here is the deal, I am going to pick a number between 1 and 10, 
and you are going to try and guess it. Ready?!"

while game == false
    puts "What number do you think I have chosen?"
    choice = gets.chomp.to_i
    puts choice
    
    if choice < 1 || choice > 10
        puts "I said pick a number BETWEEN 1 and 10" 
    else
    
        if choice == rand_num
            puts "You are right that is my number"
            game = true
        elsif choice > rand_num
            puts "Your number is too high"
        elsif choice < rand_num
            puts "Your choice is too low"
        end
    end
    
end
puts "The game is over"

