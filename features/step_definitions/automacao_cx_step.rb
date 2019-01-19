Dado("que eu esteja no site da CargoX") do
  visit 'https://www.cargox.com.br'
  page.find('[class="pushcrew-chrome-style-notification-btn pushcrew-btn-close"]').click
end

Quando("eu entrar no menu de Contatos") do
  #click_button('menu-item-3290')
  page.find('[id="menu-item-3290"]').click
end

Entao("irei validar o telefone") do
  #has_content?('0800-025-8851')
  assert_text('0800-025-8851')
end
