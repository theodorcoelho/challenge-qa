Funcionalidade: Cadastro de Candidato no Portal de Inscrições
	Como candidato da +A Educação
	Quero selecionar o nível de ensino e o curso desejado
	E preencher os dados de cadastro
	Para efetuar meu cadastro no portal de inscrições

Contexto:
	Dado que o candidato acessa o portal de inscricoes

Cenario: Redirecionar para seleção de curso ao escolher 'Graduacao'
	Dado que o candidato está na página inicial
#	Quando seleciona o nível de ensino "graduacao"
#	Entao deve ser redirecionado para seleção de curso de "graduacao"

#Cenario: Redirecionar para seleção de curso ao escolher 'Pós-graduação'
#	Dado que o candidato está na página inicial
#	Quando seleciona o nível de ensino "pos-graduacao"
#	Entao deve ser redirecionado para seleção de curso de pós-graduação
#
#Cenario: Exibir alerta ao selecionar nível de ensino inválido
#	Dado que o candidato está na página inicial
#	Quando seleciona o nível de ensino "Selecione uma opção..."
#	Entao deve ser apresentado um alert com a mensagem "Por favor, selecione um nível de ensino..."
#
#Cenario: Pesquisar e selecionar curso
#	Dado que o candidato está na página de seleção de curso de <nível>
#	Quando clicar em "Selecione um curso..."
#	E pesquisar o curso "<curso>"
#	Entao deve encontrar o curso "<curso>"
#
#Cenario: Redirecionar para o formulário de cadastro após selecionar um curso
#	Dado que o candidato está na página de seleção de curso de <nível>
#	Quando seleciona o curso "<curso>"
#	E clica no botão "Avançar"
#	Entao o candidato deve ser redirecionado para o formulário de cadastro
#
#Cenario: Exibir erro ao não selecionar o curso
#	Dado que o candidato está na página de seleção de curso de <nível>
#	Quando não seleciona um curso
#	E tenta avançar para o próximo passo
#	Entao deve ser exibida a mensagem "Por favor, selecione um curso"
#
#Exemplos:
#	| nível         | curso                               |
#	| graduação     | Direito                             |
#	| pós-graduação | Mestrado em Inteligência Artificial |
#
#Cenario: Cadastro bem-sucedido com preenchimento dos campos obrigatórios
#	Dado que o candidato está na página de cadastro
#	Quando preenche todos os campos obrigatórios com dados válidos
#	E clica no botão "Avançar"
#	Entao o candidato deve ser redirecionado para a tela de confirmação
#	E as credenciais de acesso à área do candidato devem ser disponibilizadas
#
#Cenario: Exibir erro ao deixar campo obrigatório vazio
#	Dado que o candidato está na página de cadastro
#	Quando preenche todos os campos obrigatórios com dados válidos
#	E o campo "<campo>" está vazio
#	E o candidato clica no botão "Avançar"
#	Entao o formulário não deve ser submetido
#	E o campo "<campo>" deve ser destacado em vermelho
#	E deve exibir a mensagem "Campo obrigatório" abaixo do campo
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
#Cenario: Exibir erro ao inserir CPF inválido
#	Dado que o candidato está na página de cadastro
#	Quando insere um CPF inválido
#	Entao deve exibir uma mensagem de erro informando que o CPF é inválido
#
#Cenario: Exibir erro ao inserir data de nascimento inválida
#	Dado que o candidato está na página de cadastro
#	Quando insere uma data de nascimento inválida
#	Entao deve exibir uma mensagem de erro informando que a data é inválida
#
#Cenario: Exibir erro ao inserir e-mail inválido
#	Dado que o candidato está na página de cadastro
#	Quando insere um e-mail em formato inválido
#	Entao deve exibir uma mensagem de erro informando que o e-mail é inválido
#
#Cenario: Exibir erro ao inserir celular inválido
#	Dado que o candidato está na página de cadastro
#	Quando insere um número de celular em formato inválido
#	Entao deve exibir uma mensagem de erro informando que o número é inválido
