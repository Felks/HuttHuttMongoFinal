class SessionsController < ApplicationController
  def new
  end

  def create
  	member = Member.where(:email => params[:email]).first
  	if member && member.authenticate(params[:password])
  	session[:member_id] = member.id 
  	redirect_to '/'
  else
  	redirect_to '/login'
  end
end

  def destroy
  	session[:member_id] = nil
  	redirect_to '/login'
  end
end
