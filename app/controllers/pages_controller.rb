class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :pricing, :thankyou, :checklist, :careers, :contact ,:about,  :services, :stories, :clients, :privacy, :terms, :cookies, :ecommerce, :consulting, :contentcreation, :graphicdesign, :ppcmarketing, :seo, :socialmedia, :webdesign ]

  def home
  end

  def send_contact
     ContactMailer.contact(params[:message]).deliver
  end

end
