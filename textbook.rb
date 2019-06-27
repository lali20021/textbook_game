# player class
class Player
    @@all = []
    def initialize(name)
        @@all << self
        @name = name
        @score = 0
    end
    # gets all instances of object
    def self.all
        @@all
    end
    # gets name
    def gets_name
        @name
    end
    # gets score
    def sets_score
        @score += 100
    end
    # sets score
    def gets_score
        @score
    end
end

# question class
class Question
    @@all = []
    def initialize(question, category, answer_a, answer_b, answer_c, answer_d, correct_answer)
        @@all << self
        @question = question
        @category = category
        @answer_a = answer_a
        @answer_b = answer_b
        @answer_c = answer_c
        @answer_d = answer_d
        @correct_answer = correct_answer
        @user_answer = ''
    end
    # gets all instances of object
    def self.all
        @@all
    end
    # gets category
    def gets_category
        @category
    end
    # get question
    def gets_question
        @question
    end
    # gets answers
    def gets_answers
        p @answer_a
        p @answer_b
        p @answer_c
        p @answer_d
    end
    # set user_answer
    def sets_user_answer
        @user_answer = gets.chomp.to_s.downcase
    end
    # get correct_answer
    def gets_correct_answer
        @correct_answer
    end
    # compare the user_answer with the correct_answer, outputs true or false
    def compares_answers
        @user_answer == @correct_answer
    end
end

question1 = Question.new('question', 'Hipsters', 'answer_a', 'answer_b', 'answer_c', 'answer_d', 'correct_answer')
question2 = Question.new('question', 'Broscience', 'answer_a', 'answer_b', 'answer_c', 'answer_d', 'correct_answer')

# TODO: things we need to keep track of
# current_question
# game status
# game_status # are all questions answered
# question_status # has question been answered or not, in other words, is that quesiton available to ask still

p 'Welcome to the great game of trivia'
p 'Please enter your name:'

# Method to instantiate a new player
def instantiates_player
    name = gets.chomp.to_s.capitalize
    player = Player.new(name)
end

instantiates_player()

# Greets user with custom welcome
def welcome
    p "Welcome, Master #{Player.all[0].gets_name}!"
end

welcome()

# Display a list of the categories
def displays_categories
    Question.all.map { |element| p element.gets_category  }
end

p "Tonight's categories include: #{displays_categories()}"

# Prompt for game start
p 'Do you wish to play?'

# Asks player if they want to play, if yes, starts the game
def starts_game
  user_input = gets.chomp.downcase
  if user_input == 'yes'
      #move on to category selection...call some method here that progresses the game
  else
    abort('You\'ve decided not to play. Lame!')
  end
end

starts_game()

# Method for player to select the desired category
def sets_category
    p 'Please select a category:'
    # collect category from player using gets.chomp
    category_input = gets.chomp.to_s.capitalize
    # compare to list of categories in Question class
    selected_category = Question.all[0].gets_category

    p selected_category
    # return only the questions that belong to the desired category

    # list of all the questions
    p Question.all[0].gets_question
    # sort down to only questions that belong to category
    p Question.all[0].gets_answers

    #only display one question at a time

    #display that question's choices

end

sets_category()

# Method to set the answer




# # Prompts for category selection
# def gets_category
# # set something to the selected category
#
# categories = ['Hipsters', 'Bro Science']
#     categories.each do |e|
#     puts e
#     end
# end
#
# gets_category()
#
# def sets_category
#   p 'Select a trivia category: '
#3
# # categories is an array of categories that is defined globally
#
# # iterate through the category array and display each element
#
#     category_input = gets.chomp.downcase
#
#     if(category_input == 'Hipsters')
#         # qustion 1 of hipster category will show up
#         p 'What grocery store do hipsters shop?:\n
#         A: Vons \n
#         B: Whole Foods\n
#         C: Costco\n
#         D: Albertsons'
#
#         hipster_category_answer = gets.chomp.downcase
#         # if correct answer yay point added
#         # takes to q nr 2
#         # else just takes to q nr 2 anyway
#
#     else
#         # q for bros will show
#     end
# end
# sets_category()
# # prompt user to select one of the displayed categories by typing the category name
#
#
#
#
# # once category chosen, randomize questions
#
# # display first question and four choices, prompt for answer
#
# # if answer correct, add 10 points
#
# # if answer incorrect, subtract 10 points
#
# # after question answered, prompt if want to continue to next question, if not, end game with message
#
# # if yes, repeat steps for questions
