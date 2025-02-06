Funcionalidade: Subscriptions
	Como um candidato da +a educação
	Quero realizar meu cadastro no portal de inscrições
	Para receber o acesso à área do candidato

Contexto:
	Dado que o cadidato acessa o portal de inscrições

Cenario: Redirecionamento para seleção de cursos ao escolher nível de ensino 'Graduação'
	Dado que o candidato está na página inicial
	Quando seleciona o nível de ensino "graduacao"
	Entao deve ser redirecionado para seleção de curso de graduação

Cenario: Redirecionamento para seleção de cursos ao escolher nível de ensino 'Pós-graduação'
	Dado que o candidato está na página inicial
	Quando seleciona o nível de ensino "pos-graduacao"
	Entao deve ser redirecionado para seleção de curso de graduação

Cenario: Exibe alerta ao selecionar nível de ensino inválido
	Dado que o candidato está na página inicial
	Quando seleciona o nível de ensino "Selecione uma opção..."
	Entao deve ser apresentado um alert com a mensagem "Por favor, selecione um nível de ensino..."

Cenario: Pesquisa curso de graduação ou pós-graduação
	Dado que o candidato está na página de seleção de curso de <nível>
	Quando clicar em "Selecione um curso..."
	E pesquisar o curso "<curso>"
	Entao deve encontrar o curso "<curso>"

Exemplos:
	| nível         | curso                               |
	| graduação     | Direito                             |
	| pós-graduação | Mestrado em Inteligência Artificial |
