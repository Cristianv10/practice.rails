Rails.application.routes.draw do
  get "/products/new", to: "products#new" , as: :new_product
  get "/products", to: "products#index"
  get "/products/:id", to: "products#show" , as: :product


  get "/events", to: "events#index"
  get "/events/:id", to: "events#show" , as: :event
  get "/events/paginate", to: "events#paginate"


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
  #product ID va hacia la referencia que haya lugar
  #la cual es colocada por el sistema mismo.
  # tu le dices que te muestre eso con el product#show
  # as a product.
  #so, luego va al controlador, es decir, donde va la 
  #lógica y le dice que @product = Product.find(params[:id])
  # osea que del producto encuentre el parametro ID.
  #luego que este lo haga una vairable de instancia que 
  #afecte la vista. 
  #