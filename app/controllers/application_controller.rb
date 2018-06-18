class ApplicationController < Sinatra::Base

  configure do
  	set :views, "app/views"
  	set :public_dir, "public"
  end

  get "/" do
    @dog = Dog.new
    @dog.name = "spot"
    @dog.breed = "labrador"
    @dog.age = 5

  	erb :index
  end

  post '/' do
  end

end
