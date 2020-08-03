
class Unidades < SitePrism::Page
    
    element :cbx_filtro, :xpath, "//*[@id='checkoox-select-facilities']"
    element :label_unidade, :xpath, "(//*[@class='typographycomponentstyle__H3-sc-1oox73n-3 caOpMn'])[1]"
    element :link_ver_detalhes, :xpath, "(//*[@class='sc-bdVaJa gridcomponent__GridStyled-sc-8zg10d-0 fHFDYJ']/..//a[contains(@class,'ver-detalhes')])[1]"
    
    

    def abrirFiltro
        wait_for_cbx_filtro
        cbx_filtro.click
    end 

    def verificarUnidade
        wait_for_label_unidade
        label_unidade        
    end

    def verDetalhes
        sleep 4
        link_ver_detalhes.click        
    end
   
    def escolherCheckboxRandom
        i = find_all(:xpath,"//*[@class='checkbox-fieldcomponentstyle__CheckboxFieldStyled-sc-1mdajsk-0 DRDNI']").length
        random = rand(1..3)
        for a in 0..random do
            checkbox = rand(1..i)
            find(:xpath,"(//*[@class='checkbox-fieldcomponentstyle__CheckboxFieldStyled-sc-1mdajsk-0 DRDNI'])[#{checkbox}]").click   
        end
    end 

end