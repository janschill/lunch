require "sinatra"
require "erb"

get "/" do
  @req = Rack::Request.new(env)
  @date = Date.today.jd
  if @req.params.include?("team")
    @date *= @req.params["team"].to_i(36)
  end
  @lunch_options =  %w(
    Mums-deli
    Men-o-Ramen
    Wokbox
    Vandkunsten
    Garbanzo
    Lagkagehuset
    American-Pie-Co
    District-Tonkin
    Domhusets-Smørrebrød
  )
  @lunch = [@lunch_options[Random.new(@date).rand(@lunch_options.length)]]
  #Use sample to satisfy Jan's tyrant demands
  @lunch = @lunch.sample
  erb :index
end
