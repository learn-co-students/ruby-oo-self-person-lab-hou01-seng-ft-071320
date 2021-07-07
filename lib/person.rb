# your code goes here
#Each instance of class Personshould be able to remember their name
class Person  

def initialize(name)
    @name = name
end

def name
    @name
end

Person.new('Stella')

end

#Each instance of class Person should start with $25 in their bank accounts
#Each instance of class Person should start with eight happiness points

class Person
     attr_accessor :bank_account, :happiness, :hygiene
def initialize(name)
    @name = name
    @happiness = 8
    @bank_account = 25
    @hygiene = 8
end
def name
    @name
end 

def happiness=(happiness)
    if happiness>10
        @happiness=10  
    elsif happiness <0
       @happiness=0 
    else
        @happiness = happiness 
    end
end

def hygiene=(hygiene)
   if hygiene>10
        @hygiene=10  
    elsif hygiene <0
       @hygiene=0 
    else
        @hygiene = hygiene 
    end
end

def happy?
    if @happiness>7
        return true 
    else
        return false
    end
end

def clean?
    if @hygiene>7
        return true 
    else
        return false
    end
end

def get_paid(salary)
    @bank_account+=salary
    return "all about the benjamins"
end

def take_bath
    self.hygiene = @hygiene + 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
    self.hygiene = @hygiene - 3
    self.happiness = @happiness + 2
    return "♪ another one bites the dust ♫"
end

def call_friend(friend)
    self.happiness = @happiness + 3
    friend.happiness = friend.happiness + 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
end

def start_conversation(person, topic)
    if topic == "politics"
        self.happiness = @happiness - 2
        person.happiness = person.happiness - 2
        return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
        self.happiness = @happiness + 1
        person.happiness = person.happiness + 1
        return "blah blah sun blah rain"
    else
        return "blah blah blah blah blah"
    end
end

Person.new('Stella')

end

#Each instance of class Person should start with eight 
#hygiene points

#The happiness and hygiene points should be able to change, 
#however the maximum and minimum points for both happiness and hygiene should be 10 and 0 respectively

#The amount in the bank account should also be able to change, though it has no max or min.

