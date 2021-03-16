require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do 
    "#{params[:number].to_i * params[:number].to_i}"
  end

  get '/say/:number/:phrase' do
    str = ""
    params[:number].to_i.times do 
      str += params[:phrase]
    end
    str
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    str = ""
    i = 0
    params.each do |key, value|
      str += "#{value} "
    end
    last = str.split(" ").last.to_s + "."
    array = str.split(" ")
    array[-1] = last
    array.join(" ")
  end

  get '/:operation/:number1/:number2' do
    op = params[:operation]
    num = 0
    one = params[:number1].to_i
    two = params[:number2].to_i
    case op
    when "add"
      num = one + two
    when "subtract"
      num = one - two
    when "multiply"
      num = one * two
    when "divide"
      num = one / two
    end
    "#{num}"
  end

end