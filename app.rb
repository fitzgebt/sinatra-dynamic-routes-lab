require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/reversename/:name" do
    rev_name = params[:name].reverse
    "#{rev_name}"
  end

    get "/square/:number" do
      square = params[:number].to_i * params[:number].to_i
      "#{square.to_s}"
    end

    get "/say/:number/:phrase" do
      n = params[:number].to_i
      phrase = params[:phrase]
        "#{phrase}"*n
    end

    get '/say/:word1/:word2/:word3/:word4/:word5' do
      word1 = params[:word1]
      word2 = params[:word2]
      word3 = params[:word3]
      word4 = params[:word4]
      word5 = params[:word5]
      per = "."
      "#{word1} #{word2} #{word3} #{word4} #{word5}#{per}"
    end

    get '/:operation/:number1/:number2' do
      op = params[:operation]
      num1 = params[:number1]
      num2 = params[:number2]
      if op == "add"
        "#{num1.to_i + num2.to_i}"
      elsif op == "subtract"
        "#{num1.to_i - num2.to_i}"
      elsif op == "multiply"
        "#{num1.to_i * num2.to_i}"
      elsif op == "divide"
        "#{num1.to_i / num2.to_i}"
      end
    end
end