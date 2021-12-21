Quando("eu marco um checkbox e um radiobox") do
  visit "/buscaelementos/radioecheckbox"
  #checkbox
  find("label[for=\"white\"").click
  check("purple", allow_label_click: true) # faz clicar na ação
  sleep(5)
  uncheck("purple", allow_label_click: true)
  sleep(5)

  #radio
  choose("red", allow_label_click: true)
  sleep(4)
end
