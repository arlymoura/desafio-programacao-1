# Desafio de programação 1
A idéia deste desafio é nos permitir avaliar melhor as habilidades de candidatos à vagas de programador, de vários níveis.

Este desafio deve ser feito por você em sua casa. Gaste o tempo que você quiser, porém normalmente você não deve precisar de mais do que algumas horas.

## Instruções de entrega do desafio
1. Primeiro, faça um fork deste projeto para sua conta no Github (crie uma se você não possuir).
1. Em seguida, implemente o projeto tal qual descrito abaixo, em seu próprio fork.
1. Por fim, empurre todas as suas alterações para o seu fork no Github e envie um pull request para este repositório original. Se você já entrou em contato com alguém da Nexaas sobre uma vaga, avise também essa pessoa por email, incluindo no email o seu usuário no Github.

## Descrição do projeto
Você recebeu um arquivo de texto com os dados de vendas da empresa. Precisamos criar uma maneira para que estes dados sejam importados para um banco de dados.

Sua tarefa é criar uma interface web que aceite upload de arquivos, normalize os dados e armazene-os em um banco de dados relacional.

Sua aplicação web DEVE:

1. Aceitar (via um formulário) o upload de arquivos separados por TAB com as seguintes colunas: purchaser name, item description, item price, purchase count, merchant address, merchant name. Você pode assumir que as colunas estarão sempre nesta ordem, que sempre haverá dados em cada coluna, e que sempre haverá uma linha de cabeçalho. Um arquivo de exemplo chamado example_input.tab está incluído neste repositório.
1. Interpretar ("parsear") o arquivo recebido, normalizar os dados, e salvar corretamente a informação em um banco de dados relacional.
1. Exibir a receita bruta total representada pelo arquivo enviado após o upload + parser.
1. Ser escrita obrigatoriamente em Ruby 2.0+, Python 2.7+, Java 7+ ou PHP 5.3+ (caso esteja entrevistando para uma vaga específica, utilize a linguagem solicitada pela vaga).
1. Ser simples de configurar e rodar, funcionando em ambiente compatível com Unix (Linux ou Mac OS X). Ela deve utilizar apenas linguagens e bibliotecas livres ou gratuitas.

Sua aplicação web não precisa:

1. Lidar com autenticação ou autorização (pontos extras se ela fizer, mais pontos extras se a autenticação for feita via OAuth).
1. Ser escrita usando algum framework específico (mas não há nada errado em usá-los também, use o que achar melhor).
1. Ter uma aparência bonita.


### Solução
Criada Utilizando rails 6 e ruby 2.5 e boostrap, solução bem simples.
algumas validações foram deixadas de lado, como tipo de validação de arquivo de entrada.

### Colocando Projeto para Rodar

1. descompactar o arquivo em uma pasta
1. utilizar o bundle install (obs projeto feito em rails 6 e ruby 2.5)
1. rodar rails webpacker:install
1. configurar arquivo config/database.yml
1. run rake db:create db:migrate db:prepare
1. Para rodar bateria de teste rode rake test

### Observações sobre Desenvolvimento(melhorias)

As gems 'redis' e 'sidekiq' foram incluidas ao projeto, para casos em que o processamento seja mais demorado, onde no arquivo UploadsController, poderia ser incluido a #FilePurchasesParserJob.perform_later(file), para melhor processamento dos arquivos. Com isso também seria neccesário uma configuração ou de armazenamento local dos arquivos ou remoto utilizando activeStorage. 