require 'pry'

class CreatingAccount
  attr_accessor :account
  @account = Hash.new
  def question
    puts "Please enter your first name?"
    first_name = gets.chomp
    puts "Please enter your last name?"
    last_name = gets.chomp
    puts "Please enter a email"
    email = gets.chomp
    puts "Please enter a password"
    password = gets.chomp
  end
  def user_account(first_name, last_name, email, password)
      question
    @account << first_name
  end
end

user1 = CreatingAccount.new
user1.question


# account => {
#     first_name: [],
#     last_name: [],
#     email: [],
#     password []
#   }
#