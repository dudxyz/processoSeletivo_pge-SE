# Projeto - Processo Seletivo

## 1. Banco de Dados - Sistema de Gerenciamento de Processos Jurídicos

Este projeto consiste em um sistema de gestão de processos jurídicos, permitindo o controle de informações sobre processos, prazos, documentos, procuradores e clientes. O banco de dados foi estruturado para organizar e acompanhar processos, prazos importantes e documentos relacionados, além de gerenciar as pessoas envolvidas, como procuradores e clientes.

### Estrutura do Banco de Dados

O banco de dados "sistema_processos_juridicos" contém as seguintes tabelas principais:

- processo: Registra informações sobre os processos jurídicos como o órgao ou juízo responsável, assunto e status do processo.
  - Chave primária: numero_processo
  - Chaves estrangeiras: oab_procurador (referência a procurador), cliente (referência a cliente)
- prazo: Armazena os prazos processuais e seus status, além de armazenar datas de vencimento e tipos de prazo.
  - Chave primária: id_prazo
  - Chave estrangeira: numero_processo (referência a processo)
- documento: Contém informações sobre documentos relacionados aos processos como o tipo e nome do documento.
  - Chave primária: id_documento
  - Chave estrangeira: numero_processo (referência a processo)
- procurador: Cadastro de procuradores responsáveis pelos processos.
  - Chave primária: oab
- cliente: Dados dos clientes envolvidos nos processos.
  - Chave primária: id_cliente
- redistribuicao: Controla a troca de procuradores em um processo.
  - Chave primária: id_distribuicao
  - Chaves estrangeiras: oab_procurador_anterior e oab_procurador_atual (referência a procurador)

#### Instalação e Configuração
- Instale um servidor MySQL e crie o banco de dados.
- Execute o script sistema_processos_juridicos.sql para criar as tabelas.

## 2. Análise Descritiva

O projeto também inclui um notebook com uma análise descritiva de dados com uma descrição detalhada do que foi feito. Este notebook demonstra técnicas de análise exploratória e visualização de dados, utilizando o clássico dataset Iris como exemplo.

A análise inclui:
- Uma vericação da necessidade de limpeza dos dados
- Identificação das classes e quantidade de observações do conjunto
- Medidas de tendência central do conjunto
- Gráficos de distribuições das variáveis
- Gráficos de correlação
- Análise dos resultados
- Exportação de gráficos

#### Como Executar a Análise
- Instale os pacotes necessários:
  `pip install pandas seaborn matplotlib`
- Abra o notebook ps_analise_descritiva.ipynb em um ambiente Jupyter Notebook.
- Execute as células para visualizar a análise dos dados.

## 3. Documentação
Por fim, o projeto inclui um Diagrama de Entidade Relacionamento, que representa o que foi desenvolvido na modelagem do banco de dados.

#### Como abrir o DER
Para visualizar o arquivo, é necessário:
- Baixar o arquivo.
- Instalar a ferramenta BrModelo, disponível neste [LINK](https://www.brmodeloweb.com/lang/pt-br/index.html).
- Abrir o arquivo diretamente na ferramenta para visualizar e editar o modelo.

_______________________________________________________________________________________________________________________

Tecnologias Utilizadas
- Banco de Dados: MySQL
- Linguagem: SQL
- Ferramentas de Análise: Pandas, Seaborn, Matplotlib
- Ferramenta de Modelagem: BrModelo
