class Home < SitePrism::Page
    
    element :unidades, :id, "pointsOfCareArea"
    element :deny_location, :xpath, "//android.widget.Button[@resource-id='com.android.permissioncontroller:id/permission_deny_button']"
    
    def unidades
        sleep 20
        #wait_for_unidades
        unidades.click
    end

    def denyLocation
        wait_for_deny_location
        deny_location.click
    end

    def unidade(unidade)
        elements = find_elements(id: "point_of_care_name")
        i = 0
        while i < 5
            if elements[i].text == unidade 
                elements[i].click
                break
            else
                i = i + 1
            end
        end
    end

    def scroll_down
        Appium::TouchAction.new.swipe({start_y:2000,duration:200}).perform
    end
end   