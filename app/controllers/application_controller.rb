# encoding: utf-8
require "application_responder"
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

  unless Rails.application.config.consider_all_requests_local
    rescue_from ActiveRecord::RecordNotFound, with: :render_404
    rescue_from ActionController::RoutingError, with: :render_404
    rescue_from ActionController::UnknownController, with: :render_404
    rescue_from ActionController::UnknownAction, with: :render_404
    rescue_from Page::PageIsNotAvailable, with: :render_404
  end

  self.responder = ApplicationResponder
  respond_to :html

  before_action :check_user


# Отображение главной страницы
  def front
    @news = News.latest
    render 'front/front'
  end

  private

  def check_user
    unless params[:action] == 'front' && params[:controller] == 'application'
      redirect_to '/' unless current_user
    end
  end
end
