class MainController < ApplicationController
  def index
    session[:gaman] ||= 0
    @gaman = params[:result].to_i + session[:gaman]
    session[:gaman] = @gaman
  end
  def index2
    session[:gaman] = 0
    redirect_to action: "index"
 
  end
end