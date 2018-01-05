require 'json'
require 'open-uri'

uri = 'http://weather.livedoor.com/forecast/webservice/json/v1?city=400010'

res     = JSON.load(open(uri).read)
title   = res['title']
link    = res['link']
weather = res['forecasts'].first
message = "[#{weather['date']}の#{title}](#{link})は「#{weather['telop']}」です。"
puts message