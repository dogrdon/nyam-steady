class UseMailer < ActionMailer::Base
  default(:from => "drew.s.gordon@gmail.com")
  def use_email(upload)
    @upload = upload
    mail(:to => "drew.s.gordon@gmail.com", :subject => "[steady] #{@upload.name} #{@upload.organization}")
    attachments['upload.csv'] = @upload.csv.read if @upload.csv
  end
end
