# Example config.ru

require 'sinatra'
require 'imgkit'
require 'pdfkit'

class Pumatra < Sinatra::Base

get '/' do
  erb :form
end

post '/urltopng' do
  content_type 'image/png'
  IMGKit.new(params[:url]).to_img(:png)

end

post '/htmltopng' do
  content_type 'image/png'
  IMGKit.new(params[:html]).to_img(:png)
end

post '/htmltojpg' do
  content_type 'image/jpg'
  IMGKit.new(params[:html]).to_img(:jpg)
end

post '/htmltopdf' do
  content_type 'application/pdf'
  PDFKit.new(params[:html], :page_size => 'Letter').to_pdf
end

post '/htmlraphaeltopdf' do
  content_type 'application/pdf'
  PDFKit.new(params[:html], :page_width => '500px', :page_height => '500px',
                   :margin_top => 0, :margin_bottom => 0, :margin_left => 0, :margin_right => 0,
                   :dpi => 300).to_pdf
end

not_found do
  halt 404, 'page not found'
end

end

if __FILE__ == $0
  Pumatra.run!
end
