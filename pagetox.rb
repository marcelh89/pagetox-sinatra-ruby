# Example config.ru

require 'sinatra'
require 'imgkit'
require 'pdfkit'

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

not_found do
  halt 404, 'page not found'
end