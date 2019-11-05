require('sinatra')
require('sinatra/contrib/all') if development?
require_relative('models/customer')
require_relative('models/film')
require_relative('models/ticket')

also_reload('models/*')


get '/films' do
  @films_list = Film.all()
  erb( :"films/index")
end

# get '/films/:id' do
#   @film = Film.find_by_id(params[:id])
#   erb( :"films/id")
# end
