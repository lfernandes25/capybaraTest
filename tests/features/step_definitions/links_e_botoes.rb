Quando("clico em botoes") do
  #Acessando url padrao do arquivo env.rb
  visit "/"
  click_on("Começar Automação Web") #click_link_or_button
  visit "/buscaelementos/botoes"
  sleep(5)
  click_button(class: "btn waves-light")
  find('a[onclick="ativaedesativa2()"]').click
  find('a[onclick="ativaedesativa2()"]').double_click
  find('a[onclick="ativaedesativa3()"]').right_click
  sleep(10)
  visit "/"
  click_link("Github")
end
