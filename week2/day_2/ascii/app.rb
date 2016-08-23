#ascii server
require "sinatra"
require "artii"

get "/ascii/:word/?:font?" do
@the_word = params[:word]

@the_font = params[:font]

if @the_font == nil
	@the_font = "fraktur"
end

@ascii_view = Artii::Base.new(:font => @the_font)



@ascii_view.asciify(@the_word) 

erb :home
end




