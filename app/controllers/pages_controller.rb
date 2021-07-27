class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :contact, :careers, :contact, :services, :stories, :clients ]

  def home
  end

  def send_contact
     ContactMailer.contact(params[:message]).deliver
  end

end
