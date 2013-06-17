#!/usr/bin/env ruby

class Smelly_greeter
  attr_accessor :names

  # Create the object
  def initialize(names_to_be_output = "stranger")
    @names = names_to_be_output
    @is_stranger = (names_to_be_output.nil?)
  end

  # Say hi to everybody
  def say_hi
    if @names.empty? 
      puts "Hello stranger!"
    else
      # check if it is an array that can do each
      if @names.respond_to?("each")
        i = 0
        while i < @names.length
          puts "Hello " + @names[i]
                i = i + 1
        end
      
      else
            puts "Hello #{@names}!"
      end
    end

  end


  # Say bye to everybody
  def sayBye(message = "Goodbye")
    if @names.nil? || @names.length == 0
      puts "Goodbye stranger.  Come back soon!"

    # check if it is an array that can do each
    elsif @names.respond_to?("join") && !@names.nil?
      puts "Goodbye #{@names.join(", ")}.  Come back soon!"

    else
      puts "Goodbye #{@names}.  Come back soon!"
    end

    return
  end
end


s = Smelly_greeter.new ARGV
s.say_hi
s.sayBye
