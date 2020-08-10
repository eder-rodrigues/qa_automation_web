Dado("que eu acesse o aplicativo da Fleury") do

end
  
Quando("verificar todas as unidades") do
  home.unidades
  home.denyLocation
  
    #sleep 15
    #find_element(id: "pointsOfCareArea").click
    #sleep 7
    #driver.find_element(xpath: "//android.widget.Button[@resource-id='com.android.permissioncontroller:id/permission_deny_button']").click
    #sleep 7
    #Appium::TouchAction.new.swipe({start_y:2000,duration:200}).perform
    #elements = find_elements(id: "point_of_care_name")
    #i = 0
    #while i < 5
    #  if elements[i].text == "Brasília" 
    #    elements[i].click
    #    break
    #  else
    #    i = i + 1
    #  end
    #end
end
  
E ("selecionar a unidade de Brasília")
  home.unidade("Brasília") 
end

Então("deve retornar mais informações da unidade selecionada") do
  pending # Write code here that turns the phrase above into concrete actions
end