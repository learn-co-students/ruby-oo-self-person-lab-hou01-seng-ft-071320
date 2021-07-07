class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness,:hygiene

    def initialize (name,bank_account=25,happiness=8,hygiene=8)
        @name = name
        @bank_account =bank_account
        @happiness=happiness
        @hygiene=hygiene
    end
    
    def name
        @name
    end
    def happiness=(happiness)
        if ((1..10) === happiness)
            @happiness=happiness
        elsif happiness<0
            @happiness=0
        else
            @happiness=10
        end
    end
    def hygiene=(hygiene)
        if ((1..10) === hygiene)
            @hygiene=hygiene
        elsif hygiene<0
            @hygiene=0
        else
            @hygiene=10
        end
    end

    def clean? 
        self.hygiene>7? true:false
    end
    def happy?
        self.happiness>7? true:false
    end

    def get_paid(salary)
        @bank_account+=salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene+=4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene-=3
        self.happiness+=2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(person)
        person.happiness+=3
        self.happiness+=3
        return "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic=="politics"
            person.happiness-=2
            self.happiness-=2
            return 'blah blah partisan blah lobbyist'
        elsif topic=="weather"
            person.happiness+=1
            self.happiness+=1
            return 'blah blah sun blah rain'
        else
            return 'blah blah blah blah blah'
        end
    
    end
end
