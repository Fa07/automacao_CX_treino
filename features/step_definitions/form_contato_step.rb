Dado("que eu esteja no site da CX") do
  visit 'https://www.cargox.com.br'
  page.find('[class="pushcrew-chrome-style-notification-btn pushcrew-btn-close"]').click
end

Quando("for direcionado a sessao de contatos") do
  page.find('[id="menu-item-3290"]').click
end

Entao("irei preencher o formulário") do
  binding.pry
  fill_in('id="nome-3547-1"', witch => 'Fernando Coutinho')
  fill_in('id="email-3547-1"', witch => 'cout.fernando.a@gmail.com')
  fill_in('id="telefone-3547-1"', witch => '3244-2766')
end
