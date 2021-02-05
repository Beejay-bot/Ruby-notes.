# # Getting user Iunput
# puts "Enter your name"
# name = gets.chomp().
# puts "Enter your Age: "
# age = gets.chomp()
# put ('Hello' + name + ", you are" + age)

# # Basic addtion calculator
# puts "Enter a number"
# num1 = get.chomp().to_f
# puts "Enter another number"
# num2 = gets.chomp().to_f

# puts (num1 + num2)

# # arrays
# friends = Array["ola", 'Moyo', 'ade']
#              #   0       1      2       index
# # accessing an array
# puts friends[0]
# puts friends.length() # to find the amount of characters in the array.
# puts friends[0].incude? "ade" # check if ade exists in the array
# puts friends[0].reverse() #reverses the array. from back to front
# puts friends[0].sort() # sorts the array alphabetically. NB you can't compare number & strings inside ruby.

# # Hashes

# states ={
#     "Pennysylvania" => "PA",
#     "New york" => 'NY',
#     :Oregon => "OR" # Instead of putting a quotation mark, we can also put a column
# }
# # In hashes, you can only have a unique key.
# # We can also use numbers as keys 
# puts states
# puts states["New York"]
# puts states[:Oregon]

# # methods/Functions
# def sayhi(name, age)
#     puts ("hello" + name +", you are " + age.to_s )    
# end

# sayhi("bolaji", 18) #calling the method


# #Conditional statements (if/else)
# ismale=true
# istall = false

# if ismale and istall
#     puts "You are a tall male"
# elsif ismale and !istall
#     puts "You are a short male"
# elsif !ismale and istall
#     puts "You are not male but are tall"
# else h
#     puts "You are not male and not tall"
# end 

# #Using Comparison in If statements
# def max(num1,num2,num3)
#     if num1 >= num2 and num1 >= num3
#         return num1
#     elsif num2 >= num1 and num2 >= num3
#         return num2
#     else
#         return num3
#     end
# end

#Building a basic calculator
# puts "Enter first number:"
# num1 = gets.chomp().to_f
# puts "Enter operator:"
# op = gets.chomp()
# puts "Enter second number:"
# num2 = gets.chomp().to_f

# if op == "+"
#     puts (num1 + num2)
# elsif op == "_"
#     puts (num1 - num2)

# elsif op == "/"
#     puts (num1 / num2)

# elsif op == "*"
#     puts (num1 * num2)

# else
#     puts "Invalid operator"

# end

#Case Expression
# def get_day_name(day)
#     day_name = ""
#     case day
#     when "mon"
#         day_name = "Monday"
#     when "tue"
#         day_name = "Tuesday"
#     when "wed"
#         day_name = "Wednesday"
#     when "thur"
#         day_name = "Thursday"
#     when "fri"
#         day_name = "Friday" 
#     when "sat"
#         day_name = "Saturday"
#     when "sun"
#         day_name = "Sunday"
#     else
#         day_name = "Invalid abbreviation"
#     end

#     return day_name
# end

# puts get_day_name('thur')

# index = 1
# while index <=1
#     puts index
#     index +=1
# end

#Building a guessing game
# puts "You only have three guess"
# secret_word = "giraffe"
# guess = ""
# guess_count = 0
# guess_limit  =  3
# out_of_guesses = false

# while guess != secret_word and !out_of_guesses
#     if guess_count < guess_limit
#         puts "Enter guess:"
#         guess = gets.chomp() 
#         guess_count +=1  
#     else
#         out_of_guesses = true  
#     end
# end

# if out_of_guesses 
#     puts "You lose!"
# else 
#     puts "You won!"
# end

# #For loops
# friends = ["kevin", "Karen", "Oscar", "Angela", "Andy"]

# for friend in friends
#     puts friend
# end


# #Another method to do a for loop in Ruby
# friends.each do |friend|
#     puts friend
# end

# #Looping through a range of numbers
# for index in 0..5
#     puts index
# end  

# 6.times do |index|
#     puts index  
# end

# #Creating an Exponent Method

# def pow(base_num, pow_num)
#     result = 1
#     pow_num.times do |index|
#         result = result * base_num
#     end
#     return result
# end

# puts pow(5,2)

#READING FROM EXTERAL FILES IN RUBY
# File.open("test.txt", "r") do |file|
#     # puts file.read()
#     # puts file.read().include? "text" #TO CHECK IF A WORD OR CHARACTER EXISTS IN THE FILE.
#     # puts file.readline()       #TO READ A LINE OR SENTENCE IN A DOCUMENT
#     # puts file.readchar()      #TO READ INDIVIDUAL CHARACTERS ONE BY ONE 

#     for line in file.readlines()
#         puts line
#     end
# end  
# File.close() 

#A BETTER  AND SHORTER WAY OF READING FILES.
# file = File.open("test.txt", "r")
# puts file.read()
# puts file.readchar()

# file.close()  #Always close the file after you're done with in other reduce your program size.

#WRITING TO FILES IN RUBY
file2 = File.open("test.txt", "a")
        file2.write("\nI added a new content to this file using ruby")
file2.close()

html = File.open("index.html" , "w") 
        html.write("<h1>Hello, this is was written from a ruby code</h1>")

#FILES MODES IN RUBY.
#r+ is TO READ AND WRITE IN A FILE.
#a is to append to a file. Its only writes to the bottom of the file.
#w is to overide the existing file or creating a new file if it does not exist. It completely changes whatever was in the file before.
#r is to only read a file you can't modify the file if you use this mode.

#Exception handling in Ruby
lucky_nums = [4, 6 ,7, 10 ,1, 12, 4]

begin
    lucky_nums["dogs"]
    num = 10/0
rescue ZeroDivisionError
    # puts "0 can't divide 10"
rescue TypeError
    # puts "Wrong Type"    
end

#CLASSES & OBJECTS
class Book
    attr_accessor :title, :author, :pages
    def initialize(title, author,pages)
        @title = title
        @author = author
        @pages = pages
    end
end

book1 = Book.new("Harry Potter", "JK ROWLING", 400)  #THIS AN OBJECT
book2 = Book.new("Lord of the rings","Tolkein", 600)

# puts book2.author

class Student
    attr_accessor :name, :major, :gpa
    def initialize(name, major, gpa)
        @name = name
        @major = major
        @gpa = gpa
    end

    def has_honors #This an instant/object/class methods
        if @gpa >= 3.5
            return true
        end
        return false
    end
end

Student1 = Student.new("Jim", "Business", 2.6)
Student2 = Student.new("Pam", "Art", 3.6)

# puts Student2.has_honors

#Bulding a quiz
class Question 
    attr_accessor :prompt, :answer
    def initialize(prompt, answer)
        @prompt  = prompt
        @answer  = answer
    end
end

p1 = "What color are apples?\n(a)red\n(b)purple\n(c)orange"
p2 = "What color are bananas?\n(a)pink\n(b)blue\n(c)yellow"
p3 = "What color are pears?\n(a)yellow\n(b)green\n(c)orange"

questions = [
    Question.new(p1, "a"),
    Question.new(p2, "c"),
    Question.new(p3, "b")
]

def run_test(questions)
    answer  = ""
    score =0
    for question in questions
        puts question.prompt
        answer = gets.chomp()
        if answer == question.answer
            score +=1
        end
    end
    puts("You got" + score.to_s + "/" + questions.length.to_s)
end

run_test(questions)


