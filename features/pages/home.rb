class Home < SitePrism::Page
  #site utilizado para a automacao
  set_url 'https://demo.suiteondemand.com/'

  #o simbolo # neste caso tem a função de mostrar que isso é um ID
  element :login, '[placeholder="Username"]'
  element :senha, '#username_password'
  element :botao_login, '#bigbutton'
  element :botao_create, '#quickcreatetop'
  element :opcao_Account, '[href="index.php?module=Accounts&action=EditView&return_module=Accounts&return_action=DetailView"]'
  element :nome, '#name'
  element :telefone_trabalho, '#phone_office'
  element :email, '#Accounts0emailAddress0'
  #element :botao_salvar, ('[id="SAVE"]')[0]
  element :botao_acao, '#tab-actions'
  element :opcao_editar, '#edit_button'
  element :opcao_deletar, '#delete_button'

  def log_in_name(username)
    login.set(username)
  end

  def log_in_senha(password)
    senha.set(password)
    botao_login.click
  end

  def criar_cadastro
    botao_create.click
    opcao_Account.click
  end

  def preenche_cadastro
    nome.set "Fernando Alves Mello"
    email.set "mello.alves08@gmail.com"
    page.all('[id="SAVE"]')[0].click
    #botao_salvar.click
  end

  def edit_cadastro
    botao_acao.click
    opcao_editar.click
    page.all('[id="SAVE"]')[0].click
  end

  def excluir_usuario
    botao_acao.click
    opcao_deletar.click
    page.driver.browser.switch_to.alert.accept
  end
#page.driver.browser.switch_to.alert.accept -> Serve para selecionar a opçao de aceitar oq diz no pop-up exibido

end
