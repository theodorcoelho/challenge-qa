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

Cenario: Pesquisa curso de gradua��o ou p�s-gradua��o
	Dado que o candidato est� na p�gina de sele��o de curso de <n�vel>
	Quando clicar em "Selecione um curso..."
	E pesquisar o curso "<curso>"
	Entao deve encontrar o curso "<curso>"

Exemplos:
	| n�vel         | curso                               |
	| gradua��o     | Direito                             |
	| p�s-gradua��o | Mestrado em Intelig�ncia Artificial |
