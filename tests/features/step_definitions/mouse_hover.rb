Quando("seleciono o mouse hover") do
  visit "/iteracoes/mousehover"
  #verifica se o texto está na tela antes
  expect(page.has_no_text?("Você usou o mouse hover!")).to eql true

  #coloca no mouse em cima
  find(".activator").hover

  #colocar o mouse em cima e clicar é
  #find(".activator").hover.click

  #valida se apresenta a mensagem
  expect(page.has_text?("Você usou o mouse hover!")).to eql true
  sleep(5)
end
