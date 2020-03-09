require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @reversed = params[:name].reverse 
    "#{@reversed}"
  end

  get "/square/:number" do
    @square = (params[:number].to_i * params[:number].to_i).to_s
    "#{@square}"
  end

  get "/say/:number/:phrase" do
    @phrase = params[:phrase]
    @number = params[:number].to_i
    ans = @phrase * @number
    "#{ans}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @num1 = params[:number1]
    @num2 = params[:number2]
    if @operation == "add"
      ans = @num1.to_i + @num2.to_i
      "#{ans.to_s}"
    elsif @operation == "subtract"
      ans = @num1.to_i - @num2.to_i
      "#{ans.to_s}"
    elsif @operation == "multiply"
      ans = @num1.to_i * @num2.to_i
      "#{ans.to_s}"
    elsif @operation == "divide"
      ans = @num1.to_i / @num2.to_i
      "#{ans.to_s}"
    end
  end

end