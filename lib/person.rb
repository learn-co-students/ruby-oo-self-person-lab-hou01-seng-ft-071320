# your code goes here
class Person
    attr_accessor :bank_account, :hygiene, :happiness
    attr_reader :name

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(points)
        if points < 0
            @happiness = 0
        elsif points > 10
            @happiness = 10
        else
            @happiness = points
        end 
    end

    def hygiene=(h_points)
        if h_points < 0
            @hygiene = 0
        elsif h_points > 10
            @hygiene = 10
        else
            @hygiene = h_points
        end
    end

    def happy?
        if @happiness > 7
            return true
        else 
            return false
        end
    end

    def clean?
        if @hygiene > 7
            return true
        else
            return false
        end
    end

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        points = (@hygiene += 4)
        if points > 10
            self.hygiene=(points)
        else
            @hygiene = points
        end
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        points = (@hygiene -= 3)
        if points < 0
            self.hygiene=(points)
        else
            @hygiene = points
        end
        happy = (@happiness += 2)
        if happy > 10
            self.happiness=(happy)
        else
            @happiness = happy
        end
        return '♪ another one bites the dust ♫'
    end

    def call_friend(friend = Person.new)
        happy = (@happiness += 3)
        self.happiness=(happy)
        friend_happy = friend.happiness
        friend_happy += 3
        friend.happiness=(friend_happy)
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(name, topic)
        if topic == "politics"
            points = @happiness - 2
            self.happiness=(points)
            name_points = name.happiness
            name_points -= 2
            name.happiness=(name_points)
            return 'blah blah partisan blah lobbyist'
        elsif topic == "weather"
            points = @happiness + 1
            self.happiness=(points)
            name_points = name.happiness
            name_points += 1
            name.happiness=(name_points)
            return 'blah blah sun blah rain'
        else
            return 'blah blah blah blah blah'
        end
    end
end