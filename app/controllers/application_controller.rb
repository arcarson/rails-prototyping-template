require 'yaml'

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :load_data


  def load_data
    @data = YAML::load(File.open("#{Rails.root}/data/data.yml"))
  end

end
