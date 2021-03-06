class Contact < MailForm::Base
  attribute :name,          :validate => true
  attribute :email,         :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message,       :validate => true
  attribute :nickname,      :captcha => true

  def headers
    {
      :subject => "Graham Plata Dot Com Contact Form",
      :to => "graham.plata@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
