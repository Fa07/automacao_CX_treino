#language:pt
#utf-8

Funcionalidade: Fazer o cadastro no site do CRM
Eu como iniciante em automacao
Quero automatizar o cadastro em um site
Para melhorar minhas habilidades

@cadastro_SuiteCRM
Esquema do Cenario: Fazer o cadastro, editar e excluir
  Dado que eu esteja no site do Suite CRM
  Quando logar no site com <username>
  E com <password>
  Entao farei o cadastro
  E irei edita-lo
  E por ultimo exclui-lo

Exemplos:
|  username  |  password  |
|  "will"    |  "will"    |
