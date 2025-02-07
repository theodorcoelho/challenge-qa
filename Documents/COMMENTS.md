## Decisões de Arquitetura
- **Projeto em .NET 8.0:** para garantir desempenho e suporte atualizados.
- **Reqnroll:** para escrita de cenários de teste em Gherkin, facilitando a automação de testes BDD.
- **Selenium:** para automação de testes end-to-end, permitindo interações reais com a interface do usuário.
- **xUnit:** devido à sua integração com o .NET e suporte a testes paralelos.
- **Fluent Assertions:** para tornar as asserções nos testes mais legíveis e expressivas.

## Bibliotecas de Terceiros Utilizadas
- **Reqnroll:** para definição de cenários de teste em Gherkin e automação BDD.
- **Selenium WebDriver:** para automação de navegadores nos testes end-to-end.
- **xUnit:** Framework de testes unitários para .NET.
- **Fluent Assertions:** Para asserções mais intuitivas nos testes.

## Possíveis Melhorias com Mais Tempo
- **Componentização com Selenium:** Desenvolver componentes reutilizáveis para elementos da interface, aumentando a manutenção e clareza dos testes.
- **Execução Paralela em Múltiplos Navegadores:** Configurar testes para rodar simultaneamente em diferentes navegadores, garantindo compatibilidade cross-browser.
- **Integração do Selenium Grid com Docker Compose:** Implementar o Selenium Grid utilizando Docker Compose para facilitar a escalabilidade e gerenciamento dos ambientes de teste.
- **Finalização da automatização dos steps conforme cenários no arquivo Subscription.feature 

## Requisitos Obrigatórios Não Entregues
- **Atividade 2:** Os cenários de teste de performance simulando cargas de 100, 500 e 1000 usuários simultâneos, bem como a criação do projeto de teste de carga usando k6, não foram
implementados.
