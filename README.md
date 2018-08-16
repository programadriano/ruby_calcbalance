# ruby_transacoes_bancarias

Projeto criado para demonstrar como desenvolver uma console com ruby com testes. Esse projeto foi desenvolvido com testes.


## Test

O código está com RSpec para os testes, dentro do diretório spec tem um arquivo chamado transaction_spec.rb com alguns testes de transacoes bancarias.
 Para validar esses testes, basta você executar o comando no seu CMD (Windows) ou Terminal (Linux) `rspec spec .\spec\transaction_spec.rb`

## Executar  o código

O projeto tem uma pasta chamada files com dois arquivos: contas.csv e transacoes.csv.
Para importar elas e validar as regras de negócio, execute o comando  `.\index.rb .\files\contas.csv .\files\transacoes.csv` no seu terminal.
