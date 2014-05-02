# Example config.ru

require 'sinatra'
require 'screencap'

get '/' do
  erb :form
end

post '/urltopng' do
	content_type 'image/png'
  f = Screencap::Fetcher.new('http://google.com')
  screenshot = f.fetch(
    :output => 'my_directory.png', # don't forget the extension!
    # opt<ional:
    #:div => '.header', # selector for a specific element to take screenshot of
    #:width => 1024,
    #:height => 768,
    #:top => 0, :left => 0, :width => 100, :height => 100 # dimensions for a specific area
  )

end


not_found do
  halt 404, 'page not found'
end
