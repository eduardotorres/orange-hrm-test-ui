Dir[File.join(File.dirname(__FILE__), '~\OrangeHRM-ruby\ui\features\pages*.page.rb')].each { |file| require file }

module Page

  def login
    @login ||= LoginPage.new
  end

  def home
    @home ||= HomePage.new
  end

  def reset_password
    @reset_password ||= ResetPasswordPage.new
  end

  def admin
    @admin ||= AdminPage.new
  end
end