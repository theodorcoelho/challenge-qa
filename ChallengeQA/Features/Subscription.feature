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

Cenário: Pesquisa curso de graduação nos cursos de graduação
	Dado que o candidato está na página de seleção de curso de graduação
	Quando clicar em "Selecione um curso..."
	E pesquisar o curso "Direito"
	Então deve encontrar o curso "Direito"

Cenário: Pesquisa curso de pós-graduação no curso de pós-graduação
	Dado que o candidato está na página de seleção de curso de pos-graduação
	Quando clicar em "Selecione um curso..."
	E pesquisar o curso "Mestrado em Inteligência Artificial"
	Então não deve encontrar o curso "Mestrado em Inteligência Artificial"

Cenário: Pesquisa de curso de pós-graduação no curso de pós graduação
	Dado que o candidato está na página de seleção de curso de pos-graduação
	Quando clicar em "Selecione um curso..."
	E pesquisar o curso "Mestrado em Inteligência Artificial"
	Então deve encontrar o curso "Mestrado em Inteligência Artificial"

Cenário: Pesquisa curso de graduação nos cursos de pós-graduação
	Dado que o candidato está na página de seleção de curso de graduação
	Quando clicar em "Selecione um curso..."
	E pesquisar o curso "Análise e Desenvolvimento de Sistemas"
	Então não deve encontrar o curso "Análise e Desenvolvimento de Sistemas"




