require 'sinatra'
require 'erb'
require 'thin'

set :public, File.dirname(__FILE__) + '/assets'


get '/' do
	@section = 'home'
	@contentTitle = 'About Javier Julio'
	
	erb :index
end

get '/presentations' do
	@section = 'presentations'
	@title = 'Presentations'
	@contentTitle = 'Presentations'
	
	erb :presentations
end

get '/resume' do
	@section = 'resume'
	@title = 'Resume'
	@contentTitle = 'Resume'
	
	erb :resume
end

get '/recipes' do
	@section = 'recipes'
	@title = 'Recipes for home cooking'
	@contentTitle = 'Recipes'
	
	erb :recipes
end

#
# RECIPES
#

get '/recipes/farfalle-with-spring-onions' do
	@section = 'recipes'
	@title = 'Recipe for Farfalle with Spring Onions'
	@contentTitle = 'Farfalle with Spring Onions'
	
	erb :'recipes/pasta/farfalle_spring'
end

get '/recipes/farfalle-tonno' do
	@section = 'recipes'
	@title = 'Recipe for Farfalle Tonno'
	@contentTitle = 'Farfalle Tonno'
	
	erb :'recipes/pasta/farfalle_tonno'
end

get '/recipes/fusilli-mozzarella' do
	@section = 'recipes'
	@title = 'Recipe for Fusilli Mozzarella'
	@contentTitle = 'Fusilli Mozzarella'
	
	erb :'recipes/pasta/fusilli_mozzarella'
end

get '/recipes/tuscan-linguine-shrimp' do
	@section = 'recipes'
	@title = 'Recipe for Tuscan Linguine Shrimp'
	@contentTitle = 'Tuscan Linguine Shrimp'
	
	erb :'recipes/pasta/linguine_shrimp'
end

get '/recipes/linguine-con-tonno-e-olive' do
	@section = 'recipes'
	@title = 'Recipe for Linguine con Tonno e Olive'
	@contentTitle = 'Linguine con Tonno e Olive'
	
	erb :'recipes/pasta/linguine_tonno'
end

get '/recipes/penne-con-tonno-e-mozzarella' do
	@section = 'recipes'
	@title = 'Recipe for Penne con Tonno e Olive'
	@contentTitle = 'Penne con Tonno e Mozzarella'
	
	erb :'recipes/pasta/penne_tonno_mozzarella'
end

get '/recipes/rigatoni-italiano' do
	@section = 'recipes'
	@title = 'Recipe for Rigatoni Italiano'
	@contentTitle = 'Rigatoni Italiano'
	
	erb :'recipes/pasta/rigatoni_italiano'
end

get '/recipes/spaghetti-alla-puttanesca' do
	@section = 'recipes'
	@title = 'Recipe for Spaghetti alla Puttanesca'
	@contentTitle = 'Spaghetti alla Puttanesca'
	
	erb :'recipes/pasta/spaghetti_alla_puttanesca'
end

get '/recipes/spaghetti-con-accinghe-e-tonno' do
	@section = 'recipes'
	@title = 'Recipe for Spaghetti con Accinghe e Tonno'
	@contentTitle = 'Spaghetti con Accinghe e Tonno'
	
	erb :'recipes/pasta/spaghetti_tonno'
end

get '/recipes/tortellini-rosa' do
	@section = 'recipes'
	@title = 'Recipe for Tortellini Rosa'
	@contentTitle = 'Tortellini Rosa'
	
	erb :'recipes/pasta/tortellini_rosa'
end



#
# Redirect from old URLs to new ones
#

get '/index.cfm' do
	redirect to('/')
end

get '/presentations/' do
	redirect to('/presentations')
end

get '/presentations/index.cfm' do
	redirect to('/presentations')
end

get '/recipes/' do
	redirect to('/recipes')
end

get '/recipes/index.cfm' do
	redirect to('/recipes')
end

get '/resume.cfm' do
	redirect to('/resume')
end

