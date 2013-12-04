# encoding: utf-8
#
#
# == \General Information
#
# Author::    Oleg Bobok  (mailto:bobizma@gmail.com)
# License::   Distributes under the same terms as Ruby
#

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :check_user


# Отображение главной страницы
  def front
    render 'front/front'
  end

  private

  def check_user
    unless params[:action] == 'front' && params[:controller] == 'application'
      redirect_to '/' unless current_user
    end
  end
end
