class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(points)
    @happiness = if points > 10
        10
      elsif points < 0
        0
      else
        points
      end
  end

  def hygiene=(stank_level)
    @hygiene = if stank_level > 10
        10
      elsif stank_level < 0
        0
      else
        stank_level
      end
  end

  def happy?
    if @happiness > 7
      true
    else @happiness < 7
      false     end
  end

  def clean?
    if @hygiene > 7
      true
    else @hygiene < 7
      false     end
  end

  def get_paid(amount)
    @bank_account += amount
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    # TODO:// Why does happiness method work?
    # TODO:// I don't need to add the @happiness because #happiness= gets called anyway

    self.happiness = @happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    case topic 
    when "politics"
      [self, friend].each { |person| person.happiness -= 2 }
      "blah blah partisan blah lobbyist"
    when "weather"
      [self, friend].each { |person| person.happiness += 1 }
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
end
