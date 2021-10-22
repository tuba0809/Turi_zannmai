class ContactMailer < ApplicationMailer

  def contact_mail(contact)
    @contact = contact
    mail to: 'tubasa8342849@gmail.com', subject: 'お問い合わせ'
  end
end
