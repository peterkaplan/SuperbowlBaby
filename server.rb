load 'data.rb'
require 'nyny'

class App < NYNY::App
    use Rack::Static, :urls => ['/public']
    get '/' do
        render 'index.html'
    end

    post '/check' do
        result = check_date(params)
        result = result.to_json
        result
    end

    post '/check_date' do
        result = verify_date(params)
        result = result.to_json
        result
    end

    get '*' do
        redirect_to '/'
    end
end

App.run!
