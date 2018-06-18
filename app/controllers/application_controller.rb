class ApplicationController < Sinatra::Base

  configure do
  	set :views, "app/views"
  	set :public_dir, "public"
  end

  get "/" do
  	erb :index
  end

  post '/' do
    @dogs = Dog.new(name: => "Spot", breed: => "labrabor", age: => 4)
  end
end
