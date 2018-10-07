require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  # recieve a get request
  # go to the resource/ path
  # ***after request occurs***
  # we get accessed to the params varable
  # we access the key name which gives us the value at name
  # set that value to an instance varable
  # opperate on the instance varable/ the attribute that is set to the :name
  # in the string interpelation
  get '/reversename/:name' do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number]
    "#{((@num.to_i)**2).to_s}"
  end

  get '/say/:number/:phrase' do
      @num = params[:number]
      @phrase = params[:phrase]
      "#{@phrase * @num.to_i}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
          @word1 = params[:word1]
          @word2 = params[:word2]
          @word3 = params[:word3]
          @word4 = params[:word4]
          @word5 = params[:word5]
          "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
      operation = params[:operation]
      number1 = params[:number1].to_i
      number2 = params[:number2].to_i
      if operation == "add"
        answer = number1 + number2
      elsif operation == "subtract"
        answer = number1 - number2
      elsif operation == "multiply"
        answer = number1 * number2
      elsif operation == "divide"
        answer = number1 / number2
      else
        answer = "Unable to perform this operation"
      end
      answer.to_s
    end

  end
