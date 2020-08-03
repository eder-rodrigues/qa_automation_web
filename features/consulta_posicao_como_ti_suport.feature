#language: pt

Funcionalidade: Home
Verificar as unidades da Fleury

Eu como usuário final do portal
Quero acessar o site da Fleury
Para buscar as unidades disponiveis

Cenario: CT001 Consultar Unidades
    Dado que eu acesse o site da Fleury
    Quando selecionar as Unidades
    E filtrar os criterios de busca
    E clicar para ver mais detalhes da unidade 
    Então deve retornar mais informações da unidade selecionada

