require "sinatra"
require "erb"

get "/" do
  @lunch = %w(
    Mums-deli
    Men-o-Ramen
    Wokbox
    Vandkunsten
    Garbanzo
    Lagkagehuset
    American-Pie-Co
    District-Tonkin
    Domhusets-Smørrebrød
  ).sample
  erb :index
end
