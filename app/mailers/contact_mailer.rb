class ContactMailer < ActionMailer::Base
  default from: "abc@gmail.com"
  def send_contact_mail(contact)
  	@contact ||= contact
  	mail(:to => "test@tst.com", :subject => "Mott Full")
  end
end