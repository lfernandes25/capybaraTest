Quando("clico no botao") do
  visit "/buscaelementos/botoes"
  find("#teste").click
end

Então("verifico se o texto apareceu na tela com sucesso") do
  #@texto = find("#div1")
  #expect(@texto.text).to eql "Você Clicou no Botão!"

  #valida e apresente erro quando não encontrado
  page.assert_text("Você Clicou no Botão!")

  #Retorna true ou false apenas
  page.has_text?("Você Clicou no Botões!")
  have_text("Você Clicou no Botões!")

  #validações acima deve ser enserida em expect
  expect(page.has_text?("Você Clicou no Botão!")).to eql true
end
