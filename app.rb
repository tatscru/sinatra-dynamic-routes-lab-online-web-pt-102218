require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end 
  
  get '/square/:number' do 
    @number = params[:number].to_i
    (@number * @number).to_s
    # Multiply the number by itself= square 
  end 
  
  get '/say/:number/:phrase' do 
    @phrase = params[:phrase]
    @number = params[:number].to_i
    
    result = ""
		@number.times do
		  result += @phrase
    end  
    result 
  end 
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]
    
    "#{word1} #{word2} #{word3} #{word4} #{word5}."
  end 
  
  get '/:operation/:num1/:num2' do 
    @operation = params[:operation]
    @num1 = params[:num1].to_i
    @num2  = params[:num2].to_i
    
    case @operation 
    when "add"
      (@num1 + @num2).to_s
    when "subtract"
      (@num2 - @num1).to_s
    when "multiply"
      (@num1 * @num2).to_s
    when "divide"
      (@num1 / @num2).to_s
    end 
  end 
  

  
end