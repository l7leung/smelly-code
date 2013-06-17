#!/usr/bin/env ruby

class Smelly_greeter
  attr_accessor :names

  # Create the object
  def initialize(names_to_be_output = "stranger")
    @names = names_to_be_output
    #@is_stranger = (names_to_be_output.nil?)
  end

  # Say hi to everybody
  def say_hi
    if @names.empty? 
      puts "Hello stranger!"
    elsif @names.class.name == "Array"
    # check if it is an array that can do each
      @names.each do |nam|
        puts "Hello #{nam}"
      end      
    else
      puts "Hello #{@names}!"
    end
    
  end

  # Say bye to everybody
  def sayBye(message = "Goodbye")
    
    if @names.nil? || @names.empty?
      puts "Goodbye stranger.  Come back soon!"
    elsif @names.class.name == "Array"
      puts "Goodbye #{@names.join(", ")}.  Come back soon!"
    else
      puts "Goodbye #{@names}.  Come back soon!"
    end
  end

end


s = Smelly_greeter.new ARGV
s.say_hi
s.sayBye
