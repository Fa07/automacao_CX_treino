Dado("que eu esteja no site") do
  visit("http://www.iterasys.com.br")
end

Quando("procurar o curso") do
  #binding.pry
  page.find('[id="courses-searching-2"]').click
  page.find('[class="thim-s form-control courses-search-input"]').set('Formação em teste de software')
  page.find('[class="ui-menu-item7816 ob-selected"]').click
end

Entao("vou validar o valor") do
  #page.find('class="value"')
  page.has_content?('R$4.900,00')
end

Entao("o nome do professor") do
  page.has_content?('JOSE CORREIA')
end
