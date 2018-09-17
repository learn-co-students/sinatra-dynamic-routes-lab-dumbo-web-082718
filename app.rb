require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @number = params[:number]
    square = @number.to_i ** 2
    "#{square}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
      @phrase * @number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word_array = []
    word_array << @word1 = params[:word1]
    word_array << @word2 = params[:word2]
    word_array << @word3 = params[:word3]
    word_array << @word4 = params[:word4]
    word_array << @word5 = params[:word5]
    words = word_array.join(" ")
    "#{words}."
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @operation = params[:operation]
    if @operation == "add"
      add = @number1 + @number2
      "#{add}"
    elsif @operation == "subtract"
      subtract = @number1 - @number2
      "#{subtract}"
    elsif @operation == "multiply"
      multiply = @number1 * @number2
      "#{multiply}"
    elsif @operation == "divide"
      divide = @number1 / @number2
      "#{divide}"
    end
  end
end
