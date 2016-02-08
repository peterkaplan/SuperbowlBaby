
load 'data.rb'
require 'nyny'

class App < NYNY::App
    use Rack::Static, :urls => ['/public']
    get '/' do
        render 'index.html'
    end

    post '/check' do

        return render json: not_baby(params)
    end
end

App.run!
