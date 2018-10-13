require 'pry'

class CreatingAccount
  attr_accessor :account, :first_name, :last_name, :email, :password
  @account = Hash.new
  def question
    puts "Please enter your first name?"
    @first_name = gets.chomp
    puts "Please enter your last name?"
    @last_name = gets.chomp
    puts "Please enter a email"
    @email = gets.chomp
    puts "Please enter a password"
    @password = gets.chomp
  end
  def user_account()
    question
    @account << first_name
    binding.pry
  end
end

CreatingAccount.new

# account => {
#     first_name: [],
#     last_name: [],
#     email: [],
#     password []
#   }
#