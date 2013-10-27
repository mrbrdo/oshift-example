require 'bundler/setup'
require 'sinatra'

module Simple
  class Application < Sinatra::Base
    get '/' do
      redirect "/index.html"
    end

    get '/hello' do
      "Hello World!"
    end

    get '/hello/:name' do
      # matches "GET /hello/foo" and "GET /hello/bar"
      # params[:name] is 'foo' or 'bar'
      "Hello #{params[:name]}!"
    end
  end
end

run Simple::Application
