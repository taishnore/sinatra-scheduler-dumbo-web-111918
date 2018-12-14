require 'pry'

class ApplicationController < Sinatra::Base
  set :views, 'app/views' # what is this?

  get '/' do
    erb :'index.html'
  end

  get '/courses' do
    @courses = Course.all
    erb :"courses/index"
  end

  get '/courses/:id' do
    @course = Course.find(params[:id])
    erb :"courses/show"
  end

  get '/courses/:id/edit' do
    @course = Course.find(params[:id])
    erb :"courses/edit"
  end

  put '/courses/:id' do
    # binding.pry
    @course = Course.find(params[:id])
    # binding.pry
    @course.update(params[:course])
    erb :"courses/show"
  end

end
