Quando("eu cadastro o usuário") do
  visit "/users/new"
  fill_in(id: "user_name", with: "Bruno")
  find("#user_lastname").set("Batista")
  fill_in(id: "user_email", with: "email@gmail.com")
  find('input[value=\'Criar\']').click
end

Então("verifico se o usuário foi cadastrado") do
  @texto = find("#notice")
  expect(@texto.text).to eql "Usuário Criado com sucesso"
end

Quando("edito um usuário") do
  sleep(10)
  find(".btn.waves-light.blue").click
  sleep(10)
end

Então("verifico se o usuário foi editado") do
  pending # Write code here that turns the phrase above into concrete actions
end
