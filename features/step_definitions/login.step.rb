Dado('que estou no site do orange') do
  login.load
end

Quando('eu preencher os campos de login com os seguintes dados') do |table|
  data = table.hashes.first
  login.login(data['Username'], data['Password'])
end

Quando('eu clicar no Forgot Password') do
  login.clickForgotPassword
end

Quando('eu realizar o logout') do
  login.logout
end

E('clicar no cancelar')do
  reset_password.cancelResetPassword
end

Quando('devo solicitar o reset password') do
  reset_password.resetPassword
end

Então('devo ser direcionado a página inicial') do
  home.checkLoginSuccessful
end

Então('devo visualizar a mensagem de erro para credenciais invalidas {string}') do |invalid_credentials|
  login.checkMessageErrorInvalidCredentias(invalid_credentials)
end

Então('devo visualizar a mensagem de erro para campos requeridos {string}') do |required_fields|
  login.checkMessageErrorRequiredFields(required_fields)
end

Então('receber um link no email cadastrado') do
  reset_password.resetPasswordSuccessfully
end

Então('devo voltar a pagina de login') do
  login.validateLoginPage
end