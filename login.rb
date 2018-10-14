require 'pry'

class CreatingAccount
  attr_reader :first_name, :last_name, :email, :password
  # with/class variable
  @@accounts = []

  def initialize
    self.question
    # binding.pry
    @@accounts << self
  end
  # class method
  # def self.METHOD_NAME
  #   # code for the class
  # end

  # #setter == #writer
  # #getter == #reader
  def self.accounts
    @@accounts
  end

  def question
    continue = true
    while continue
    continue = get_first_name
    continue = get_last_name
    continue = get_e_mail
    continue = get_p_word
      break
    end
  end

  def error
    puts "Your input is [INVALID] please try again"
    question
  end

  def get_first_name
    puts "Please enter your first name?"
    first_name = gets.chomp
    @first_name = first_name if input_validation({f_name: first_name })
  end

  def get_last_name
    puts "Please enter your last name?"
    last_name = gets.chomp
    @last_name = last_name if input_validation({l_name: last_name })
  end

  def get_e_mail
    puts "Please enter an email?"
    email = gets.chomp
    @email = email if input_validation({e_mail: email })
  end
  def get_p_word
    puts "Please enter a password?"
    password = gets.chomp
    binding.pry
    @password = password.to_i if input_validation({p_word: password })
  end


  def input_validation(input)
    case input.keys.first 
    when :f_name
      !(/[\d\W]/.match?(input[:f_name]))
    when :l_name
      !(/[\d\W]/.match?(input[:l_name]))
    when :e_mail
      (/[@.]/.match?(input[:e_mail]))
    when :p_word
      !(/[\D]/.match?(input[:p_word]))
    end
  end
end

CreatingAccount.new#("Zeta", "Drake", "ilostmywallettoo@gmail.com", 123)
binding.pry