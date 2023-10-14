


# Prompt the player to enter their name. Use their name to print a greeting.
# Generate a random number from 1 to 100, and store it as a target number for the player to guess.
# Keep track of how many guesses the player has made. Before each guess, let them know how many guesses (out of 10) they have left.
# Prompt the player to make a guess as to what the target number is.
# If the player's guess is less than the target number, say "Oops. Your guess was LOW." If the player's guess is greater than the target number, say "Oops. Your guess was HIGH."
# If the player's guess is equal to the target number, tell them "Good job, [name]! You guessed my number in [number of guesses] guesses!"
# If the player runs out of turns without guessing correctly, say "Sorry. You didn't get my number. My number was [target]."
# Keep allowing the player to guess until they get it right, or they run out of turns



class Game
    MAX_ALLOWED_GUESSES = 10.freeze
    attr_accessor :target_number, :player_name

    def initialize
        @target_number = 1
    end

    def start
        puts "Please Enter Your Name"
        @player_name = gets.chomp
        greet(player_name)
        play
    end

    def greet(name)
        puts "#{name}"
    end

    def play
        MAX_ALLOWED_GUESSES.times do |i|
            puts "Please Enter Your guess from 1 to 100"
            guessed_target = gets.chomp.to_i
            if guessed_target == target_number
                puts "Good job, [#{player_name}]! You guessed my number in [#{i+1}] guesses!"
                return
            else
                if guessed_target > target_number
                    puts "Oops. Your guess was HIGH."
                else
                    puts "Oops. Your guess was LOW."
                end
            end
        end
        puts "Sorry. You didn't get my number. My number was [#{target_number}]."
    end
end

Game.new.start
