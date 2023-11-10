Dado('que estou logado no site do orange') do
  login.load
  login.alreadyLogged
end

Quando('eu cadastrar um novo adminstrador') do |table|
  data = table.hashes.first
  admin.createNewAdm(data['Employee Name'], data['Username'], data['Password'])
end

Quando('eu buscar pelo administrador') do |table|
  data = table.hashes.first
  admin.searchNewAdmin(data['Username'])
end

Quando('eu deletar o administrador') do |table|
  data = table.hashes.first
  admin.searchNewAdmin(data['Username'])
  admin.deleteNewAdmin
end

Então('devo visualizar a mensagem de ação bem sucedida') do
  admin.checkNewAdmSuccessfull
end

Então('devo visualizar o cadastro na lista de administradores') do |table|
  data = table.hashes.first
  admin.checkAdminOnList(data['Username'])
end

Então('o cadastro deve ser deletado com sucesso') do
  admin.deletedWithSuccessfull
end