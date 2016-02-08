require 'nyny'

class App < NYNY::App
    get '/' do
        render 'index.html'
    end
end

App.run!
