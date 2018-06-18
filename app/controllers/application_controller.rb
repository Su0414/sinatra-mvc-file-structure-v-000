class ApplicationController < Sinatra::Base

  configure do
  	set :views, "app/views"
  	set :public_dir, "public"
  end

  get "/" do
  	erb :index
  end

  post '/' do
    @dog = Dog.new(:name => "Spot", :breed => "labrabor", :age => 4)
    @dog.save
  end
end
