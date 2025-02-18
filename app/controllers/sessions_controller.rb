require 'pry'
class SessionsController < ApplicationController
  include SessionsHelper
  def new
  end

  def create
    if params[:name].blank?
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
    session.destroy
  end

  private

  def user_params
    params.permit(:name)
  end
end
