Quando("eu faço um upload de arquivo") do
  visit "/outros/uploaddearquivos"
  #attach_file("upload", "C:\\Users\\leans\\Documents\\Workspace-xcode\\capybaraTest\\tests\\features\\jpeg-home.jpg", make_visible: true)

  @foto = File.join(Dir.pwd, "features/jpeg-home.jpg")
  attach_file("upload", @foto, make_visible: true)
  sleep(5)
end
