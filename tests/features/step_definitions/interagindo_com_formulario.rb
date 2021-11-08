Quando("eu faco cadastro") do
  visit "/users/new"
  fill_in(id: "user_name", with: "Leandro")
  find("#user_lastname").set("Fernandes")
  find("#user_email").send_keys("teste@teste.com")

  fill_in(id: "user_address", with: "Rua Nove de Julho")
  find("#user_university").set("Logatti")
  find("#user_profile").send_keys("Analista de Qualidade")

  fill_in(id: "user_gender", with: "Masculino")
  find("#user_age").set("25")
  find("input[value=\"Criar\"]").click

  sleep(5)
end

Então("verifico se fui cadastrado") do
  texto = find("#notice")
  expect(texto.text).to eql "Usuário Criado com sucesso"
end
