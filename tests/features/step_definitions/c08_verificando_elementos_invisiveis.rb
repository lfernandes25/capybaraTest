Quando("clico em um botão") do
  visit "/buscaelementos/botoes"
  find("#teste").click
end

Então("verifico se o texto desapareceu na tela com sucesso") do
  #valida e apresente erro quando não encontrado
  page.assert_text("Você Clicou no Botão!")

  #Retorna true ou false apenas
  page.has_text?("Você Clicou no Botões!")
  have_text("Você Clicou no Botões!")

  #validações acima deve ser enserida em expect
  expect(page.has_text?("Você Clicou no Botão!")).to eql true

  find("#teste").click

  assert_no_text("Você Clicou no Botão!")

  #Retorna true ou false apenas
  #validações acima deve ser enserida em expect
  @condicao = has_no_text?("Você Clicou no Botão!")
  expect(@condicao).to eql true
end
