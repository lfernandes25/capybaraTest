Quando("interajo com dropdown e select") do
  visit "/buscaelementos/dropdowneselect"
  find(".btn.dropdown-button").click
  find("#dropdown3").click

  #trabalhando com select
  select "Chrome", from: "dropdown"
  sleep(5)
  find('option[value="2"]').select_option
  sleep(5)
end

Quando("preencho o autocomplete") do
  visit "/widgets/autocomplete"
  find("#autocomplete-input").set("Rio de")
  find("ul", text: "Rio de Janeiro").click
  sleep(5)
end
