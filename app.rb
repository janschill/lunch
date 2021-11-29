require "sinatra"
require "erb"

get "/" do
  @lunch = %w(
    Mums
    Meno-Ramen
    Wokbox
    Vandkunsten
    Garbanzo
    Lagkagehuset
  ).sample
  erb :index
end
