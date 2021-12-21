Quando("eu entro na janela e verifico a mensagem") do
  visit "mudancadefoco/janela"

  #janela recebe janela aberta pelo link
  janela = window_opened_by do
    click_link("Clique aqui")
  end

  #muda o foco para a nova janela
  within_window janela do
    #valida se a janela aberta possui a mesma url
    expect(current_url).to eq "https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow"

    #valida o texto na aba janela aberta
    @mensagem = find(:xpath, "/html/body/div[2]/div[2]/div[2]/div/h5")
    expect(@mensagem.text).to eql "Você Abriu uma nova janela!!"
    sleep(5)

    #fecha a janela
    janela.close
    sleep(5)
  end

  #segunda opcao
  click_link("Clique aqui")

  #mudando para a ultima aba aberta
  switch_to_window windows.last
  #valida se a janela aberta possui a mesma url
  expect(current_url).to eq "https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow"

  #valida o texto na aba janela aberta
  @mensagem = find(:xpath, "/html/body/div[2]/div[2]/div[2]/div/h5")
  expect(@mensagem.text).to eql "Você Abriu uma nova janela!!"
  sleep(5)

  #fecha a janela
  windows.last.close
  sleep(5)
end

Quando("eu entro no alert e verifico faco a acao") do
  visit "/mudancadefoco/alert"

  find('button[onclick="jsAlert()"]').click
  sleep(2)
  page.accept_alert
  sleep(2)
  expect(find("#result").text).to eql "Você clicou no alerta com sucesso!!"

  #Opcao de cancelar e confirmar no alert
  #cancelar
  find('button[onclick="jsConfirm()"]').click
  sleep(2)
  page.dismiss_confirm
  sleep(2)
  expect(find("#result").text).to eql "Você clicou: Cancel"

  #Aceitar
  find('button[onclick="jsConfirm()"]').click
  sleep(2)
  page.accept_confirm
  sleep(2)
  expect(find("#result").text).to eql "Você clicou: Ok"

  ##Prompt
  #Aceitar
  find('button[onclick="jsPrompt()"]').click
  sleep(2)
  page.accept_prompt(with: "Leandro Siqueira")
  sleep(2)
  expect(find("#result").text).to eql "Você digitou: Leandro Siqueira"

  #Cancelar
  find('button[onclick="jsPrompt()"]').click
  sleep(2)
  page.dismiss_prompt(with: "Leandro Cancela")
  sleep(2)
  expect(find("#result").text).to eql "Você digitou: null"
end
