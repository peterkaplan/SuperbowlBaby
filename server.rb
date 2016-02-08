require 'nyny'

class App < NYNY::App
    use Rack::Static, :urls => ['/public']
    get '/' do
        render 'index.html'
    end
end

App.run!
