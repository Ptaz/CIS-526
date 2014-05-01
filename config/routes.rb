CISHomepage::Application.routes.draw do
  get "clubs_list/index"
  resources :clubs
 
  get "/calendar" => "calendar#hello"

#  root :to -> 'clubs'  
  def index
	@products = Product.order(:title)
  end
end
