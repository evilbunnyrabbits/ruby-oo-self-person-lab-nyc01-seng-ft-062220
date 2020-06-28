# your code goes here
require 'pry'
#
class Person
  attr_reader :name
  attr_accessor :bank_account

  def initialize(name, bank_account=25, happiness=8, hygiene=8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end

  def happiness=(index)
    if index > 10
      @happiness = 10
    elsif index < 0
      @happiness = 0
    else
      @happiness = index
    end
  end

  def hygiene=(index)
    if index > 10
      @hygiene = 10
    elsif index < 0
      @hygiene = 0
    else
      @hygiene = index
    end
  end

  def hygiene
    @hygiene
  end

  def happiness
    @happiness
  end

  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end

  def clean?
    if @hygiene > 7
      true
    else
      false
    end
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    @hygiene += 4
    self.hygiene=(@hygiene)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    @hygiene -= 3
    @happiness += 2
    self.happiness =(@happiness)
    self.hygiene =(@hygiene)
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    @happiness += 3
    friend.happiness += 3
    self.happiness = @happiness

    if friend != self.name
      "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
  end

  def start_conversation(friend, topic)
    case topic
    when 'politics'
      self.happiness -= 2
      friend.happiness -= 2
      'blah blah partisan blah lobbyist'
    when 'weather'
      self.happiness += 1
      friend.happiness += 1
      'blah blah sun blah rain'
    else
      'blah blah blah blah blah'
    end
  end
end
