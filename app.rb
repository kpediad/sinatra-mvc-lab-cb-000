require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    @pig_latin_text = PigLatinizer.new(params[:user_text])
    erb :output
  end
end
