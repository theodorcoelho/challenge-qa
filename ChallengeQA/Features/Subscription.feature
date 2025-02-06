Funcionalidade: Cadastro de Candidato no Portal de Inscri��es
	Como candidato da +A Educa��o
	Quero selecionar o n�vel de ensino e o curso desejado
	E preencher os dados de cadastro
	Para efetuar meu cadastro no portal de inscri��es

Contexto:
	Dado que o candidato acessa o portal de inscricoes

Cenario: Redirecionar para sele��o de curso ao escolher 'Graduacao'
	Dado que o candidato est� na p�gina inicial
#	Quando seleciona o n�vel de ensino "graduacao"
#	Entao deve ser redirecionado para sele��o de curso de "graduacao"

#Cenario: Redirecionar para sele��o de curso ao escolher 'P�s-gradua��o'
#	Dado que o candidato est� na p�gina inicial
#	Quando seleciona o n�vel de ensino "pos-graduacao"
#	Entao deve ser redirecionado para sele��o de curso de p�s-gradua��o
#
#Cenario: Exibir alerta ao selecionar n�vel de ensino inv�lido
#	Dado que o candidato est� na p�gina inicial
#	Quando seleciona o n�vel de ensino "Selecione uma op��o..."
#	Entao deve ser apresentado um alert com a mensagem "Por favor, selecione um n�vel de ensino..."
#
#Cenario: Pesquisar e selecionar curso
#	Dado que o candidato est� na p�gina de sele��o de curso de <n�vel>
#	Quando clicar em "Selecione um curso..."
#	E pesquisar o curso "<curso>"
#	Entao deve encontrar o curso "<curso>"
#
#Cenario: Redirecionar para o formul�rio de cadastro ap�s selecionar um curso
#	Dado que o candidato est� na p�gina de sele��o de curso de <n�vel>
#	Quando seleciona o curso "<curso>"
#	E clica no bot�o "Avan�ar"
#	Entao o candidato deve ser redirecionado para o formul�rio de cadastro
#
#Cenario: Exibir erro ao n�o selecionar o curso
#	Dado que o candidato est� na p�gina de sele��o de curso de <n�vel>
#	Quando n�o seleciona um curso
#	E tenta avan�ar para o pr�ximo passo
#	Entao deve ser exibida a mensagem "Por favor, selecione um curso"
#
#Exemplos:
#	| n�vel         | curso                               |
#	| gradua��o     | Direito                             |
#	| p�s-gradua��o | Mestrado em Intelig�ncia Artificial |
#
#Cenario: Cadastro bem-sucedido com preenchimento dos campos obrigat�rios
#	Dado que o candidato est� na p�gina de cadastro
#	Quando preenche todos os campos obrigat�rios com dados v�lidos
#	E clica no bot�o "Avan�ar"
#	Entao o candidato deve ser redirecionado para a tela de confirma��o
#	E as credenciais de acesso � �rea do candidato devem ser disponibilizadas
#
#Cenario: Exibir erro ao deixar campo obrigat�rio vazio
#	Dado que o candidato est� na p�gina de cadastro
#	Quando preenche todos os campos obrigat�rios com dados v�lidos
#	E o campo "<campo>" est� vazio
#	E o candidato clica no bot�o "Avan�ar"
#	Entao o formul�rio n�o deve ser submetido
#	E o campo "<campo>" deve ser destacado em vermelho
#	E deve exibir a mensagem "Campo obrigat�rio" abaixo do campo
#
#Exemplos:
#	| campo          |
#	| cpf            |
#	| name           |
#	| surname        |
#	| socialName     |
#	| birthdate      |
#	| email          |
#	| cellphone      |
#	| cep            |
#	| address        |
#	| neighborhood   |
#	| city           |
#	| state          |
#	| country        |
#
#Cenario: Exibir erro ao inserir CPF inv�lido
#	Dado que o candidato est� na p�gina de cadastro
#	Quando insere um CPF inv�lido
#	Entao deve exibir uma mensagem de erro informando que o CPF � inv�lido
#
#Cenario: Exibir erro ao inserir data de nascimento inv�lida
#	Dado que o candidato est� na p�gina de cadastro
#	Quando insere uma data de nascimento inv�lida
#	Entao deve exibir uma mensagem de erro informando que a data � inv�lida
#
#Cenario: Exibir erro ao inserir e-mail inv�lido
#	Dado que o candidato est� na p�gina de cadastro
#	Quando insere um e-mail em formato inv�lido
#	Entao deve exibir uma mensagem de erro informando que o e-mail � inv�lido
#
#Cenario: Exibir erro ao inserir celular inv�lido
#	Dado que o candidato est� na p�gina de cadastro
#	Quando insere um n�mero de celular em formato inv�lido
#	Entao deve exibir uma mensagem de erro informando que o n�mero � inv�lido
