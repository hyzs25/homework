#encoding: utf-8
require 'sinatra'

get '/' do
'<h2>贺洋的blog</h2>'
end

get '/post/:post' do |p|
markdown p.to_sym
end