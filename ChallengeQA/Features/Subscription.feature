Funcionalidade: Subscriptions
	Como um candidato da +a educa��o
	Quero realizar meu cadastro no portal de inscri��es
	Para receber o acesso � �rea do candidato

Contexto:
	Dado que o cadidato acessa o portal de inscri��es

Cenario: Redirecionamento para sele��o de cursos ao escolher n�vel de ensino 'Gradua��o'
	Dado que o candidato est� na p�gina inicial
	Quando seleciona o n�vel de ensino "graduacao"
	Entao deve ser redirecionado para sele��o de curso de gradua��o

Cenario: Redirecionamento para sele��o de cursos ao escolher n�vel de ensino 'P�s-gradua��o'
	Dado que o candidato est� na p�gina inicial
	Quando seleciona o n�vel de ensino "pos-graduacao"
	Entao deve ser redirecionado para sele��o de curso de gradua��o

Cenario: Exibe alerta ao selecionar n�vel de ensino inv�lido
	Dado que o candidato est� na p�gina inicial
	Quando seleciona o n�vel de ensino "Selecione uma op��o..."
	Entao deve ser apresentado um alert com a mensagem "Por favor, selecione um n�vel de ensino..."

Cen�rio: Pesquisa curso de gradua��o nos cursos de gradua��o
	Dado que o candidato est� na p�gina de sele��o de curso de gradua��o
	Quando clicar em "Selecione um curso..."
	E pesquisar o curso "Direito"
	Ent�o deve encontrar o curso "Direito"

Cen�rio: Pesquisa curso de p�s-gradua��o no curso de p�s-gradua��o
	Dado que o candidato est� na p�gina de sele��o de curso de pos-gradua��o
	Quando clicar em "Selecione um curso..."
	E pesquisar o curso "Mestrado em Intelig�ncia Artificial"
	Ent�o n�o deve encontrar o curso "Mestrado em Intelig�ncia Artificial"

Cen�rio: Pesquisa de curso de p�s-gradua��o no curso de p�s gradua��o
	Dado que o candidato est� na p�gina de sele��o de curso de pos-gradua��o
	Quando clicar em "Selecione um curso..."
	E pesquisar o curso "Mestrado em Intelig�ncia Artificial"
	Ent�o deve encontrar o curso "Mestrado em Intelig�ncia Artificial"

Cen�rio: Pesquisa curso de gradua��o nos cursos de p�s-gradua��o
	Dado que o candidato est� na p�gina de sele��o de curso de gradua��o
	Quando clicar em "Selecione um curso..."
	E pesquisar o curso "An�lise e Desenvolvimento de Sistemas"
	Ent�o n�o deve encontrar o curso "An�lise e Desenvolvimento de Sistemas"




