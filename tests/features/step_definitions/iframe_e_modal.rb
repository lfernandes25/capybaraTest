Quando("entro no iframe e preencho os campos") do
  visit "/mudancadefoco/iframe"

  #Aqui o capybara olha para dentro do iframe
  within_frame("id_do_iframe") do
    fill_in(id: "first_name", with: "Leandro")
    fill_in(id: "last_name", with: "Fernandes")
    fill_in(id: "password", with: "Teste@123")
    fill_in(id: "email", with: "Teste@123.com")
    sleep(5)
  end
end

Quando("entro no modal e verifico o texto") do
  visit "/mudancadefoco/modal"
  click_link("Abrir")
  sleep(5)
  within("#modal1") do
    expect(page.has_text?("Modal Teste")).to eql true
    find(:xpath, '//*[contains(text(),\'Fechar\')]').click
  end
  sleep(5)
end
