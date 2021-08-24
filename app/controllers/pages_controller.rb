class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :contact, :careers, :contact,:about,  :services, :stories, :clients, :privacy, :terms, :cookies ]

  def home
  end

  def send_contact
     ContactMailer.contact(params[:message]).deliver
  end

end
