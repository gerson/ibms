class ContactMailer < ActionMailer::Base
  default :from => "Iglesia Bautista Monte de Sion <bautistamontedesion@gmail.com>"
  NO_REPLY = "IBMS <no-reply@bautistamontedesion.com>"

  def contact_email(params)
    @params = params
    mail(:to => 'bautistamontedesion@gmail.com', :subject => 'Contacto desde bautistamontedesion.com')
  end

end