class ArchivoMailer < ActionMailer::Base
  default from: "no-reply@adsmex.com"

  def archivo_new(user, archivo)
    @user = user
    @user.each do |x|
      @archivo = archivo
      mail to: x.email, subject: "Se ha subido un archivo a los cursos ADS"
    end
  end

end
