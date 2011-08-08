require 'sinatra'
require 'erb'
require 'thin'
require 'serious'

# public folder is the assets folder
set :public, File.dirname(__FILE__) + '/assets'

class MyApp < Serious
	
  # 
  # Main Website Routes
  # 
  
  get '/about/?' do
  	@contentTitle = 'About'
  	
  	erb :about
  end
  
  get '/presentations/?' do
  	@title = 'Presentations'
  	@contentTitle = 'Presentations'
  	
  	erb :presentations
  end
  
  get '/resume/?' do
  	@title = 'Resume'
  	@contentTitle = 'Resume'
  	
  	erb :resume
  end
  
  get '/recipes/?' do
  	@title = 'Recipes for home cooking'
  	@contentTitle = 'Recipes'
  	
  	erb :recipes
  end
  
  get '/rss/?' do
    redirect to('http://feeds.feedburner.com/javierjulio')
  end
  
  #
  # RECIPES
  #
  
  get '/recipes/paella' do
  	@title = 'Recipe for Paella'
  	@contentTitle = 'Paella'
  	
  	erb :'recipes/paella'
  end
  
  get '/recipes/farfalle-with-spring-onions' do
  	@title = 'Recipe for Farfalle with Spring Onions'
  	@contentTitle = 'Farfalle with Spring Onions'
  	
  	erb :'recipes/pasta/farfalle_spring'
  end
  
  get '/recipes/farfalle-tonno' do
  	@title = 'Recipe for Farfalle Tonno'
  	@contentTitle = 'Farfalle Tonno'
  	
  	erb :'recipes/pasta/farfalle_tonno'
  end
  
  get '/recipes/fusilli-mozzarella' do
  	@title = 'Recipe for Fusilli Mozzarella'
  	@contentTitle = 'Fusilli Mozzarella'
  	
  	erb :'recipes/pasta/fusilli_mozzarella'
  end
  
  get '/recipes/tuscan-linguine-shrimp' do
  	@title = 'Recipe for Tuscan Linguine Shrimp'
  	@contentTitle = 'Tuscan Linguine Shrimp'
  	
  	erb :'recipes/pasta/linguine_shrimp'
  end
  
  get '/recipes/linguine-con-tonno-e-olive' do
  	@title = 'Recipe for Linguine con Tonno e Olive'
  	@contentTitle = 'Linguine con Tonno e Olive'
  	
  	erb :'recipes/pasta/linguine_tonno'
  end
  
  get '/recipes/penne-con-tonno-e-mozzarella' do
  	@title = 'Recipe for Penne con Tonno e Olive'
  	@contentTitle = 'Penne con Tonno e Mozzarella'
  	
  	erb :'recipes/pasta/penne_tonno_mozzarella'
  end
  
  get '/recipes/rigatoni-italiano' do
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
  	@title = 'Recipe for Spaghetti con Accinghe e Tonno'
  	@contentTitle = 'Spaghetti con Accinghe e Tonno'
  	
  	erb :'recipes/pasta/spaghetti_tonno'
  end
  
  get '/recipes/tortellini-rosa' do
  	@title = 'Recipe for Tortellini Rosa'
  	@contentTitle = 'Tortellini Rosa'
  	
  	erb :'recipes/pasta/tortellini_rosa'
  end
  
  get '/recipes/bell-pepper-chicken' do
  	@title = 'Recipe for Bell Pepper Chicken'
  	@contentTitle = 'Bell Pepper Chicken'
  	
  	erb :'recipes/meat/bell_pepper_chicken'
  end
  
  get '/recipes/chicken-milanesas' do
  	@title = 'Recipe for Chicken Milanesas'
  	@contentTitle = 'Chicken Milanesas'
  	
  	erb :'recipes/meat/chicken_milanesas'
  end
  
  get '/recipes/chicken-romano' do
  	@title = 'Recipe for Chicken Romano'
  	@contentTitle = 'Chicken Romano'
  	
  	erb :'recipes/meat/chicken_romano'
  end
  
  get '/recipes/garlic-chicken' do
  	@title = 'Recipe for Garlic Chicken'
  	@contentTitle = 'Garlic Chicken'
  	
  	erb :'recipes/meat/garlic_chicken'
  end
  
  get '/recipes/italian-hamburgers' do
  	@title = 'Recipe for Italian Hamburgers aka Javi-burgers'
  	@contentTitle = 'Italian Hamburgers aka Javi-burgers'
  	
  	erb :'recipes/meat/hamburgers'
  end
  
  get '/recipes/marinated-steak' do
  	@title = 'Recipe for Marinated'
  	@contentTitle = 'Marinated Steak'
  	
  	erb :'recipes/meat/marinated_steak'
  end
  
  get '/recipes/steak-with-shallots-and-red-wine-vinegar' do
  	@title = 'Recipe for Steak with Shallots and Red Wine Vinegar'
  	@contentTitle = 'Steak with Shallots and Red Wine Vinegar'
  	
  	erb :'recipes/meat/steak_shallots_red_wine'
  end
  
  get '/recipes/ensaladilla' do
  	@title = 'Recipe for Ensaladilla'
  	@contentTitle = 'Ensaladilla'
  	
  	erb :'recipes/salads/ensaladilla'
  end
  
  get '/recipes/european-salad' do
  	@title = 'Recipe for European Salad'
  	@contentTitle = 'European Salad'
  	
  	erb :'recipes/salads/european_salad'
  end
  
  
  #
  #	REDIRECTS
  # 
  # Redirect from old URLs to new ones. Accounts for pages, folders
  # and all possible combinations of the two.
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
  
  get '/recipes/pasta/farfalle_spring.cfm' do
  	redirect to('/recipes/farfalle-with-spring-onions')
  end
  
  get '/recipes/pasta/farfalle_tonno.cfm' do
  	redirect to('/recipes/farfalle-tonno')
  end
  
  get '/recipes/pasta/fusilli_mozzarella.cfm' do
  	redirect to('/recipes/fusilli-mozzarella')
  end
  
  get '/recipes/pasta/linguine_shrimp.cfm' do
  	redirect to('/recipes/tuscan-linguine-shrimp')
  end
  
  get '/recipes/pasta/linguine_tonno.cfm' do
  	redirect to('/recipes/linguine-con-tonno-e-olive')
  end
  
  get '/recipes/pasta/penne_tonno_mozzarella.cfm' do
  	redirect to('/recipes/penne-con-tonno-e-mozzarella')
  end
  
  get '/recipes/pasta/rigatoni_italiano.cfm' do
  	redirect to('/recipes/rigatoni-italiano')
  end
  
  get '/recipes/pasta/spaghetti_alla_puttanesca.cfm' do
  	redirect to('/recipes/spaghetti-alla-puttanesca')
  end
  
  get '/recipes/pasta/spaghetti_tonno.cfm' do
  	redirect to('/recipes/spaghetti-con-accinghe-e-tonno')
  end
  
  get '/recipes/pasta/tortellini_rosa.cfm' do
  	redirect to('/recipes/tortellini-rosa')
  end
  
  get '/recipes/meat/bell_pepper_chicken.cfm' do
  	redirect to('/recipes/bell-pepper-chicken')
  end
  
  get '/recipes/meat/chicken_milanesas.cfm' do
  	redirect to('/recipes/chicken-milanesas')
  end
  
  get '/recipes/meat/chicken_romano.cfm' do
  	redirect to('/recipes/chicken-romano')
  end
  
  get '/recipes/meat/garlic_chicken.cfm' do
  	redirect to('/recipes/garlic-chicken')
  end
  
  get '/recipes/meat/hamburgers.cfm' do
  	redirect to('/recipes/italian-hamburgers')
  end
  
  get '/recipes/meat/marinated_steak.cfm' do
  	redirect to('/recipes/marinated-steak')
  end
  
  get '/recipes/meat/sirloin_steak.cfm' do
  	redirect to('/recipes/steak-with-shallots-and-red-wine-vinegar')
  end
  
  get '/recipes/salads/ensaladilla.cfm' do
  	redirect to('/recipes/ensaladilla')
  end
  
  get '/recipes/salads/european_salad.cfm' do
  	redirect to('/recipes/european-salad')
  end
  
end