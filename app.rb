require_relative "config/environment"

class App < Sinatra::Base
  get "/" do
    erb :user_input
  end

  post "/piglatinize" do
    #@phrase = PigLatinizer.new(params[:user_phrase])
    pg = PigLatinizer.new
    @pig_latin = pg.piglatinize(params[:user_phrase])
    erb :results
  end
end
