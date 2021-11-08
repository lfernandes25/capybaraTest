Dado("que esteja no navegador") do
end

Quando("acesso a url de botoes") do
  visit "/buscaelementos/botoes"
end

Então("verifico se encontrei os elementos") do
  #all buscar todos elementos que contem o all
  page.all(:css, ".btn")
  #busca um elemento mapeado
  find("#teste")
  #busca por id
  find_by_id("teste")
  #busca por botao
  find_button(class: "btn waves-light")
  #busca o primeiro elemento que contenha o elemento mapeado
  first(".btn")
  find_link(href: "https://consultoriabatista.herokuapp.com/")
  sleep(5)
end
