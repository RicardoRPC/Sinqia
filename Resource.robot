*** Keywords ***

Cria Registro
  ${HEADERS}          Create Dictionary     content-type=application/json     token=${TOKEN}
  ${RESPOSTA_POST}    Post Request      https://reqres.in/     uri=/api/users/4
  ...                             data= {"email": "eve.holt@reqres.in", "password": "pistol"} 
  ...                                    
  ...                             headers=${HEADERS}
  
  Set Test Variable     ${RESPOSTA_POST}

Consulta usuario
    ${HEADERS}        Create Dictionary    token=${TOKEN}
    ${RESPOSTA_GET}   Get Request      https://reqres.in     uri=/api/users/4
    ...                                headers=${HEADERS}
  
    Set Test Variable    ${RESPOSTA_GET}

Deleta usuario
    ${HEADERS}        Create Dictionary    token=${TOKEN}
    ${RESPOSTA_GET}   Delete Request      https://reqres.in     uri=/api/users/4
    ...                                headers=${HEADERS}
  
    Set Test Variable    ${RESPOSTA_GET}