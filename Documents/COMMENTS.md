## Requisitos de Arquitetura 
- **Projeto em .NET 8.0:** para garantir desempenho e suporte atualizados.
- **Selenium:** para automação de testes end-to-end, permitindo interações reais com a interface do usuário.
- **xUnit:** devido à sua integração com o .NET e suporte a testes paralelos.
- **Fluent Assertions:** para tornar as asserções nos testes mais legíveis e expressivas.

## Decisões de Arquitetura
- **Reqnroll:** para escrita de cenários de teste em Gherkin
  - Oferece suporte ao .NET 8
  - Possui otimizações para testes e integrações CI/CD
  - Atualizações frequentes e suporte de longo prazo

## Bibliotecas de Terceiros Utilizadas
- **Reqnroll:** para definição de cenários de teste em Gherkin e automação BDD.
- **Selenium WebDriver:** para automação de navegadores nos testes end-to-end.
- **xUnit:** Framework de testes unitários para .NET.
- **Fluent Assertions:** Para asserções mais intuitivas nos testes.
- **Bogus:** Para gerar dados fake para testes.

## Possíveis Melhorias com Mais Tempo
- **Cobertura de Cenários:** Faltou cobrir cenários de alteração de tema, bem como o uso do tema do sistema, login da plataforma com os dados disponilizados após cadastro, validação de máscara, tipos de caracteres permitidos no campos do formulário e a navegação pelo menu superior.
- **Reorganização dos arquivos:** Os arquivos Feature e Pages poderiam ser divididos para uma melhor organização, visando a facilidade de manutenção e escalabilidade.
- **Inserir steps e assertions:** Não foi possível finalizar os steps, com mais tempo poderia finalizar os steps dos cenários já documentados e criar os métodos que fariam os assertions.
- **Documentação de Bugs:** Os bugs foram apenas listados, mas deveriam ter sido realizada uma investigação mais aprofundada de causa raiz além de ter sido documentado cada problema com o cenário de teste que identificou o bug, detalhes técnicos para facilitação da correção, evidencia do bug e comportamento esperado se não existisse o bug. 
- **Componentização:** Desenvolver componentes reutilizáveis para elementos da interface, aumentando a manutenção e clareza dos testes.
- **Execução Paralela em Múltiplos Navegadores:** Configurar testes para rodar simultaneamente em diferentes navegadores, garantindo compatibilidade cross-browser.
- **Integração do Selenium Grid com Docker Compose:** Implementar o Selenium Grid utilizando Docker Compose para facilitar a escalabilidade e gerenciamento dos ambientes de teste. 

## Requisitos Obrigatórios Não Entregues
- **Atividade 2:** Os cenários de teste de performance simulando cargas de 100, 500 e 1000 usuários simultâneos, bem como a criação do projeto de teste de carga usando k6, não foram implementados.
