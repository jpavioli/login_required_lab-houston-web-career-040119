class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name] != "" && params[:name] != nil
      session[:name] = params[:name]
      redirect_to(controller: 'secrets', action: 'show')
    else
      redirect_to(controller: 'sessions', action: 'new')
    end
  end

  def destroy
    session.delete :name
    redirect_to(controller: 'application', action: 'new')
  end

end
