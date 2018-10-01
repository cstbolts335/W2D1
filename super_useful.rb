  require_relative 'user_script'
 # PHASE 2
# class TypeError < StandardError; end

def convert_to_int(str)
  # unless Integer(str)
  #   raise TypeError.new "Cannot take a number less than 0 or nil"
  # end

  begin
    Integer(str)
  rescue ArgumentError
    puts "Type Error :( "
    return nil
  end
end

class FruitError < StandardError

end

FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  else
    raise FruitError.new("I only eat fruit") unless maybe_fruit == "coffee"
    end
end


def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"

    begin
      puts "Feed me a fruit! (Enter the name of a fruit:)"
      maybe_fruit = gets.chomp
      reaction(maybe_fruit)
    rescue FruitError => e
      puts "#{e.message}"
      retry
    end
end




# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    raise ArgumentError.new "You must be friends for over 5 years" if yrs_known.to_i < 5
    @yrs_known = yrs_known

    raise ArgumentError.new "You must fill in a name!" if name.length <= 0
    @name = name

    raise ArgumentError.new "You must add your favorite pastime!" if fav_pastime.length <= 0
    @fav_pastime = fav_pastime
  end


  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me."
  end
end
