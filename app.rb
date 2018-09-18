require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @user_name = params[:name]
    "#{@user_name}".reverse
  end

  get '/square/:number' do
    @user_input = params[:number]
    "#{@user_input.to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    new_phrase = ""
    num = params[:number].to_i
    num.times do
      new_phrase += "#{params[:phrase]}"
    end
    new_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]  + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] }."
    # binding.pry
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    if operation == 'add'
       "#{num1 + num2}"
     elsif operation == 'subtract'
       "#{num2 - num1}"
     elsif operation == 'multiply'
       "#{num1 * num2}"
     elsif operation == 'divide'
       "#{num1 / num2}"
    end

  end















end
