require 'sinatra'

get '/' do
  %w(Mums Meno-Ramen).sample
end
