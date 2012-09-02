require 'sinatra'
require 'cgi'

get '/:url' do
  "https://www.google.co.jp/search?hl=ja&as_q=%s&as_sitesearch=" + CGI.escape(params['url'])
end