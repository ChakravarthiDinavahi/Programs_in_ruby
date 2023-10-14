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
