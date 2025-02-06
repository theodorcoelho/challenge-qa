Funcionalidade: Cadastro de Candidato no Portal de Inscri��es
	Como candidato da +A Educa��o
	Quero selecionar o n�vel de ensino e o curso desejado
	E preencher os dados de cadastro
	Para efetuar meu cadastro no portal de inscri��es

Contexto:
	Dado que o cadidato acessa o portal de inscri��es

Cenario: Redirecionar para sele��o de curso ao escolher 'Gradua��o'
	Dado que o candidato est� na p�gina inicial
	Quando seleciona o n�vel de ensino "graduacao"
	Entao deve ser redirecionado para sele��o de curso de gradua��o

Cenario: Redirecionar para sele��o de curso ao escolher 'P�s-gradua��o'
	Dado que o candidato est� na p�gina inicial
	Quando seleciona o n�vel de ensino "pos-graduacao"
	Entao deve ser redirecionado para sele��o de curso de gradua��o

Cenario: Exibir alerta ao selecionar n�vel de ensino inv�lido
	Dado que o candidato est� na p�gina inicial
	Quando seleciona o n�vel de ensino "Selecione uma op��o..."
	Entao deve ser apresentado um alert com a mensagem "Por favor, selecione um n�vel de ensino..."

Cenario: Pesquisar curso
	Dado que o candidato est� na p�gina de sele��o de curso de <n�vel>
	Quando clicar em "Selecione um curso..."
	E pesquisar o curso "<curso>"
	Entao deve encontrar o curso "<curso>"

Exemplos:
	| n�vel         | curso                               |
	| gradua��o     | Direito                             |
	| p�s-gradua��o | Mestrado em Intelig�ncia Artificial |
