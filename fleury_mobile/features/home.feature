#language: pt

Funcionalidade: Home
Verificar as unidades da Fleury

Eu como usuário final do portal
Quero acessar o site da Fleury
Para buscar as unidades disponiveis

Cenario: CT001 Consultar Unidades
    Dado que eu acesse o aplicativo da Fleury
    Quando verificar todas as unidades
    E selecionar a unidade de Brasília
    Então deve retornar mais informações da unidade selecionada

