#language: pt

Funcionalidade: Efetuar login no site School of net

Eu, como aluno
Desejo efetuar o login site
Para acessar meus cursos

@Login_sucesso
Cenario: Realizar login com sucesso

	Dado que eu acesse a pagina do curso
	E click  em Fazer login
	Quando informar meu email
	E cick em Avançar
	Entao devo visualizar a mensagem Você está dentro

@Login_link
Cenario: Receber link login

	Dado que eu acesse a pagina do curso
	E click  em Fazer login
	Quando informar meu email cadastrado
	E cick em Avançar
	Entao devo visualizar a mensagem Email enviado.
