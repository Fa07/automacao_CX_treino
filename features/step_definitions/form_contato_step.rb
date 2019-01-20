Dado("que eu esteja no site da CX") do
  visit 'https://www.cargox.com.br'
  page.find('[class="pushcrew-chrome-style-notification-btn pushcrew-btn-close"]').click
end

Quando("for direcionado a sessao de contatos") do
  page.find('[id="menu-item-3290"]').click
end

Entao("irei preencher o formulário") do
  page.find('[id="nome-3547-1"]').set('Fernando Coutinho')
  page.find('[id="email-3547-1"]').set('cout.fernando.a@gmail.com')
  page.find('[id="telefone-3547-1"]').set('1133224897')
  page.find('[class="wpcf7-form-control wpcf7-textarea wpcf7-validates-as-required form-control"]').set('HAGADAGA')
  page.find('[class="wpcf7-form-control wpcf7-submit btn btn-lg btn-primary btn-submit"]').click
  assert_text("Sua mensagem foi enviada com sucesso!")
end
