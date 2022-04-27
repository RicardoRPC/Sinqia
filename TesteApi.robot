*** Settings *** 
Documentation  Documentação da Api: https://reqres.in 
Resource       Resource.robot
//Suite Setup    Conectar a minha API

*** Test Case ***
Cria Registro (POST)
  Criando registro
  Validar mensagem retorno POST "id" "token"

Consulta usuario (GET)
  Realizar consulta
  Validar mensagem retorno GET "id" "email"

Deleta usuario (DELETE)
  Realizar a exclusão do resgistro
  Validar mensagem retorno DELETE
  