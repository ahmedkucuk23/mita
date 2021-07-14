class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :contact, :careers, :contact, :services, :stories, :clients ]

  def home
  end
end
