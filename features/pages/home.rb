#require_relative '../sections/negociacao_section/'

class Home < SitePrism::Page
    set_url ''
    #section :section, Sections::Negociacao, '.negotiation'    
      
    element :btn_unidades, :xpath, "//*[@id='button-title-desktop-header' and @href='/unidades']"
    
    def botaoUnidades
        wait_for_btn_unidades
        btn_unidades.click
    end

end   