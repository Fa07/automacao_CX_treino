Dado("que eu esteja no site do Suite CRM") do
  Home.new.load
end

Quando("logar no site com {string}") do |username|
  Home.new.log_in_name(username)
end

Quando("com {string}") do |password|
  Home.new.log_in_senha(password)
end

Entao("farei o cadastro") do
  Home.new.criar_cadastro
  Home.new.preenche_cadastro
end

Entao("irei edita-lo") do
  Home.new.edit_cadastro
end

Entao("por ultimo exclui-lo") do
  Home.new.excluir_usuario
end
