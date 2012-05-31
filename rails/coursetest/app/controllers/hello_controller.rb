class HelloController < ApplicationController
  def index
    output = "hello, #{params[:name]} from the controller at #{Time.now}"
    output << "<br/>"
    output << "Your reversed name is #{params[:name].reverse}\n"
    render :text => output 
  end
end
