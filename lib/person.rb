require "pry"

class Person
  attr_reader :name, :happiness, :hygiene
  
  attr_accessor :bank_account
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(number)
    @happiness = number > 10? 10 : number < 0? 0 : number
  end

  def happy?
    @happiness > 7? true : false
  end

  def hygiene=(number)
    @hygiene = number > 10? 10 : number < 0? 0 : number
  end

  def clean? 
    @hygiene > 7? true : false
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def get_paid(moola)
    @bank_account += moola
    "all about the benjamins"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{@name}. How are you?"
  end

  def start_conversation(person, topic)
    case topic
    when "politics"
      self.happiness -= 2
      person.happiness -= 2
      "blah blah partisan blah lobbyist"
    when "weather"
      self.happiness += 1
      person.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end

  end

end