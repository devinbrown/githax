require 'sinatra'
require 'slim'

class GitHax < Sinatra::Base
  get '/' do
    slim :index
  end
end