require 'sinatra'
require 'haml'

get '/' do
  haml :index
  @url = ''
end

get '/output' do
  haml :index
  @url = "https://www.google.co.jp/search?hl=ja&as_q=%s&as_sitesearch=" + params['url']
end