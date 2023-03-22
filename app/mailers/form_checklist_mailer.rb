class FormChecklistMailer < ApplicationMailer
  default from: 'marketing@mita.ba'

  def welcome_email
      @checklist = params[:checklist]
      mail(to: 'ejub@mita.ba', subject: 'Zahtjev za checklistu s forme - mita.agency')
  end
end
