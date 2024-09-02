+A Educação - Analista de Testes
===================

[![N|Solid](https://maisaedu.com.br/hubfs/site-grupo-a/logo-mais-a-educacao.svg)](https://maisaedu.com.br/) 

# Challange-QA

O objetivo deste desafio é avaliar as competências técnicas dos candidatos a Analista de Testes na Maior Plataforma de Educação do Brasil.

## _Atividade 1_
1.1.  Nesta primeira atividade será solicitado a criaçao de uma Projeto .Net para a documentação dos Cenários de testes e a automação e2e. 

**Especificações Técnicas**
- Projeto em .Net8.0
  - Specflow
  - Specflow Livingdoc
  - Selenium
  - Fluent Assert

1.2. Explore os fluxos presentes na aplicaçao Subscriptions e identifique regras e requisitos.
   - Acesse a aplicação [aqui](https://developer.grupoa.education/subscription).
   - Caso encontre algo que considere bug, reporte em um arquivo Bugs.md.
1.3. Utilizando todos os elementos do Gherkin descreva em cenários as regras e requisitos identificados no item 2. Os cenários devem ser versionados no projeto .Net criado no item 1, seguindo os padrões do Specflow.
1.4. Utilizando os cenáros descritos no item 3 implementa a automação dos mesmos, utilizando os recursos do Specflow.
1.5. Gere o relatório html da documentação e resultados da execução de testes com o LivingDoc e versione junto ao projeto.
1.6. Considerando que a aplicação aqui utilizada vai passar a persistir dados  em banco de Dados  PostgrSQL, descreva a estratégia que você utilizaria emrelação a massa de dados de testes

   ## _Atividade 2_  
2.1. Criar um projeto de teste de carga usando k6 para avaliar as APIs disponíveis em https://test.k6.io/.
  2.2. Crie três testes, simulando cargas de 100, 500 e 1000 usuários simultâneos.
    Teste, no mínimo, os seguintes endpoints:
      - /flip_coin.php
      - /my_messages.php

  2.2.1. Gere os resultados em htmmml
  2.2.2. Envie os scripts de teste e um relatório com os resultados, incluindo gráficos e análise de desempenho.
Utilize o mesmo repositórío repositório Git do pro jeto criado no item 1 para a entrega.

# Critérios de avaliação
- Cenários identificados
- Qualidade da escrita e uso adequado dos elementos da sintaxe Gherkin
- Padrões de projeto e arquitetura aplicados
- Organização do projeto
- Tratamento de erros nos cenários
- Utilização do Git (quantidade e descrição dos commits, Git Flow, ...)
- Validações realizadas

## Desejável
- Aplicação do BRIEF
- Aplicação de boas práticas de escrita de cenários
- Uso de todos os elementos do Gherkin
- Uso de recursos do Specflow
  
## Diferenciais
- Implementar a atividade 2

# Instruções de entrega
1. Crie um fork do repositório no seu GitHub
2. Faça o push do código desenvolvido no seu Github
3. Inclua um arquivo chamado COMMENTS.md explicando
    - Decisões da arquitetura utilizada
    - Lista de bibliotecas de terceiros utilizadas
    - O que você melhoraria se tivesse mais tempo
    - Quais requisitos obrigatórios que não foram entregues
4. Informe ao recrutador quando concluir o desafio junto com o link do repositório
5. Após revisão do projeto junto com a equipe de desevolvimento deixe seu repositório privado
