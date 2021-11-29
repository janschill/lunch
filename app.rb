require 'sinatra'

get '/' do
  %w(
    Mums
    Meno-Ramen
    Wokbox
    Vandkunsten
    Garbanzo
    Lagkagehuset
  ).sample
end
