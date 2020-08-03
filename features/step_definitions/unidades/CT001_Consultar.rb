#encoding: utf-8

Dado("que eu acesse o site da Fleury") do
    
end

Quando("selecionar as Unidades") do
    home.botaoUnidades
end

E("filtrar os criterios de busca") do
    unidades.abrirFiltro
    unidades.escolherCheckboxRandom
end

E("clicar para ver mais detalhes da unidade") do
    @validacao = unidades.verificarUnidade.text
    unidades.verDetalhes
end


Então("deve retornar mais informações da unidade selecionada") do
    expect(unidade.verificarUnidade.text).to eql @validacao   
end

