require 'sinatra'
require 'haml'

get '/' do
  haml :index
end

get '/output' do
  @url = "https://www.google.co.jp/search?hl=ja&as_q=%s&as_sitesearch=" + params['url']
end