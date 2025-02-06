Funcionalidade: Cadastro de Candidato no Portal de Inscrições
	Como candidato da +A Educação
	Quero selecionar o nível de ensino e o curso desejado
	E preencher os dados de cadastro
	Para efetuar meu cadastro no portal de inscrições

Contexto:
	Dado que o cadidato acessa o portal de inscrições

Cenario: Redirecionar para seleção de curso ao escolher 'Graduação'
	Dado que o candidato está na página inicial
	Quando seleciona o nível de ensino "graduacao"
	Entao deve ser redirecionado para seleção de curso de graduação

Cenario: Redirecionar para seleção de curso ao escolher 'Pós-graduação'
	Dado que o candidato está na página inicial
	Quando seleciona o nível de ensino "pos-graduacao"
	Entao deve ser redirecionado para seleção de curso de graduação

Cenario: Exibir alerta ao selecionar nível de ensino inválido
	Dado que o candidato está na página inicial
	Quando seleciona o nível de ensino "Selecione uma opção..."
	Entao deve ser apresentado um alert com a mensagem "Por favor, selecione um nível de ensino..."

Cenario: Pesquisar curso
	Dado que o candidato está na página de seleção de curso de <nível>
	Quando clicar em "Selecione um curso..."
	E pesquisar o curso "<curso>"
	Entao deve encontrar o curso "<curso>"

Exemplos:
	| nível         | curso                               |
	| graduação     | Direito                             |
	| pós-graduação | Mestrado em Inteligência Artificial |
