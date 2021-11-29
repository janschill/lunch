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
    American-Pie-Co
  ).sample
  erb :index
end
