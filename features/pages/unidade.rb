
class Unidade < SitePrism::Page
    
    element :label_unidade, :xpath, "//*[@class='typographycomponentstyle__H1-sc-1oox73n-1 lomAMa']"
    
    def verificarUnidade
        wait_for_label_unidade
        label_unidade        
    end

end