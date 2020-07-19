# your code goes here
require 'pry'

# class Person      PAIRED PARTNER ATTEMPT

#     def initialize(name, bank_account = 25, happiness = 8)
#         @name = name
#         @bank_account = bank_account
#         @happiness = happiness
#         #@hygiene = hygiene
#         # binding.pry
#     end

#     def name
#         @name
#     end

#     def bank_account
#         @bank_account
#     end

#     def bank_account=(bank_account)
#         @bank_account = bank_account
#     end

#     def happiness=(happiness)
#        if @happiness < 10
#             puts happiness
#         else 
#             @happiness = 10
#         end
#     end

#     def happiness
#         @happiness
#         #binding.pry
#     end
    
#     # def hygiene=(hygiene)
#     #     @hygiene = hygiene
#     # end
#     # def hygiene
#     #     @hygiene
#     # end
#     # binding.pry

# end




class Person

    attr_accessor :bank_account, :happiness, :hygiene, :salary
    attr_reader :name

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8

        # if @happiness > 10
        #     @happiness = 10
        # elsif
        #     @happiness < 0
        #     @happiness = 0
        # else
        #     @happiness
        # end
    end

    def happiness
        @happiness.clamp(0,10)
    end

    def hygiene
        @hygiene.clamp(0,10)
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
        @salary = salary
        @bank_account += salary
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
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person_convo, topic)
        # binding.pry
        if topic == "politics"
            person_convo.happiness -= 2
            self.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            person_convo.happiness += 1
            self.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end


end