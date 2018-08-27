require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    original_string = params["user_phrase"]
    word = PigLatinizer.new
    @pig_string = word.piglatinize(original_string)
  end
end
