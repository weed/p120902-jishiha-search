require 'sinatra'
require 'cgi'

get '/' do
  haml :index
end

put '/output' do
  @url = "https://www.google.co.jp/search?hl=ja&as_q=%s&as_sitesearch=" + CGI.escape(params['url'])
  haml :index
end