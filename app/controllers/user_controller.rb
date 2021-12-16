class UserController < ApplicationController

	def create
	  @user = User.where(id: params[:id]).first || User.new
      @user.id        	= params[:id]
      @user.avatar      = params[:avatar]
      @user.first_name  = params[:first_name]
      @user.last_name  	= params[:last_name]
      @user.email       = params[:email]
      @user.save
	end

	private
	  

end
