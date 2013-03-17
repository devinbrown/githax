require 'sinatra'
require 'slim'
require 'sass'

class GitHax < Sinatra::Base

  SCSS_PATH = File.join '..', 'public', 'css'

  get '/' do
    slim :index
  end

  get '/css/main.css' do
    scss :"#{File.join SCSS_PATH, "main"}"
  end
end