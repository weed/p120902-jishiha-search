require 'sinatra'

get '/:url' do
  "https://www.google.co.jp/search?hl=ja&as_q=%s&as_sitesearch=" + params['url']
end