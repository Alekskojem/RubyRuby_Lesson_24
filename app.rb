#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
	erb "Hello! <a href=\"https://github.com/bootstrap-ruby/sinatra-bootstrap\">Original</a> pattern has been modified for <a href=\"http://rubyschool.us/\">Ruby School</a>"			
end

get '/About' do
	@error = 'something wrong!'
	erb :About
end

get '/visit' do
	erb :visit
end

post '/visit' do
	
	@username = params[:username]
	@phone = params[:phone]
	@datetime = params[:datetime]
	@barber = params[:barber]
	@color = params[:color]

	if @username == ''
		@error = 'ВВЕДИТЕ ИМЯ!'
		
		end
	if @phone == ''
		@error = 'ВВЕДИТЕ НОМЕР ТЕЛЕФОНА'

	end

	if @datetime == ''
		@error = 'Укажите точную дату и время!'
	end
	
	if error !=''
		return erb :visit
	end

	
	erb "OK, Имя посетителя #{@username}, телфон #{@phone}, указано время #{@datetime}, мастера #{@barber}, #{@color}."
end