# Binário Tech

>Status: Desenvolvimento ⚠️

-----------------------------------------------------------------

#### Ambiente de Execucao: Google Cloud Shell / Linux CLI (Terminal) 

-----------------------------------------------------------------

>Curso: Tecnico em Desenvolvimento de Sistemas

>Componente Curricular: Programacao Back-End 1 (PBE1)

>Responsavel: Maria Eduarda Gonçalves da Silva 

-----------------------------------------------------------------

##### Binário Tech é uma consultoria ficticia:  

>IDEIA DE PROJETO 2: "Bot de CLI & Monitoring" - MONITOR DE SERVIDORES

- Contexto do Cliente:
  A consultoria Binario Tech precisa monitorar os servidores das montadoras 
  e emitir alertas de falhas no sistema em tempo real.

- Fases de Desenvolvimento:
  * Fase 1 (Status Codes & Headers): Criacao de rotas simulando erros reais 
    (500, 404, 401) e leitura do cabecalho User-Agent de quem faz a chamada.
  * Fase 2 (JSON/Logs): Geracao automatica de logs em formato JSON para salvar 
    o historico de acessos e excecoes.
  * Fase 3 (Scripts de CLI): Uso de cURL e scripts Bash para testar a saude 
    e disponibilidade da API dos colegas de turma.

- Bateria de Exercicios Massivos por Aula:
  Programar manualmente manipuladores para cada codigo de status HTTP 
  (200, 201, 400, 401, 403, 404, 500) retornando respostas JSON customizadas.

> O projeto inicialmente está dividido em 4 unidades em cada unidade, contem pastas e subpastas e exercícios de teste e obviamente sua instalação. Atualmente o projeto está com duas unidades a mais, totalizando 6 unidades.

### CONTEUDO PROGRAMATICO DETALHADO

#### UNIDADE 1: AMBIENTE DE DESENVOLVIMENTO WEB
1.1. Definicao e conceitos fundamentais  
1.2. Historico e evolucao das arquiteturas web  
1.3. Caracteristicas do ambiente de desenvolvimento no lado do servidor  
1.4. Configuracao do ambiente no Google Cloud Shell (CLI/Linux)  
1.4.1. Instalacao e configuracao de runtimes e pacotes  
1.4.2. Recursos, interfaces e editores via terminal  
1.4.3. Gerenciamento de dependencias (npm, pip, apt)  

#### UNIDADE 2: WEB SERVICES E ESTRUTURACAO DE DADOS
2.1. Definicao e aplicabilidade de Web Services  
2.2. Arquitetura REST  
2.2.1. Conceito de Recursos  
2.2.2. Semantica de URLs RESTful  
2.3. Padrao JSON (JavaScript Object Notation)  
2.3.1. Sintaxe basica e validacao  
2.3.2. Tipos de dados (string, number, boolean, array, object, null)  
2.3.3. Formatacao e indentacao  
2.3.4. Colecao de objetos JSON complexos  
2.4. Padrao XML (eXtensible Markup Language)  
2.4.1. Sintaxe basica, tags e atributos  
2.4.2. Tipos de dados e estrutura hierarquica  
2.4.3. Formatacao e comparativo JSON vs XML  

#### UNIDADE 3: PROTOCOLO HTTP E COMUNICACAO WEB
3.1. Definicao e funcionamento do protocolo HTTP  
3.2. Metodos/Verbos HTTP (GET, POST, PUT, DELETE, PATCH, OPTIONS)  
3.3. Passagem de parametros  
3.3.1. Query Parameters (filtros e paginacao)  
3.3.2. Body Parameters (payloads JSON)  
3.4. Cabecalhos HTTP (Headers)  
3.4.1. Host, Accept, User-Agent, Request Method  
3.4.2. Content-Type (application/json, application/xml)  
3.4.3. Authorization (Tokens de acesso)  
3.5. Media Types e MIME Types (application, text, image, vnd)  
3.6. Codigos de Status HTTP (Status Codes)  
3.6.1. 1XX - Informacionais  
3.6.2. 2XX - Sucesso (200 OK, 201 Created, 204 No Content)  
3.6.3. 3XX - Redirecionamento  
3.6.4. 4XX - Erros do Cliente (400 Bad Request, 401 Unauthorized, 404 Not Found)  
3.6.5. 5XX - Erros do Servidor (500 Internal Server Error, 503 Unavailable)  

#### UNIDADE 4: PERSISTENCIA E INTEGRACAO COM BANCO DE DADOS (CRUD)
4.1. Integracao da API Back-End com Banco de Dados Relacional  
4.2. Implementacao das operacoes fundamentais de CRUD (Create, Read, Update, Delete)  
4.3. Regras de negocio e validacao de dados no servidor  

ESTRATEGIA PEDAGOGICA E METODOLOGIA
-----------------------------------------------------------------

- Situacao Desafiadora/Contextualizada: Projeto Consultoria "Binario Tech" 
  prestando servicos de desenvolvimento de APIs para as montadoras Scania, 
  Mercedes-Benz e Volkswagen.
- Aprendizado Pratico e Massivo: Utilizacao constante do terminal Linux / Google 
  Cloud Shell com a "Regra dos 5 Exercicios Graduais" por aula (Aquecimento, 
  Modificacao, Debugging de Bug Proposital, Criacao do Zero e Desafio CLI).
- Ferramentas de Terminal: cURL, HTTPie, jq, Nano/Vim, Node.js/Python e SQLite3.

-----------------------------------------------------------------

# UNIDADE 1: AMBIENTE DE DESENVOLVIMENTO WEB

Aulas 01, 02 e 03

-----------------------------------------------------------------

## Aula 01: Primeiro contato com o Google Cloud Shell

Data: 24/07/2026 (Sexta-feira | 15:30 as 17:00 - 2 Aulas)

Acessar o Google Cloud Shell no navegador e executar os primeiros comandos de navegação e verificação do ambiente.

### O que foi visto na aula

- Apresentação da consultoria fictícia **Binário Tech** e dos clientes do projeto: Scania, Mercedes-Benz e Volkswagen
- Plano de ensino, competências, critérios de avaliação e regras de convivência
- Metodologia: uso do Terminal Linux / Google Cloud Shell para o aprendizado prático
- Conceito de **cliente x servidor**
- Primeiro contato com o Cloud Shell, primeira requisição HTTP com o `curl` e 3 exercícios

### Cliente x Servidor

- **Cliente** (navegador ou terminal): faz a requisição
- **Servidor** (back-end): recebe, processa e responde (aqui, com JSON)
- No terminal: o `curl` é o cliente e a API do GitHub é o servidor

### 1. Verificar a versão do sistema operacional Linux

```bash
uname -a
```

O `uname` mostra informações do sistema. O `-a` (*all*) mostra **tudo**: nome do sistema (Linux), nome da máquina, versão do kernel e arquitetura.

### 2. Verificar runtimes e ferramentas instaladas

```bash
node -v
python3 --version
curl --version
```

Cada comando mostra a **versão** do programa. Se aparecer a versão, ele está instalado e pronto para usar.

### 3. Criar a estrutura de diretórios do projeto da consultoria

```bash
mkdir binario_tech
cd binario_tech
pwd
```

- `mkdir` cria a pasta
- `cd` entra na pasta
- `pwd` mostra em qual pasta estou (o caminho completo)

> No meu caso, o caminho é: `cd curso-pbe1/binario_tech/`

**Possíveis erros e como resolver:**

- **`node: command not found` (ou `python3`, `curl`)**: o programa não está instalado ou o nome foi digitado errado. Conferir a digitação e instalar se precisar (`sudo apt-get install -y curl`).
- **`mkdir: cannot create directory 'binario_tech': File exists`**: a pasta já existe. É só entrar nela com `cd binario_tech`.
- **`cd: binario_tech: No such file or directory`**: estou na pasta errada ou a pasta não foi criada. Conferir com `pwd` e `ls`.

### Testando uma API com curl e jq

```bash
curl -s https://api.github.com/users/octocat
curl -s https://api.github.com/users/octocat | jq .
```

O primeiro comando mostra a resposta em uma linha só, e o segundo (com `jq`) mostra formatada.

**O que o comando faz:** faz uma requisição **GET** à API pública do GitHub e mostra os dados do usuário `octocat` em JSON.

| Parte | Função |
|-------|--------|
| `curl` | Envia a requisição HTTP |
| `-s` | Modo silencioso (esconde a barra de progresso) |
| `\|` (pipe) | Passa a resposta do `curl` para o próximo comando |
| `jq .` | Formata o JSON com indentação e cores para facilitar a leitura |

**O que a resposta contém:**

- **Identificação:** `login`, `id`, `type`, `site_admin`
- **Links da API:** `url`, `repos_url`, `followers_url`, etc. Cada um leva a uma lista relacionada (repositórios, seguidores...)
- **Perfil:** `name`, `company`, `blog`, `location`, `bio`. Campos `null` são vazios ou não públicos
- **Estatísticas:** `public_repos`, `public_gists`, `followers`, `following`
- **Datas:** `created_at` (criação da conta) e `updated_at` (última atualização)

**Por que isso é útil:** é o mesmo princípio de uma API REST. O cliente faz uma requisição a uma URL (endpoint) e o servidor responde com JSON. Podemos usar o `curl` para testar as rotas da nossa própria API em Node/Express.

**Possíveis erros e como resolver:**

- **`jq: command not found`**: o `jq` não está instalado. `sudo apt-get install -y jq`.
- **`curl: (6) Could not resolve host`**: sem internet ou a URL está escrita errada.
- **`jq: parse error`**: a resposta não era JSON. Rodar só o `curl -s URL` (sem o `jq`) para ver o que voltou.
- **A resposta traz `API rate limit exceeded`**: o GitHub limita as requisições sem login. Esperar um tempo e tentar de novo.
  
-----------------------------------------------------------------

### Aula 01: Exercícios no terminal Linux

Aplicação dos exercícios no terminal Linux para entrega/validação em aula.

### Exercício 1: Criar o arquivo `dev.json`

**Enunciado:**

```text
Criar um arquivo chamado "dev.json" usando o editor de texto "nano":
$ nano dev.json

Inserir a seguinte estrutura basica:
{
"nome": "Seu Nome Completo",
"cargo": "Desenvolvedor Jr",
"montadora_favorita": "Scania",
"status": "Ativo"
}
```

**Como fazer:**

```bash
touch dev.json    # cria o arquivo vazio
vi dev.json       # abre no editor para escrever (também pode ser o nano)
```

Conteúdo do arquivo:

```json
{
"nome": "Maria Eduarda Gonçalves da Silva",
"cargo": "Desenvolvedor Jr",
"montadora_favorita": "Scania",
"status": "Ativo"
}
```

- `touch` cria o arquivo vazio. Depois eu abro com o editor.
- O enunciado usa o `nano`, mas o `vi` também serve. A escolha do editor é livre.
- **No `vi`:** apertar `i` para escrever, `Esc` para parar de escrever, e `:wq` + Enter para salvar e sair.
- **No `nano`:** `Ctrl+O` + Enter para salvar, e `Ctrl+X` para sair.

**Backup do arquivo:**

```bash
cp dev.json bkp.dev.json
```

> Também funciona: `cat dev.json > bkp.dev.json`. Isso vale para **arquivos**. Para copiar uma **pasta** é preciso usar `cp -r`.

> Obs: o `cat bkp.dev.json` só **mostra** o conteúdo do backup. Quem cria a cópia é o `cp` (ou o `cat dev.json > bkp.dev.json`).

**Possíveis erros e como resolver:**

- **Não consigo sair do `vi`**: apertar `Esc` e digitar `:wq` (salva e sai). Para sair sem salvar: `:q!`.
- **`cp: -r not specified; omitting directory`**: copiei uma pasta. Usar `cp -r pasta pasta_bkp`.
- **Escrevi o JSON errado (falta vírgula ou aspas)**: validar com `jq . dev.json`. Se estiver errado, o `jq` mostra `parse error` e a linha do problema.
  
-----------------------------------------------------------------
### Exercício 2: Visualizar o conteúdo

**Enunciado:**

```text
Visualizar o conteudo do arquivo criado diretamente no terminal:
$ cat dev.json
```

**Como fazer:**

```bash
cat dev.json
```

O `cat` mostra o conteúdo direto no terminal, sem precisar abrir o arquivo em um editor. Para conferir o backup: `cat bkp.dev.json`.

**Possíveis erros e como resolver:**

- **`cat: dev.json: No such file or directory`**: estou na pasta errada ou escrevi o nome errado. Conferir com `pwd` e `ls`.
  
-----------------------------------------------------------------
### Exercício 3: Contar as linhas

**Enunciado:**

```text
Contar o numero de linhas do arquivo usando comando do Linux:
$ wc -l dev.json
```

**Como fazer:**

```bash
wc -l dev.json
```

O `wc` (*word count*) conta coisas do arquivo. O `-l` (*lines*) conta as **linhas**. Ele conta as quebras de linha (`\n`), então o arquivo tem 6 linhas, mas o resultado pode aparecer como 5 se a última linha não terminar com Enter.

> Outras opções: `wc -w` conta as palavras e `wc -c` conta os bytes.

**Possíveis erros e como resolver:**

- **`wc: dev.json: No such file or directory`**: pasta ou nome errado. Conferir com `pwd` e `ls`.
- **Escrevi `wc - l` (com espaço)**: o certo é `wc -l`, junto.
  
-----------------------------------------------------------------

#### Resumo dos comandos da Aula 01

| Comando | Para que serve |
|---------|----------------|
| `touch` | Cria um arquivo vazio |
| `vi` / `nano` | Edita o conteúdo do arquivo |
| `cat` | Mostra o conteúdo no terminal |
| `cp` | Copia (faz backup de) um arquivo |
| `wc -l` | Conta as linhas do arquivo |

-----------------------------------------------------------------

## Aula 02: Ambiente de Desenvolvimento Web

Data: 30/07/2026 (Quinta-feira | 13:00 às 17:00 - 5 aulas / 4 horas)

Tópico: Ambiente de Desenvolvimento Web, Interfaces, Gerenciamento de Dependências

> Obs: no dia 10/09/2026 alterei a porta padrão da aplicação de 3000 para 3024. Como eu e meus colegas de classe estávamos usando a mesma porta, estava dando problema. Agora cada um tem a sua própria porta. Por isso o enunciado fala da porta `3000`, mas nos meus exercícios aparece `3024`.

> Obs: a pasta se chama `aula02` (no roteiro era `aula2`, e eu renomeei em 03/09/2026). O servidor pode rodar em segundo plano com `&`, `screen` ou `pm2`, e eu usei o `&`.

### O que foi visto na aula

- Ambiente Google Cloud Shell e terminal Linux
- Características do ambiente de desenvolvimento no lado do servidor (processos, portas, variáveis de ambiente e logs)
- Instalação de pacotes e gerenciamento de dependências com npm
- Instalação do `jq` e do `httpie`
- Servidor HTTP de teste com Node.js/Express
- 15 exercícios no terminal Linux

### Passo a passo da aula guiada

```bash
cd ~/curso-pbe1/binario_tech
mkdir aula02 && cd aula02

npm init -y                # cria o package.json
npm install express        # instala o Express

sudo apt-get update && sudo apt-get install -y jq httpie

nano servidor.js           # cria o arquivo do servidor
node servidor.js &         # roda o servidor em segundo plano (&)

curl -s http://localhost:3024/status
http http://localhost:3024/status
curl -s http://localhost:3024/status | jq .
```

- `npm init -y` cria o `package.json` (a "ficha" do projeto) com as respostas padrão
- `npm install express` baixa o Express e coloca em `node_modules`, registrando no `package.json`
- `apt` instala programas do **sistema** (como `jq` e `httpie`) e `npm` instala pacotes do **Node**
- O `&` no final roda o servidor em segundo plano e deixa o terminal livre

#### servidor.js

```js
const express = require('express');
const app = express();
const PORT = 3024;

app.use(express.json());

// Rota de Status da Binario Tech
app.get('/status', (req, res) => {
    res.json({
        servidor: "Binario Tech Core",
        status: "OPERACIONAL",
        montadoras_atendidas: ["Scania", "Mercedes", "VW"],
        uptime_segundos: process.uptime()
    });
});

// Rota de Informacoes da Montadora Scania
app.get('/scania/info', (req, res) => {
    res.json({
        montadora: "Scania",
        foco: "Caminhoes Pesados e Onibus",
        sistema_telemetria: "Ativo",
        unidades_conectadas: 1420
    });
});

app.listen(PORT, () => {
    console.log(`Servidor rodando com sucesso na porta ${PORT}`);
});
```
-----------------------------------------------------------------

### Exercícios da Aula 02

#### Grupo A: Ambiente, processos e comandos básicos Linux

### Exercício 01: `pwd` e `ls -la`

**Enunciado:**

```text
Verifique o diretorio atual de trabalho e liste todos os arquivos, incluindo
arquivos ocultos e detalhes de permissao (`pwd` e `ls -la`).
```

**Como fazer:**

```bash
pwd
ls -la
```

- `pwd` mostra **onde eu estou**. É importante para conferir se estou no lugar certo, onde o arquivo deve ser rodado.
- `ls` lista os arquivos.
- `ls -la` lista **todos** os arquivos (inclusive os ocultos) com detalhes (permissão, dono, tamanho e data).

> Obs: arquivo oculto sempre começa com `.`

Rodando no Cloud Shell:

```
maria_e_silva64@cloudshell:~/curso-pbe1/binario_tech/aula02$ pwd
/home/maria_e_silva64/curso-pbe1/binario_tech/aula02
maria_e_silva64@cloudshell:~/curso-pbe1/binario_tech/aula02$ ls -la
total 80
drwxrwxr-x  3 maria_e_silva64 maria_e_silva64  4096 Sep 19 01:55 .
drwxrwxr-x 23 maria_e_silva64 maria_e_silva64  4096 Oct  1 18:10 ..
-rw-rw-r--  1 maria_e_silva64 maria_e_silva64   263 Sep 18 18:55 ambiente_info.txt
drwxrwxr-x 94 maria_e_silva64 maria_e_silva64  4096 Jul 30 19:42 node_modules
-rw-rw-r--  1 maria_e_silva64 maria_e_silva64   331 Jul 30 21:34 package.json
-rw-rw-r--  1 maria_e_silva64 maria_e_silva64 42161 Sep 18 19:04 package-lock.json
-rw-rw-r--  1 maria_e_silva64 maria_e_silva64    57 Aug  1 01:43 relatorio.log
-rw-rw-r--  1 maria_e_silva64 maria_e_silva64   114 Sep 18 19:27 scania.json
-rw-rw-r--  1 maria_e_silva64 maria_e_silva64   951 Sep 10 19:06 servidor.js
-rwxrwxr-x  1 maria_e_silva64 maria_e_silva64   533 Sep 19 01:54 testar_servidor.sh
```

**Possíveis erros e como resolver:**

- **Não aparece o arquivo que eu quero**: estou na pasta errada. Conferir com `pwd` e entrar na pasta certa com `cd`.
- **`ls -l a`**: o certo é `ls -la` (as duas letras juntas).
  
-----------------------------------------------------------------
### Exercício 02: variáveis de ambiente

**Enunciado:**

```text
Exiba as variaveis de ambiente do sistema e filtre apenas as variaveis que
contenham a palavra `USER` ou `SHELL` utilizando o operador pipe `|` e `grep`.
```

**Como fazer:**

```bash
env | grep -E 'USER|SHELL'
```

**O que é uma variável de ambiente?** É um nome com um valor (`NOME=valor`) que o sistema guarda com informações sobre o ambiente onde estou trabalhando. Os programas leem essas variáveis para saber como funcionar.

**O comando:**
- `env` mostra todas as variáveis de ambiente
- `|` (pipe) manda o resultado para o próximo comando
- `grep -E 'USER|SHELL'` filtra só as linhas que têm `USER` **ou** `SHELL` (o `-E` permite usar o `|` como "ou")

**O que cada variável que apareceu significa:**

| Variável | O que significa |
|----------|-----------------|
| `SHELL=/bin/bash` | O programa do terminal que estou usando (o bash) |
| `USER=maria_e_silva64` | Meu usuário no sistema |
| `USER_EMAIL` | O e-mail da conta que está logada no Cloud Shell |
| `GOOGLE_CLOUD_SHELL=true` e `CLOUD_SHELL=true` | Avisam que estou dentro do Google Cloud Shell |
| `CLOUDSHELL_ENVIRONMENT=prod` | Tipo do ambiente (produção) |
| `CLOUDSHELL_OPEN_DIR` | Pasta usada pelo recurso "Abrir no Cloud Shell" |
| `DEVSHELL_PROJECT_ID` | ID do projeto do Google Cloud (está vazio porque não selecionei nenhum) |
| `DEVSHELL_IP_ADDRESS` | Endereço IP da máquina do Cloud Shell |
| `DEVSHELL_SERVER_URL` | Endereço do servidor do Cloud Shell |
| `DEVSHELL_CLIENTS_DIR` e `DEVSHELL_GCLOUD_CONFIG` | Pasta e configuração internas do Cloud Shell |
| `CLOUD_SHELL_IMAGE_VERSION` | Versão da imagem do Cloud Shell (vazia aqui) |
| `PS1` | Define como aparece a linha do terminal (`maria_e_silva64@cloudshell:~$`) |

> Obs: as variáveis valem para o **ambiente** (o meu Cloud Shell), não para o projeto. Cada pessoa tem as suas.

**Possíveis erros e como resolver:**

- **`SHELL: command not found`**: esqueci as aspas simples. Sem elas o terminal entende o `|` como outro pipe. O certo é `grep -E 'USER|SHELL'`.
- **Não aparece nada**: conferir se escrevi `USER` e `SHELL` em maiúsculo (o `grep` diferencia maiúscula de minúscula).
  
-----------------------------------------------------------------
### Exercício 03: `ps aux | grep node`

**Enunciado:**

```text
Identifique o numero do processo (PID) em que o servidor `node servidor.js` esta
rodando no seu terminal utilizando o comando `ps aux | grep node`.
```

**Como fazer:**

```bash
ps aux | grep node
```

- `ps` = *process status* (lista os processos que estão rodando)
- `a` = mostra de **todos** os usuários
- `u` = formato com usuário, % de CPU, memória...
- `x` = inclui processos que não estão ligados a um terminal (os de segundo plano)
- `grep node` filtra só as linhas que têm `node`

Serve para ver **qual servidor está ativo** e descobrir o **PID** (número do processo).

No meu caso, a linha do servidor é:

```
maria_e+  2243  0.0  0.8 1418640 69256 pts/2  S<l  15:13  0:00 node servidor.js
```

O PID do meu servidor é **2243**. As outras linhas com `node` são do próprio editor do Cloud Shell, e a última linha é o próprio `grep`.

**Possíveis erros e como resolver:**

- **Só aparece a linha do `grep`**: o servidor não está rodando. Subir com `node servidor.js &`.
- **Aparecem vários `node`**: o meu é o que tem `node servidor.js` no final da linha.
  
-----------------------------------------------------------------
### Exercício 04: `netstat -tuln` e `ss -tuln`

**Enunciado:**

```text
Verifique se a porta de rede 3000 esta aberta e escutando conexoes usando
o comando `netstat -tuln` ou `ss -tuln`.
```

> Obs: o enunciado fala da porta 3000, mas eu uso a **3024**.

**Como fazer:**

```bash
netstat -tuln
ss -tuln
```

Os dois mostram as **portas abertas** e escutando conexões. O `ss` é o mais novo e rápido, e o `netstat` é o mais antigo.

| Flag | Significa |
|------|-----------|
| `-t` | conexões TCP |
| `-u` | conexões UDP |
| `-l` | só as que estão escutando (listening) |
| `-n` | mostra números (portas e IPs) em vez de nomes |

A minha porta **3024** apareceu nos dois, com `LISTEN`, ou seja, o servidor está rodando e esperando conexões:

```
netstat:  tcp6   0   0 :::3024      :::*      LISTEN
ss:       tcp    LISTEN   0   511   *:3024    *:*
```

> Obs: `0.0.0.0` aceita conexão de qualquer lugar, `127.0.0.1` só da própria máquina.

**Possíveis erros e como resolver:**

- **`netstat: command not found`**: o `netstat` não vem instalado em alguns sistemas. Usar o `ss -tuln`, ou instalar com `sudo apt install net-tools`.
- **A porta 3024 não aparece**: o servidor está desligado. Subir com `node servidor.js &` e rodar o comando de novo.
  
-----------------------------------------------------------------
### Exercício 05: arquivo `ambiente_info.txt`

**Enunciado:**

```text
Crie um arquivo chamado `ambiente_info.txt` contendo a data atual do sistema,
o nome da maquina (hostname) e o uso de memoria (`date`, `hostname`, `free -h`)
redirecionando a saida com o operador `>`.
```

**Como fazer:**

```bash
{ date; hostname; free -h; } > ambiente_info.txt
cat ambiente_info.txt
```

Resultado:

```
Sun Oct  4 03:37:29 PM UTC 2026
cs-582490764374-default
               total        used        free      shared  buff/cache   available
Mem:           7.8Gi       2.6Gi       3.9Gi       1.1Mi       1.5Gi       5.1Gi
Swap:             0B          0B          0B
```

- `date` mostra a data e hora
- `hostname` mostra o nome da máquina
- `free -h` mostra a memória (o `-h` deixa em formato legível: Gi, Mi)
- `>` joga a saída para o arquivo (**apaga** o que tinha antes)
- `>>` joga a saída para o arquivo **sem apagar** (adiciona no final)

Outro jeito, um comando por vez:

```bash
date > ambiente_info.txt
hostname >> ambiente_info.txt
free -h >> ambiente_info.txt
```

**Possíveis erros e como resolver:**

- **`date: invalid option -- 'h'`**: deu erro na primeira vez e funcionou ao rodar de novo. Rodar um comando por vez ou usar as chaves `{ }`.
- **O terminal fica esperando (`>`) e não termina**: usei as chaves sem o `;` antes de fechar. O certo é `free -h; }`. Para sair: `Ctrl+C`.
- **Só ficou a última linha no arquivo**: usei `>` em todos. Para juntar tudo, usar `>>` nos comandos seguintes (ou as chaves `{ }`).
  
-----------------------------------------------------------------
#### Grupo B: Gerenciamento de dependências e pacotes

### Exercício 06: ver o `package.json`

**Enunciado:**

```text
Inspecione o arquivo `package.json` do seu projeto usando o comando `cat` e
valide se a dependencia `express` esta registrada corretamente.
```

**Como fazer:**

```bash
cat package.json
cat package.json | grep express
```

O `package.json` é a "ficha" do projeto: nome, versão, scripts e dependências. Confirma que o `express` está registrado:

```json
"dependencies": {
  "express": "^5.2.1"
}
```

**Possíveis erros e como resolver:**

- **`cat: package.json: No such file or directory`**: estou na pasta errada (`pwd`) ou esqueci o `npm init -y`.
- **O `express` não aparece**: faltou `npm install express`.
  
-----------------------------------------------------------------
### Exercício 07: instalar o `nodemon`

**Enunciado:**

```text
Instale o pacote `nodemon` como dependencia de desenvolvimento (`npm install -D nodemon`)
e confirme as alteracoes ocorridas no `package.json`.
```

**Como fazer:**

```bash
npm install -D nodemon
cat package.json
```

O `-D` instala como dependência de **desenvolvimento** (só usada enquanto desenvolvo), por isso ele aparece em `devDependencies`:

```json
"devDependencies": {
  "nodemon": "^3.1.14"
}
```

> Obs: apareceu `up to date`, porque o nodemon já estava instalado, então o `package.json` não mudou.

**Possíveis erros e como resolver:**

- **Aviso `5 vulnerabilities`**: é só um alerta do `npm audit`, não é erro. Não precisa rodar `npm audit fix --force`, porque ele pode mudar versões e quebrar o projeto.
- **Esqueci o `npm`** e escrevi só `install -D nodemon`: o certo é `npm install -D nodemon`.
- **Rodei em outra pasta**: o nodemon foi instalado no `package.json` errado. Conferir com `pwd`.
  
-----------------------------------------------------------------
### Exercício 08: `jq` no `package.json`

**Enunciado:**

```text
Utilize a ferramenta `jq` para extrair apenas o campo "dependencies" do arquivo `package.json`:
$ cat package.json | jq .dependencies
```

**Como fazer:**

```bash
cat package.json | jq .dependencies
```

Resultado:

```json
{
  "express": "^5.2.1"
}
```

O `.dependencies` diz ao `jq`: "da raiz do JSON, pega só o campo `dependencies`".

**Possíveis erros e como resolver:**

- **`jq: error: Could not open file dependencies`**: escrevi `jq . dependencies` (com espaço). O `jq` achou que `dependencies` era um arquivo. O certo é **junto**: `.dependencies`.
- **`jq: command not found`**: o `jq` não está instalado. `sudo apt-get install -y jq`.
  
-----------------------------------------------------------------
### Exercício 09: script `check` no `package.json`

**Enunciado:**

```text
Crie um script customizado dentro de `package.json` chamado `"check"` que executa
o comando `node -v` e teste sua execucao via `npm run check`.
```

**Como fazer:** no `package.json`, dentro de `scripts`:

```json
"check": "node -v"
```

```bash
npm run check
```

Resultado: `v24.21.0` (a versão do Node).

Os `scripts` do `package.json` são atalhos para comandos. O `npm run nome` roda o comando que está guardado nesse nome.

**Possíveis erros e como resolver:**

- **`Missing script: "check"`**: o script não foi salvo, ou o nome está errado. Conferir com `cat package.json`.
- **`EJSONPARSE`**: o `package.json` ficou com erro. Normalmente falta uma vírgula depois da linha do `"test"`.
- **`npm check`** em vez de `npm run check`: só o `start` e o `test` funcionam sem o `run`. Os outros scripts precisam do `npm run`.
  
-----------------------------------------------------------------
### Exercício 10: instalar pacote e usar o `which`

**Enunciado:**

```text
Instale um pacote global ou utilitario via `npm` ou `apt` e verifique onde seu
binario foi salvo no sistema usando o comando `which` (ex: `which http`).
```

**Como fazer:**

```bash
sudo apt update && sudo apt install -y init
which curl
```

O `which` mostra **onde o programa está instalado** no sistema:

```
/usr/bin/curl
```

> Obs: com o `httpie` instalado, o `which http` também funciona.

**Possíveis erros e como resolver:**

- **`witch: command not found`** (ou `whitch`): erro de digitação. O certo é `which`.
- **`Permission denied` / `Could not open lock file`** ao usar o `apt`: faltou o `sudo`.
- **O `which` não mostra nada**: o programa não está instalado ou não está no PATH.
  
-----------------------------------------------------------------
#### Grupo C: Testes de requisição e manipulação de JSON

### Exercício 11: `curl` salvando em arquivo

**Enunciado:**

```text
Efetue uma requisicao HTTP GET para a rota `http://localhost:3000/scania/info`
utilizando o comando `curl` e salve a resposta em um arquivo chamado `scania.json`.
```

> Obs: o enunciado usa a porta 3000, mas eu uso a **3024**.

**Como fazer:**

```bash
curl -s http://localhost:3024/scania/info > scania.json
cat scania.json
```

Resultado:

```json
{"montadora":"Scania","foco":"Caminhoes Pesados e Onibus","sistema_telemetria":"Ativo","unidades_conectadas":1420}
```

> Obs: o `>` salva a resposta no arquivo em vez de mostrar na tela. O texto ficou colado no prompt porque o arquivo não termina com quebra de linha.

**Possíveis erros e como resolver:**

- **O `scania.json` fica vazio**: o servidor estava desligado (o `>` apaga o arquivo e o `curl -s` não mostra o erro). Ligar com `node servidor.js &` e refazer.
- **Usei a porta 3000**: a minha é a **3024**.
  
-----------------------------------------------------------------
### Exercício 12: mesma requisição com `httpie`

**Enunciado:**

```text
Efetue a mesma requisicao utilizando o `httpie` (`http GET http://localhost:3000/scania/info`)
e observe a formatacao colorida no terminal.
```

**Como fazer:**

```bash
http GET http://localhost:3024/scania/info
```

Diferença do `curl`: o `httpie` mostra o **cabeçalho** da resposta (`HTTP/1.1 200 OK`, `Content-Type`, etc.) e o JSON já formatado e colorido.

```
HTTP/1.1 200 OK
Connection: keep-alive
Content-Length: 114
Content-Type: application/json; charset=utf-8
Date: Sun, 04 Oct 2026 15:47:22 GMT
ETag: W/"72-boBhM3r/sMT0HdHbbLTJ0e79xow"
Keep-Alive: timeout=5
X-Powered-By: Express

{
    "foco": "Caminhoes Pesados e Onibus",
    "montadora": "Scania",
    "sistema_telemetria": "Ativo",
    "unidades_conectadas": 1420
}
```

**Possíveis erros e como resolver:**

- **`http: command not found`**: o httpie não está instalado. `sudo apt-get install -y httpie`.
- **`Connection refused`**: o servidor está desligado ou usei a porta errada.
  
-----------------------------------------------------------------
### Exercício 13: `jq` lendo o `scania.json`

**Enunciado:**

```text
Utilize o utilitario `jq` para ler o arquivo `scania.json` e extrair individualmente
apenas o valor da chave `sistema_telemetria`.
```

**Como fazer:**

```bash
jq '.sistema_telemetria' scania.json
```

Resultado: `"Ativo"`

**Possíveis erros e como resolver:**

- **Não aparece nada**: o `scania.json` está vazio. Refazer o Exercício 11 com o servidor ligado.
- **`parse error`**: o arquivo não tem um JSON válido. Conferir com `cat scania.json`.
  
-----------------------------------------------------------------
### Exercício 14: rota `/vw/info`

**Enunciado:**

```text
Adicione uma nova rota `/vw/info` no arquivo `servidor.js` que retorne dados da
montadora Volkswagen, reinicie o processo do Node e teste a nova rota no terminal.
```

**Como fazer:** adicionar no `servidor.js`, antes do `app.listen`:

```js
// Rota de Informacoes da Montadora Volkswagen
app.get('/vw/info', (req, res) => {
    res.json({
        montadora: "Volkswagen",
        foco: "Vans e Caminhoes Leves",
        sistema_telemetria: "Ativo",
        unidades_conectadas: 980
    });
});
```

Depois é preciso **reiniciar** o servidor, porque o Node lê o arquivo uma vez só e não percebe que ele mudou:

```bash
ps aux | grep node       # descobrir o PID (2243)
kill -9 2243             # encerrar o servidor
node servidor.js &       # rodar de novo
curl -s http://localhost:3024/vw/info | jq .
```

> Obs: `kill -9` força o encerramento. O `kill 2243` (sem o -9) tenta encerrar de um jeito mais "educado" primeiro.

**Possíveis erros e como resolver:**

- **`Cannot GET /vw/info`**: esqueci de reiniciar o servidor.
- **Aparece "rodando", mas o servidor cai logo**: o antigo ainda estava na porta 3024. Matar o antigo (`kill -9 <PID>`) e subir de novo.
  
-----------------------------------------------------------------
### Exercício 15: script `testar_servidor.sh`

**Enunciado:**

```text
Crie um script em Bash chamado `testar_servidor.sh` que executa automaticamente
requisicoes para as tres rotas (`/status`, `/scania/info`, `/vw/info`), exibindo
o horario de cada teste. Dê permissao de execucao (`chmod +x testar_servidor.sh`)
e execute-o no terminal.
```

**Como fazer:**

```bash
#!/bin/bash

echo "======================================="
echo "Teste de Rotas - Binario Tech Core"
echo " Data/Hora: $(date)"
echo "======================================="

echo -e "\n[1] Testando Rota /status..."
curl -s http://localhost:3024/status | jq .

echo -e "\n[2] Testando Rota /scania/info..."
curl -s http://localhost:3024/scania/info | jq .

echo -e "\n[3] Testando Rota /vw/info..."
curl -s http://localhost:3024/vw/info | jq .

echo -e "\n----------------------------------"
echo "Testes Finalizados com Sucesso!"
```

- A primeira linha (`#!/bin/bash`) diz qual programa executa o script
- `$(date)` mostra a data e hora de cada teste

Dar permissão de execução e rodar:

```bash
chmod +x testar_servidor.sh
./testar_servidor.sh
```

> Obs: o `chmod +x` dá permissão de executar. No `ls -la` isso aparece como `-rwxrwxr-x` (o `x`).

Resultado com o servidor ligado:

```
=======================================
Teste de Rotas - Binario Tech Core
 Data/Hora: Sun Oct  4 03:52:11 PM UTC 2026
=======================================

[1] Testando Rota /status...
{
  "servidor": "Binario Tech Core",
  "status": "OPERACIONAL",
  "montadoras_atendidas": [
    "Scania",
    "Mercedes",
    "VW"
  ],
  "uptime_segundos": 4.150882124
}

[2] Testando Rota /scania/info...
{
  "montadora": "Scania",
  "foco": "Caminhoes Pesados e Onibus",
  "sistema_telemetria": "Ativo",
  "unidades_conectadas": 1420
}

[3] Testando Rota /vw/info...
{
  "montadora": "Volkswagen",
  "foco": "Vans e Caminhoes Leves",
  "sistema_telemetria": "Ativo",
  "unidades_conectadas": 980
}

----------------------------------
Testes Finalizados com Sucesso!
```

**Possíveis erros e como resolver:**

- **O script roda, mas não aparece nada nas rotas, e mesmo assim escreve "Testes Finalizados com Sucesso!"**: o servidor está **desligado**. Esse texto aparece sempre, mesmo com erro. Ligar o servidor com `node servidor.js &` e rodar de novo.
- **`Permission denied`**: faltou o `chmod +x testar_servidor.sh`.
- **`testar_servidor.sh: command not found`**: esqueci o `./` na frente.
  
-----------------------------------------------------------------

#### Resumo dos comandos da Aula 02

| Comando | Para que serve |
|---------|----------------|
| `pwd` | Mostra em que pasta eu estou |
| `ls -la` | Lista todos os arquivos (inclusive ocultos) com detalhes |
| `env` | Mostra as variáveis de ambiente |
| `grep` | Filtra as linhas que têm uma palavra |
| `\|` (pipe) | Passa a saída de um comando para o outro |
| `ps aux \| grep node` | Lista os processos `node` e mostra o PID |
| `kill -9 <PID>` | Encerra o processo à força |
| `netstat -tuln` / `ss -tuln` | Mostram as portas abertas e escutando |
| `date`, `hostname`, `free -h` | Data/hora, nome da máquina e uso de memória |
| `>` / `>>` | Salva a saída em arquivo (apaga) / adiciona no final |
| `cat` | Mostra o conteúdo de um arquivo |
| `npm install -D` | Instala um pacote só para desenvolvimento |
| `npm run nome` | Roda um script do `package.json` |
| `jq .campo` | Pega só um campo do JSON |
| `which` | Mostra onde o programa está instalado |
| `curl -s URL` | Faz uma requisição GET sem barra de progresso |
| `http URL` | Requisição com o httpie (JSON colorido e cabeçalhos) |
| `node arquivo.js &` | Roda o servidor em segundo plano |
| `chmod +x` | Dá permissão de execução |
| `./script.sh` | Executa o script da pasta atual |

-----------------------------------------------------------------

## Aula 03: CLI (curl, httpie, jq) e Pacotes (npm/apt)

Data: 31/07/2026 (Sexta-feira | 15:30 às 17:00 - 2 aulas / 90 minutos)

Subtópicos: 1.4.2 (CLI: curl, httpie, jq) e 1.4.3 (Gerenciamento de pacotes npm/apt)

> Obs: o roteiro usa a porta `3001`, mas eu uso a **3024** (cada um tem a sua).

> Obs: os testes abaixo foram feitos no servidor da sala (`genesis`), por SSH. Como todo mundo usa o mesmo servidor, aparecem processos `node` de outras pessoas. Só encerro os que têm o **meu** usuário.

### O que foi visto na aula

- Conceitos de requisição e resposta no terminal
- `curl` x `httpie` (sintaxe e legibilidade)
- `jq` para selecionar e filtrar campos do JSON
- Instalação de utilitários (`apt`) e de pacotes (`npm`)
- API de telemetria com Node.js/Express (`telemetria.js`)
- Script Bash para automatizar os testes (`testar_telemetria.sh`)
- 8 exercícios de fixação

### Objetivos da aula

- Testar endpoints HTTP pela linha de comando com `curl` e `httpie`
- Formatar, filtrar e extrair dados JSON com o `jq`
- Diferenciar `apt` (pacotes do sistema) e `npm` (pacotes do Node)
- Criar e rodar scripts Bash (`.sh`) para testar as rotas de telemetria das montadoras (Scania, Mercedes-Benz, VW)

| | `apt` | `npm` |
|---|-------|-------|
| Instala | Programas do **sistema** (`jq`, `httpie`, `curl`) | Pacotes do **Node** (`express`) |
| Precisa de `sudo` | Sim | Não |
| Onde fica | No sistema | Em `node_modules` do projeto |

| | `curl` | `httpie` (`http`) |
|---|--------|-------------------|
| URL | Precisa do `http://` | Assume o `http://` |
| Saída | "Crua" (sem cor) | Colorida e formatada, com cabeçalhos |

### Passo a passo da aula guiada

#### 1. Preparar o ambiente

```bash
cd ~/curso-pbe1/binario_tech
mkdir -p aula03
cd aula03
npm init -y
npm install express
sudo apt-get update && sudo apt-get install -y jq httpie
```

#### 2. Criar o servidor `telemetria.js`

```js
const express = require('express');
const app = express();
const PORT = 3024;

app.use(express.json());

// Rota Scania
app.get('/api/v1/scania', (req, res) => {
    res.json({ montadora: "Scania", modelo: "R450", status: "OK", conexao: true, velocidade_media: 82 });
});

// Rota Mercedes-Benz
app.get('/api/v1/mercedes', (req, res) => {
    res.json({ montadora: "Mercedes-Benz", modelo: "Actros", status: "OK", conexao: true, velocidade_media: 78 });
});

// Rota Volkswagen
app.get('/api/v1/vw', (req, res) => {
    res.json({ montadora: "Volkswagen", modelo: "Delivery", status: "ALERTA", conexao: false, velocidade_media: 0 });
});

app.listen(PORT, () => {
    console.log(`[Binario Tech] Servidor de Telemetria rodando em http://localhost:${PORT}`);
});
```

#### 3. Rodar o servidor em segundo plano

```bash
node telemetria.js &
```

O `&` deixa o servidor rodando em segundo plano e o terminal livre para os testes.

#### 4. Criar o script `testar_telemetria.sh`

```bash
#!/bin/bash
echo "======================================="
echo "Auditoria De Telemetria - Binario Tech"
echo " Data/Hora: $(date)"
echo "======================================="

echo -e "\n[1] Testando Rota Scania..."
curl -s http://localhost:3024/api/v1/scania | jq .

echo -e "\n[2] Testando Rota Mercedes-Benz..."
curl -s http://localhost:3024/api/v1/mercedes | jq .

echo -e "\n[3] Testando Rota Volkswagen..."
curl -s http://localhost:3024/api/v1/vw | jq .

echo -e "\n--------------------------------"
echo "Auditoria Finalizada com Sucesso!"
```

#### 5. Dar permissão e executar

```bash
chmod +x testar_telemetria.sh
./testar_telemetria.sh
```
-----------------------------------------------------------------

### Exercícios da Aula 03

### Exercício 01: GET + jq

**Enunciado:**

```text
Efetue uma requisicao GET para a rota '/api/v1/scania' via cURL e use o 'jq' para exibir somente a chave 'modelo'.
```

**Como fazer:**

```bash
curl -s http://localhost:3024/api/v1/scania | jq '.modelo'
```

Resultado:

```
"R450"
```

- `curl` abre a conexão com o servidor e faz uma requisição **GET** (é o padrão, não precisa de `-X GET`)
- `-s` (silent) esconde a barra de progresso
- `|` passa a resposta do `curl` para o `jq`
- `.modelo` pega só o campo `modelo` do JSON
- O filtro do `jq` vai sempre entre aspas simples

**Possíveis erros e como resolver:**

- **Aparece "rodando", mas o servidor some logo (`[2]+ Concluído node telemetria.js`)**: a porta 3024 já está ocupada por um `node telemetria.js` antigo que ficou rodando escondido (processo "fantasma"). O `curl` até responde, mas quem responde é o antigo. Para resolver:
  1. Ver quem está usando a porta: `ss -tulnp | grep 3024`
  2. Achar o PID: `ps aux | grep node` (só o que tem o **meu usuário**)
  3. Matar: `kill -9 <PID>`, ou `killall node` para matar todos os `node` meus
- **Esqueci um servidor em segundo plano (`&`)**: no mesmo terminal, o `jobs` lista os processos em segundo plano e o `kill %1` encerra o job número 1.
- **Nenhuma resposta ou `Failed to connect`**: o servidor está desligado. Rodar `node telemetria.js &`.
- **`jq: parse error: Invalid numeric literal`**: a resposta não era JSON (porta errada, servidor desligado ou rota errada). Rodar o `curl -s URL` **sem** o `| jq` para ver o que voltou.
- **Usei a porta 3001 do roteiro**: a minha porta é a **3024**.
- **`comando não encontrado` ao digitar uma anotação**: o terminal tenta executar tudo que eu escrevo. Para anotar, usar `#` no começo da linha.
- 
-----------------------------------------------------------------

**Nas próximas aulas (com PM2 instalado):** o PM2 deixa servidores rodando em segundo plano, mesmo depois de fechar o terminal, e eles continuam segurando a porta. **Antes de subir um servidor novo**, conferir o que já está rodando:

```bash
pm2 list                 # ver o que o PM2 está rodando
pm2 delete all           # apagar todos os processos do PM2 (se não tiver nada, mostra "No process found")
pm2 delete <nome>        # apagar só um deles
ps aux | grep node       # conferir se sobrou algum node solto
```

**Dica: fazer o servidor avisar quando a porta estiver ocupada.** No Express 5, o `app.listen` chama a função de dentro mesmo quando dá erro de porta ocupada. Por isso a mensagem "rodando" aparece mesmo com o servidor caindo. Dá para checar o erro assim:

```js
app.listen(PORT, (erro) => {
    if (erro) {
        console.error(`Erro ao iniciar na porta ${PORT}:`, erro.message);
        process.exit(1);
    }
    console.log(`[Binario Tech] Servidor de Telemetria rodando em http://localhost:${PORT}`);
});
```
-----------------------------------------------------------------
### Exercício 02: httpie salvando em arquivo

**Enunciado:**

```text
Faça uma requisicao para a rota '/api/v1/mercedes' utilizando a ferramenta 'httpie' e salve o resultado no arquivo 'mercedes.json'.
```

**Como fazer:**

```bash
http localhost:3024/api/v1/mercedes > mercedes.json
cat mercedes.json | jq .
```

Com o `curl` (foi o que eu usei) funciona igual:

```bash
curl -s http://localhost:3024/api/v1/mercedes > mercedes.json
```

Resultado do `cat mercedes.json | jq .`:

```json
{
  "montadora": "Mercedes-Benz",
  "modelo": "Actros",
  "status": "OK",
  "conexao": true,
  "velocidade_media": 78
}
```

- `curl` é mais "cru": precisa escrever o `http://` e a saída não é colorida
- `httpie` (`http`) assume o `http://` sozinho e mostra o JSON colorido e formatado, com os cabeçalhos
- Quando a saída vai para um arquivo (`>`), o `httpie` tira as cores e os cabeçalhos e salva só o JSON
- `>` joga a saída para o arquivo e **apaga** o que tinha antes. `>>` **adiciona no final**

**Possíveis erros e como resolver:**

- **`http: command not found`**: o httpie não está instalado. `sudo apt-get install -y httpie`.
- **O arquivo `mercedes.json` fica vazio**: o servidor estava desligado na hora do comando. Ligar o servidor e refazer.
- **A mensagem do servidor (`[Binario Tech] Servidor de Telemetria rodando...`) aparece no meio do que estou digitando**: não é erro, é o servidor em segundo plano escrevendo na tela. É só apertar Enter.
- **O servidor "rodando" não é o meu**: se tem um `node` fantasma na porta, quem responde é ele. Usar `killall node` e subir de novo:

```bash
killall node
node telemetria.js &
curl -s http://localhost:3024/api/v1/mercedes > mercedes.json
cat mercedes.json | jq .
```
-----------------------------------------------------------------
### Exercício 03: `jq` lendo o arquivo salvo

**Enunciado:**

```text
Utilize o 'jq' para ler o arquivo 'mercedes.json' e filtrar apenas o valor do campo 'status'.
```

**Como fazer:**

```bash
cat mercedes.json | jq '.status'
jq '.status' mercedes.json
```

Resultado:

```
"OK"
```

- Os dois comandos fazem a mesma coisa. O segundo passa o arquivo direto para o `jq`, sem precisar do `cat` e do pipe
- `.status` funciona direto porque o arquivo é **um objeto** `{...}`. Se fosse uma lista `[{...}, {...}]`, precisaria de `.[].status`

**Possíveis erros e como resolver:**

- **O `jq` não mostra nada**: o arquivo está vazio. Isso acontece quando o `curl ... > mercedes.json` roda com o servidor desligado: o `>` apaga o arquivo antes, e o `curl -s` não escreve nada quando falha. Conferir com `cat mercedes.json`, ligar o servidor e rodar o `curl` de novo.
- **O `cat mercedes.json` mostra o texto colado no prompt**: não é erro, o arquivo só não termina com quebra de linha.
- **`jq: error ... Cannot index array with string`**: o JSON é uma lista. Usar `.[].status`.
  
-----------------------------------------------------------------
### Exercício 04: nova rota `/api/v1/volvo` e reiniciar

**Enunciado:**

```text
Edite o arquivo 'telemetria.js' e adicione uma nova rota '/api/v1/volvo' retornando os dados do modelo 'FH 540'. Reinicie a aplicacao e teste a rota.
```

**Como fazer:** no `telemetria.js`, adicionar antes do `app.listen`:

```js
// Rota Volvo
app.get('/api/v1/volvo', (req, res) => {
    res.json({ montadora: "Volvo", modelo: "FH 540", status: "OK", conexao: true, velocidade_media: 85 });
});
```

Reiniciar o servidor e testar:

```bash
ps aux | grep node              # achar o PID do meu servidor
kill -9 <PID>                   # encerrar
node telemetria.js &            # rodar de novo
curl -s http://localhost:3024/api/v1/volvo | jq .
```

Resultado:

```json
{
  "montadora": "Volvo",
  "modelo": "FH 540",
  "status": "OK",
  "conexao": true,
  "velocidade_media": 85
}
```

- `app.get(caminho, função)`: quando chegar um GET nesse caminho, o Express roda a função
- `req` é a requisição e `res` é a resposta. O `res.json()` já responde em JSON
- **Por que reiniciar?** O Node lê o arquivo uma vez só, quando eu rodo `node telemetria.js`. Ele não percebe que o arquivo mudou
- `kill <PID>` pede para o processo encerrar "educadamente". `kill -9 <PID>` força o encerramento na hora

**Possíveis erros e como resolver:**

- **Esqueci de reiniciar**: a rota nova não existe, o Express responde `Cannot GET /api/v1/volvo` (em HTML) e o `jq` dá `parse error`. Reiniciar o servidor.
- **O servidor novo não sobe**: o antigo ainda está na porta. Matar o antigo primeiro (ver Exercício 1).
  
-----------------------------------------------------------------
### Exercício 05: script `start` no `package.json`

**Enunciado:**

```text
Configure o arquivo 'package.json' adicionando um script "start": "node telemetria.js". Teste a execucao usando 'npm start'.
```

**Como fazer:** no `package.json`, dentro de `scripts`:

```json
"scripts": {
  "test": "echo \"Error: no test specified\" && exit 1",
  "start": "node telemetria.js"
},
```

```bash
npm start
```

Resultado:

```
> aula03@1.0.0 start
> node telemetria.js

[Binario Tech] Servidor de Telemetria rodando em http://localhost:3024
```

- O `npm start` procura a chave `"start"` dentro de `scripts` e roda o comando
- É o mesmo que `node telemetria.js`, mas padroniza: qualquer pessoa sabe que `npm start` roda o projeto, não importa o nome do arquivo
- Em segundo plano: `npm start &`

**Possíveis erros e como resolver:**

- **`start: command not found`**: esqueci de escrever o `npm`. O certo é `npm start`.
- **`npm error ENOENT` (não achou o `package.json`)**: estou na pasta errada. Conferir com `pwd` e entrar na pasta certa com `cd`.
- **`Cannot find module 'express'`**: faltou instalar as dependências. Rodar `npm install`.
- **`EJSONPARSE`**: o `package.json` está com erro. Normalmente falta a vírgula depois da linha do `"test"`.
- **O `npm start` mostra "rodando" e volta para o prompt**: a porta 3024 está ocupada por outro servidor meu (o `npm start &`, por exemplo), então o novo cai na hora. Ver o Exercício 1.
- **`jq: parse error: Invalid numeric literal` ao testar na porta 3001**: a minha porta é a **3024**.
  
-----------------------------------------------------------------
### Exercício 06: auditoria salva em `relatorio.log`

**Enunciado:**

```text
Crie um comando que direcione o resultado da auditoria do script 'testar_telemetria.sh' para um arquivo de log chamado 'relatorio.log'.
```

**Como fazer:**

```bash
./testar_telemetria.sh > relatorio.log
cat relatorio.log
```

Resultado do `cat relatorio.log`:

```
=======================================
Auditoria De Telemetria - Binario Tech
 Data/Hora: Thu Aug 20 11:57:57 PM UTC 2026
=======================================

[1] Testando Rota Scania...
{
  "montadora": "Scania",
  "modelo": "R450",
  "status": "OK",
  "conexao": true,
  "velocidade_media": 82
}

[2] Testando Rota Mercedes-Benz...
{
  "montadora": "Mercedes-Benz",
  "modelo": "Actros",
  "status": "OK",
  "conexao": true,
  "velocidade_media": 78
}

[3] Testando Rota Volkswagen...
{
  "montadora": "Volkswagen",
  "modelo": "Delivery",
  "status": "ALERTA",
  "conexao": false,
  "velocidade_media": 0
}

--------------------------------
Auditoria Finalizada com Sucesso!
```

- `./` quer dizer "execute o arquivo que está **nesta pasta**". Sem o `./`, o Linux procura nas pastas do sistema (como `/usr/bin`) e não acha
- O `>` fica no comando de fora, então captura a saída de **todas** as linhas do script
- Rodando duas vezes com `>`, o log é sobrescrito. Com `>>`, a segunda auditoria é adicionada no final e mantém o histórico

> Obs: a data dentro do log é de quando o script rodou e salvou o arquivo.

**Possíveis erros e como resolver:**

- **`Permission denied`**: falta a permissão de execução. `chmod +x testar_telemetria.sh`.
- **`testar_telemetria.sh: command not found`**: esqueci o `./` na frente.
- **O log vem vazio ou sem dados das rotas**: o servidor estava desligado. O script escreve "Finalizada com Sucesso" mesmo com erro, então sempre conferir o conteúdo.
  
----------------------------------------------------------------- 
### Exercício 07: `jq` com 2 campos

**Enunciado:**

```text
Filtre a resposta da rota '/api/v1/vw' para exibir apenas os campos 'montadora' e 'status' em uma unica chamada 'jq'.
```

**Como fazer:**

```bash
curl -s http://localhost:3024/api/v1/vw | jq '{montadora: .montadora, status: .status}'
```

Forma abreviada (quando o nome da chave é igual ao do campo):

```bash
curl -s http://localhost:3024/api/v1/vw | jq '{montadora, status}'
```

Resultado (nos dois):

```json
{
  "montadora": "Volkswagen",
  "status": "ALERTA"
}
```

- As chaves `{ }` criam um **objeto novo** só com os campos que escolhi
- `jq '.montadora, .status'` (com vírgula, sem chaves) mostraria os dois valores soltos, um embaixo do outro, e não um JSON

**Possíveis erros e como resolver:**

- **Esqueci as aspas simples**: o terminal se confunde com as chaves `{ }`. Sempre colocar o filtro entre aspas simples.
- **`jq: error ... syntax error`**: conferir as chaves, as vírgulas e as aspas do filtro.
  
-----------------------------------------------------------------
### Exercício 08: achar o PID e encerrar o processo

**Enunciado:**

```text
Localize o PID do processo Node.js em execucao no seu terminal usando 'ps aux | grep node' e encerre-o com o comando 'kill -9 <PID>'.
```

**Como fazer:**

```bash
ps aux | grep node
kill -9 <PID>
```

Resultado (no servidor da sala a lista mostra os processos de todo mundo, aqui estão só as minhas linhas):

```
maria.e+ 1569342  0.0  0.0 1015396 60148 pts/4   Sl   11:44   0:00 node telemetria.js
maria.e+ 1583869  0.0  0.0    6540  2564 pts/4   S+   11:46   0:00 grep node
```

```bash
kill -9 1569342
```

```
[1]+  Morto                  node telemetria.js
```

- `ps` = *process status* (lista os processos)
- `a` = mostra de **todos** os usuários
- `u` = formato com usuário, % de CPU, memória...
- `x` = inclui processos que não estão ligados a um terminal (os de segundo plano)
- `grep node` filtra só as linhas que têm `node`
- O **PID** é a **segunda coluna**: `usuario PID %CPU %MEM VSZ RSS TTY STAT START TIME COMMAND`
- Para matar todos os `node` **meus** de uma vez: `killall node`

> Obs: no servidor da sala o `ps aux` mostra os processos de **todo mundo**. Só mato os que têm o **meu usuário** (`maria.e+`) na primeira coluna.

**Possíveis erros e como resolver:**

- **`kill: (PID) - Processo inexistente`**: o PID está errado ou o processo já encerrou. Rodar o `ps aux | grep node` de novo e conferir se o PID é de uma linha do meu usuário.
- **`Operação não permitida`**: o processo é de outro usuário. Eu só posso matar os meus.
- **A própria linha `grep node` aparece na lista**: é normal, é só ignorar.
- **Matei o processo e a porta continua ocupada**: rodar `ps aux | grep node` de novo, pode ter mais de um `node` meu rodando. Se usar PM2, conferir também com `pm2 list`.
  
-----------------------------------------------------------------
#### Resumo dos comandos da Aula 03

| Comando | Para que serve |
|---------|----------------|
| `curl -s URL` | Faz uma requisição GET sem barra de progresso |
| `\|` (pipe) | Passa a saída de um comando para o outro |
| `jq '.campo'` | Pega só um campo do JSON |
| `jq '{a, b}'` | Cria um JSON novo só com os campos escolhidos |
| `http URL` | Requisição com o httpie (JSON colorido e cabeçalhos) |
| `>` / `>>` | Salva a saída em arquivo (apaga) / adiciona no final |
| `cat arquivo` | Mostra o conteúdo do arquivo |
| `node arquivo.js &` | Roda o servidor em segundo plano |
| `npm start` | Roda o script `start` do `package.json` |
| `chmod +x` | Dá permissão de execução |
| `./script.sh` | Executa o script da pasta atual |
| `ps aux \| grep node` | Lista os processos `node` e mostra o PID |
| `kill -9 <PID>` | Encerra o processo à força |
| `pkill -f telemetria.js` | Encerra só o servidor dessa aula |
| `jobs` | Lista os processos em segundo plano do terminal |

-----------------------------------------------------------------

# UNIDADE 2: WEB SERVICES E ESTRUTURACAO DE DADOS

Aulas 04, 05 e 06

-----------------------------------------------------------------

## Aula 04: Anatomia de uma Requisição e Resposta HTTP
 
Data: 06/08/2026 (Quinta-feira | 13:00 às 17:00 - 5 aulas / 225 minutos)
 
Tópico (conforme o plano da aula): 2.1 Anatomia de uma Requisição e Resposta HTTP (Verbos, Headers, Body, Status Codes)

### Objetivos da aula
 
- Entender a anatomia do protocolo HTTP (headers, query params, body e status codes)
- Saber a diferença e a aplicação dos verbos HTTP: GET, POST, PUT, PATCH e DELETE
- Construir uma API RESTful de gerenciamento de frotas e motoristas para a Binário Tech
- Validar o que chega no body e devolver o status code certo (200, 201, 400, 404, 500)
### Anatomia de uma requisição e de uma resposta
 
**Requisição (o que o cliente envia):**
 
- **Verbo (método):** o que eu quero fazer (GET, POST, PUT, PATCH, DELETE)
- **URL:** onde eu quero fazer (`http://localhost:3000/api/v1/veiculos/1`)
- **Headers (cabeçalhos):** informações sobre a requisição (ex.: `Content-Type: application/json`)
- **Body (corpo):** os dados que eu envio (JSON), usado no POST, PUT e PATCH
- **Query params:** filtros na URL, depois do `?` (ex.: `?status=DISPONIVEL`)
**Resposta (o que o servidor devolve):**
 
- **Status code:** um número que diz se deu certo ou errado
- **Headers:** informações sobre a resposta (ex.: `Content-Type`, `Content-Length`)
- **Body:** os dados devolvidos (JSON)
**Verbos HTTP:**
 
| Verbo | Para que serve |
|-------|----------------|
| `GET` | Buscar / listar dados |
| `POST` | Criar um recurso novo |
| `PUT` | **Substituir tudo** de um recurso (precisa mandar todos os campos) |
| `PATCH` | Atualizar **só uma parte** de um recurso |
| `DELETE` | Remover um recurso |
 
**Status codes usados na aula:**
 
| Código | Nome | Quando aparece |
|--------|------|----------------|
| `200` | OK | Deu certo (busca, atualização, remoção) |
| `201` | Created | Recurso criado (POST) |
| `400` | Bad Request | O cliente mandou dado errado ou faltando |
| `404` | Not Found | O recurso (ou a rota) não existe |
| `500` | Internal Server Error | Erro dentro do servidor |
 
### Rotas da API de frotas
 
| Verbo | Rota | O que faz | Status |
|-------|------|-----------|--------|
| `GET` | `/api/v1/veiculos` | Lista todos (aceita `?status=`) | 200 |
| `GET` | `/api/v1/veiculos/:id` | Busca um veículo pelo ID | 200 ou 404 |
| `POST` | `/api/v1/veiculos` | Cadastra um veículo novo | 201 ou 400 |
| `PATCH` | `/api/v1/veiculos/:id/status` | Atualiza só o status | 200, 400 ou 404 |
| `PUT` | `/api/v1/veiculos/:id` | Substitui todos os dados (Exercício 7) | 200, 400 ou 404 |
| `DELETE` | `/api/v1/veiculos/:id` | Remove o veículo | 200 ou 404 |

-----------------------------------------------------------------

### Passo a passo da aula guiada
 
#### 1. Preparar a pasta da Aula 04
 
```bash
cd ~/curso-pbe1/binario_tech
mkdir -p aula04
cd aula04
npm init -y
npm install express
```
 
#### 2. Criar o servidor `frota_api.js`
 
```js
const express = require('express');
const app = express();
const PORT = 3000;
 
app.use(express.json());
 
// Banco de dados em memoria
let veiculos = [
    { id: 1, placa: "ABC-1234", montadora: "Scania", modelo: "R450", status: "DISPONIVEL" },
    { id: 2, placa: "XYZ-9876", montadora: "Mercedes-Benz", modelo: "Actros", status: "EM_ROTA" }
];
 
// 1. GET /api/v1/veiculos - Listar todos os veiculos (Suporta filtro por status query param)
app.get('/api/v1/veiculos', (req, res) => {
    const { status } = req.query;
    if (status) {
        const filtrados = veiculos.filter(v => v.status.toUpperCase() === status.toUpperCase());
        return res.status(200).json(filtrados);
    }
    res.status(200).json(veiculos);
});
 
// 2. GET /api/v1/veiculos/:id - Buscar veiculo por ID
app.get('/api/v1/veiculos/:id', (req, res) => {
    const id = parseInt(req.params.id);
    const veiculo = veiculos.find(v => v.id === id);
    if (!veiculo) {
        return res.status(404).json({ erro: "Veiculo nao encontrado na base de dados." });
    }
    res.status(200).json(veiculo);
});
 
// 3. POST /api/v1/veiculos - Cadastrar novo veiculo (Criacao)
app.post('/api/v1/veiculos', (req, res) => {
    const { placa, montadora, modelo } = req.body;
    if (!placa || !montadora || !modelo) {
        return res.status(400).json({ erro: "Campos 'placa', 'montadora' e 'modelo' sao obrigatorios." });
    }
    const novoVeiculo = {
        id: veiculos.length + 1,
        placa,
        montadora,
        modelo,
        status: "DISPONIVEL"
    };
    veiculos.push(novoVeiculo);
    res.status(201).json(novoVeiculo);
});
 
// 4. PATCH /api/v1/veiculos/:id/status - Atualizar status do veiculo
app.patch('/api/v1/veiculos/:id/status', (req, res) => {
    const id = parseInt(req.params.id);
    const { status } = req.body;
    const veiculo = veiculos.find(v => v.id === id);
 
    if (!veiculo) {
        return res.status(404).json({ erro: "Veiculo nao encontrado." });
    }
    if (!status) {
        return res.status(400).json({ erro: "O campo 'status' e obrigatorio." });
    }
 
    veiculo.status = status.toUpperCase();
    res.status(200).json({ mensagem: "Status atualizado com sucesso!", veiculo });
});
 
// 5. DELETE /api/v1/veiculos/:id - Remover veiculo da frota
app.delete('/api/v1/veiculos/:id', (req, res) => {
    const id = parseInt(req.params.id);
    const index = veiculos.findIndex(v => v.id === id);
    if (index === -1) {
        return res.status(404).json({ erro: "Veiculo nao encontrado." });
    }
    veiculos.splice(index, 1);
    res.status(200).json({ mensagem: `Veiculo ID ${id} removido com sucesso.` });
});
 
app.listen(PORT, () => {
    console.log(`[Binario Tech] API de Frotas rodando em http://localhost:${PORT}`);
});
```
> Obs: o "banco de dados" é só uma lista na **memória** (`let veiculos`). Quando o servidor é reiniciado, tudo volta ao começo (só os veículos 1 e 2). Por isso os IDs novos mudam conforme o que já foi cadastrado.
 
#### 3. Rodar o servidor e testar com o curl
 
```bash
node frota_api.js &
```
 
Listar (GET):
 
```bash
curl -s http://localhost:3000/api/v1/veiculos | jq .
```
 
Cadastrar (POST):
 
```bash
curl -s -X POST http://localhost:3000/api/v1/veiculos \
  -H "Content-Type: application/json" \
  -d '{"placa":"VWX-5555","montadora":"Volkswagen","modelo":"Delivery"}' | jq .
```
 
Atualizar o status (PATCH):
 
```bash
curl -s -X PATCH http://localhost:3000/api/v1/veiculos/1/status \
  -H "Content-Type: application/json" \
  -d '{"status":"MANUTENCAO"}' | jq .
```
 
Remover (DELETE):
 
```bash
curl -s -X DELETE http://localhost:3000/api/v1/veiculos/2 | jq .
```

**O que cada parte do `curl` faz:**
 
| Parte | Função |
|-------|--------|
| `-s` | Modo silencioso (esconde a barra de progresso) |
| `-i` | Mostra também os **headers** e o **status code** da resposta |
| `-X POST` | Define o verbo (no GET não precisa, porque é o padrão) |
| `-H "Content-Type: application/json"` | Avisa o servidor que o body é JSON |
| `-d '{...}'` | Envia o **body** da requisição |
| `\` no fim da linha | Continua o comando na linha de baixo (**sem espaço depois dele**) |
| `-w "\nHTTP_STATUS:%{http_code}"` | Escreve o status code no final da resposta |

-----------------------------------------------------------------

### Exercícios da Aula 04
 
#### Exercício 01: GET de um veículo pelo ID
 
**Enunciado:**
 
```text
Efetue uma requisicao GET buscando apenas o veiculo de ID 1 e exiba o resultado formatado com 'jq'.
```
 
**Como fazer:**

```bash
node frota_api.js &
curl -s http://localhost:3024/api/v1/veiculos/1 | jq .
```

Resultado:
 
```
[Binario Temaria_e_silva64@cloudshell:~/curso-pbe1/binario_tech/aula04$ curl -s http://localhost:3024/api/v1/veiculos/1 | jq .
{
  "id": 1,
  "placa": "ABC-1234",
  "montadora": "Scania",
  "modelo": "R450",
  "status": "DISPONIVEL"
}
```

- `/veiculos/1` usa o ID **na URL** (parâmetro de rota). O servidor lê com `req.params.id`
- `| jq .` deixa o JSON formatado e fácil de ler


**Possíveis erros e como resolver:**
 
- **Aparece "rodando", mas logo depois `[2]+ Done node frota_api.js`**: a porta 3024 já está ocupada por um servidor que já está rodando (esse mesmo ou um antigo). Não precisa subir de novo. Para ver o que está rodando: `jobs` e `ps aux | grep node`. Para encerrar: `kill -9 <PID>` (ou `kill %1`) e subir de novo.
- **`curl: (7) Failed to connect to localhost port 3024`**: o servidor está desligado. Rodar `node frota_api.js &`.
- **`Cannot GET /veiculos/1`**: escrevi a rota errada. O certo é `/api/v1/veiculos/1`.
- **`{"erro":"Veiculo nao encontrado na base de dados."}`**: esse ID não existe. Só existem os IDs 1 e 2 (mais os que eu cadastrar).
- **`jq: parse error: Invalid numeric literal`**: a resposta não era JSON (servidor desligado ou rota errada). Rodar o `curl -s URL` **sem** o `| jq` para ver o que voltou.

-----------------------------------------------------------------
#### Exercício 02: POST para cadastrar um caminhão
 
**Enunciado:**
 
```text
Cadastre um novo caminhao da montadora 'Volvo' (modelo 'FH 540', placa 'KLL-9090') enviando uma requisicao POST via cURL ou httpie. Verifique se o retorno e o status HTTP 201 Created.
```
 
**Como fazer:**
 
```bash
curl -i -s -X POST http://localhost:3024/api/v1/veiculos \
  -H "Content-Type: application/json" \
  -d '{"montadora": "Volvo", "modelo": "FH 540", "placa": "KLL-9090"}'
```

Resultado:
 
```
HTTP/1.1 201 Created
X-Powered-By: Express
Content-Type: application/json; charset=utf-8
Content-Length: 87
ETag: W/"57-j9JdA9VpHUA9ZTcvuQ9Oe31xsns"
Date: Tue, 13 Oct 2026 21:15:03 GMT
Connection: keep-alive
Keep-Alive: timeout=5

{"id":3,"placa":"KLL-9090","montadora":"Volvo","modelo":"FH 540","status":"DISPONIVEL"}
```

- O **`201 Created`** na primeira linha confirma que o recurso foi criado
- O `-i` é o que mostra o status e os headers. Sem ele eu só veria o JSON
- O `-H "Content-Type: application/json"` avisa o servidor que o body é JSON
- O servidor coloca sozinho o `id` e o `status: "DISPONIVEL"` no veículo novo

**Possíveis erros e como resolver:**
 
- **`curl: (7) Failed to connect`**: o servidor está desligado. Rodar `node frota_api.js &`.
- **`command not found: -H`**: tem **espaço depois da `\`** no fim da linha. A `\` precisa ser o último caractere da linha.
- **Esqueci o `-H "Content-Type: application/json"`**: o servidor não consegue ler o body, e a resposta vem como `400` ou `500` (depende da versão do Express). Colocar o header.
- **`400 Bad Request` com uma mensagem em HTML (`SyntaxError`)**: o JSON do `-d` está inválido (falta vírgula, aspas erradas). O `-d` vai entre aspas **simples**, e o JSON por dentro usa aspas **duplas**.
- **Não aparece o `201`**: faltou o `-i` no comando.
  
-----------------------------------------------------------------
#### Exercício 03: POST sem o campo `placa`
 
**Enunciado:**
 
```text
Tente cadastrar um veiculo sem passar o campo 'placa' no body da requisicao. Confirme se a API retorna o status 400 Bad Request com a mensagem de erro apropriada.
```

**Como fazer:**
 
```bash
curl -i -s -X POST http://localhost:3024/api/v1/veiculos \
  -H "Content-Type: application/json" \
  -d '{"montadora": "Volvo", "modelo": "FH 540"}'
```
 
Resultado:

```
HTTP/1.1 400 Bad Request
X-Powered-By: Express
Content-Type: application/json; charset=utf-8
Content-Length: 67
ETag: W/"43-8CSMur3LgF+LHoWk8xOmduHqtNA"
Date: Tue, 13 Oct 2026 21:36:40 GMT
Connection: keep-alive
Keep-Alive: timeout=5

{"erro":"Campos 'placa', 'montadora' e 'modelo' sao obrigatorios."}
```

- O servidor valida o body: se faltar `placa`, `montadora` ou `modelo`, responde **`400 Bad Request`** com uma mensagem explicando o erro
- `400` quer dizer que o erro foi do **cliente** (eu mandei o dado errado), e não do servidor.
  
**Possíveis erros e como resolver:**
 
- **Veio `201 Created` em vez de `400`**: a `placa` foi enviada sem eu perceber. Conferir o `-d`.
- **Veio `400` com uma mensagem em HTML (`SyntaxError`)**: o JSON está mal escrito. Conferir as aspas e as vírgulas.
- **Veio `500` ou `curl: (7)`**: erro no servidor ou servidor desligado. Ver o terminal do servidor e rodar `node frota_api.js &`.

-----------------------------------------------------------------
#### Exercício 04: GET com query param
 
**Enunciado:**
 
```text
Faça uma requisicao GET filtrando os veiculos por query param: 'http://localhost:3000/api/v1/veiculos?status=DISPONIVEL'.
```
 
**Como fazer:**
 
```bash
curl -s "http://localhost:3024/api/v1/veiculos?status=DISPONIVEL" | jq .
```
 
Resultado:
 
```json
[
  {
    "id": 1,
    "placa": "ABC-1234",
    "montadora": "Scania",
    "modelo": "R450",
    "status": "DISPONIVEL"
  },
  {
    "id": 3,
    "placa": "KLL-9090",
    "montadora": "Volvo",
    "modelo": "FH 540",
    "status": "DISPONIVEL"
  }
]
```

- O `?status=DISPONIVEL` é um **query param**: um filtro que vai na URL, depois do `?`. O servidor lê com `req.query`
- Para mais de um filtro, separa com `&` (ex.: `?status=DISPONIVEL&montadora=Scania`)
- A URL vai **entre aspas**, porque o `?` e o `&` têm significado especial no terminal

**Possíveis erros e como resolver:**
 
- **Resultado `[]` (lista vazia)**: nenhum veículo tem esse status. Conferir o que existe com o `GET /api/v1/veiculos`.
- **Esqueci as aspas na URL**: o `&` faz o terminal cortar o comando. Sempre colocar a URL entre aspas.
- **Veio tudo, sem filtrar**: o `?status=` ficou fora da URL ou escrito errado (precisa ser `status`, em minúsculo).

-----------------------------------------------------------------
#### Exercício 05: PATCH para atualizar o status
 
**Enunciado:**
 
```text
Atualize o status do veiculo de ID 3 para 'EM_ROTA' utilizando a rota PATCH.
```
 
**Como fazer:**
 
```bash
curl -i -s -X PATCH http://localhost:3024/api/v1/veiculos/3/status \
  -H "Content-Type: application/json" \
  -d '{"status": "EM_ROTA"}'
```
 
Resultado:
 
```
HTTP/1.1 200 OK
X-Powered-By: Express
Content-Type: application/json; charset=utf-8
Content-Length: 140
ETag: W/"8c-WiyL+buMzN4tCNM+MXQ0/b07Gyo"
Date: Tue, 13 Oct 2026 22:00:01 GMT
Connection: keep-alive
Keep-Alive: timeout=5

{"mensagem":"Status atualizado com sucesso!","veiculo":{"id":3,"placa":"KLL-9090","montadora":"Volvo","modelo":"FH 540","status":"EM_ROTA"}}
```

- O **PATCH** muda **só uma parte** do recurso (aqui, só o `status`). O resto do veículo continua igual
- A rota é `/veiculos/3/status`: o `3` é o ID e o `/status` é a parte que eu quero mudar
- O servidor transforma o status em maiúsculas (`toUpperCase()`)

**Possíveis erros e como resolver:**
 
- **`404 Not Found` com `{"erro":"Veiculo nao encontrado."}`**: o ID 3 não existe. A lista está na memória e volta ao começo quando reinicio o servidor. Cadastrar o veículo de novo (Exercício 2).
- **`Cannot PATCH /api/v1/veiculos/3`** (em HTML): esqueci o `/status` no final da URL.
- **`400` com `{"erro":"O campo 'status' e obrigatorio."}`**: o `-d` está sem o campo `status`, ou está escrito errado.
- **`400` com mensagem em HTML**: o JSON está inválido. Conferir as aspas e as vírgulas.

-----------------------------------------------------------------

#### Exercício 06: ID inexistente retorna 404
 
**Enunciado:**
 
```text
Tente atualizar ou deletar um veiculo com um ID inexistente (ex: ID 99) e valide se o status code retornado e 404 Not Found.
```
 
**Como fazer:**
 
```bash
curl -i -s -X PATCH http://localhost:3024/api/v1/veiculos/99/status \
  -H "Content-Type: application/json" \
  -d '{"status": "EM_ROTA"}'
 
curl -i -s -X DELETE http://localhost:3024/api/v1/veiculos/99
```
 
Resultado do PATCH:
 
```
HTTP/1.1 404 Not Found
X-Powered-By: Express
Content-Type: application/json; charset=utf-8
Content-Length: 34
ETag: W/"22-WeIgOtnMev695NFLvVmO/fE386k"
Date: Tue, 13 Oct 2026 22:03:26 GMT
Connection: keep-alive
Keep-Alive: timeout=5

{"erro":"Veiculo nao encontrado."}
```
 
Resultado do DELETE:
 
```
HTTP/1.1 404 Not Found
X-Powered-By: Express
Content-Type: application/json; charset=utf-8
Content-Length: 34
ETag: W/"22-WeIgOtnMev695NFLvVmO/fE386k"
Date: Tue, 13 Oct 2026 22:03:56 GMT
Connection: keep-alive
Keep-Alive: timeout=5

{"erro":"Veiculo nao encontrado."}
```

- O **`404 Not Found`** quer dizer que o recurso que pedi **não existe**. O servidor procura o ID na lista e, se não acha, responde 404
- O PATCH e o DELETE devolvem a mesma mensagem de erro
  
**Possíveis erros e como resolver:**
 
- **Veio `200 OK`**: o ID usado existe (e no DELETE o veículo foi removido de verdade). Usar um ID que não existe, como 99.
- **Veio `Cannot DELETE /api/v1/veiculos/99` em HTML**: a rota está escrita errada. O certo é `/api/v1/veiculos/99`.
- **Não aparece o `404`**: faltou o `-i`.
- **`curl: (7) Failed to connect`**: o servidor está desligado. Rodar `node frota_api.js &`.

-----------------------------------------------------------------

#### Exercício 07: nova rota PUT
 
**Enunciado:**
 
```text
Adicione uma nova rota PUT na API (`/api/v1/veiculos/:id`) que permite substituir todos os dados de um veiculo de uma so vez.
```
 
**Como fazer:** abrir o arquivo com `vi frota_api.js` e adicionar a rota **entre o PATCH e o DELETE**:

```js
// 4.5 PUT /api/v1/veiculos/:id - Substituir todos os dados de um veiculo
app.put('/api/v1/veiculos/:id', (req, res) => {
    const id = parseInt(req.params.id);
    const veiculo = veiculos.find(v => v.id === id);
 
    if (!veiculo) {
        return res.status(404).json({ erro: "Veiculo nao encontrado." });
    }
 
    const { placa, montadora, modelo, status } = req.body;
    if (!placa || !montadora || !modelo || !status) {
        return res.status(400).json({ erro: "Campos 'placa', 'montadora', 'modelo' e 'status' sao obrigatorios para substituicao completa." });
    }
 
    veiculo.placa = placa;
    veiculo.montadora = montadora;
    veiculo.modelo = modelo;
    veiculo.status = status.toUpperCase();
 
    res.status(200).json({ mensagem: "Veiculo substituido com sucesso!", veiculo });
});
```

Depois, reiniciar o servidor e testar:
 
```bash
node frota_api.js &
 
curl -i -s -X PUT http://localhost:3024/api/v1/veiculos/1 \
  -H "Content-Type: application/json" \
  -d '{"placa": "ABC-1234", "montadora": "Scania", "modelo": "R450", "status": "DISPONIVEL"}'
```

Resultado:
 
```
[Binario Tech] API de Frotas rodando em http://localhost:3024
HTTP/1.1 200 OK
X-Powered-By: Express
Content-Type: application/json; charset=utf-8
Content-Length: 144
ETag: W/"90-mJIg66PhapaPPa7ZjAiDsmyS7q4"
Date: Tue, 13 Oct 2026 22:06:03 GMT
Connection: keep-alive
Keep-Alive: timeout=5

{"mensagem":"Veiculo substituido com sucesso!","veiculo":{"id":1,"placa":"ABC-1234","montadora":"Scania","modelo":"R450","status":"DISPONIVEL"}}

```
 
- **PUT x PATCH:** o PUT **substitui tudo** e por isso exige **todos** os campos (`placa`, `montadora`, `modelo` e `status`). O PATCH muda só o que eu mandar
- Se faltar um campo no PUT, a API responde `400`. Se o ID não existir, responde `404`
- **No `vi`:** `i` para escrever, `Esc` para parar de escrever, `:wq` + Enter para salvar e sair (e `:q!` para sair sem salvar)
  
**Possíveis erros e como resolver:**
 
- **`Cannot PUT /api/v1/veiculos/1`** (em HTML): o servidor ainda está rodando a versão antiga, sem a rota nova. Reiniciar: `ps aux | grep node`, `kill -9 <PID>` e `node frota_api.js &`.
- **Aparece "rodando", mas o servidor cai (`Done`)**: o antigo ainda está na porta 3024. Matar o antigo primeiro.
- **`400` com `{"erro":"Campos 'placa', 'montadora', 'modelo' e 'status' sao obrigatorios..."}`**: faltou algum dos 4 campos no `-d`.
- **`SyntaxError` ao subir o servidor**: faltou fechar uma chave `}` ou um parêntese na rota nova. A mensagem mostra a linha do problema.
- **Não consigo sair do `vi`**: apertar `Esc` e digitar `:wq` (salva e sai) ou `:q!` (sai sem salvar).

-----------------------------------------------------------------

#### Exercício 08: script `teste_crud.sh`
 
**Enunciado:**
 
```text
Crie um script Bash chamado 'teste_crud.sh' que executa sequencialmente o cadastro de 2 veiculos, atualiza 1 deles e deleta o outro, registrando os logs em 'crud_result.log'.
```
 
**Como fazer:**
 
```bash
touch teste_crud.sh
vi teste_crud.sh
```
 
Conteúdo do `teste_crud.sh`:
 
```bash
#!/bin/bash
 
# teste_crud.sh - Automatiza um fluxo de teste CRUD na API de Frotas
BASE_URL="http://localhost:3024/api/v1/veiculos"
LOG_FILE="crud_result.log"
 
# Limpa o log anterior e inicia um novo registro
echo "===== Teste CRUD - $(date) =====" > "$LOG_FILE"
 
log() {
    echo -e "\n--- $1 ---" | tee -a "$LOG_FILE"
}

# 1. Cadastrar primeiro veiculo
log "Cadastrando veiculo 1 (Iveco Tector)"
RESP1=$(curl -s -w "\nHTTP_STATUS:%{http_code}" -X POST "$BASE_URL" \
    -H "Content-Type: application/json" \
    -d '{"placa": "IVC-1001", "montadora": "Iveco", "modelo": "Tector"}')
echo "$RESP1" | tee -a "$LOG_FILE"
 
# Extrai o ID do veiculo recem-criado usando jq
ID1=$(echo "$RESP1" | sed -n '1p' | jq -r '.id')
 
# 2. Cadastrar segundo veiculo
log "Cadastrando veiculo 2 (DAF XF)"
RESP2=$(curl -s -w "\nHTTP_STATUS:%{http_code}" -X POST "$BASE_URL" \
    -H "Content-Type: application/json" \
    -d '{"placa": "DAF-2002", "montadora": "DAF", "modelo": "XF"}')
echo "$RESP2" | tee -a "$LOG_FILE"
 
ID2=$(echo "$RESP2" | sed -n '1p' | jq -r '.id')
 
# 3. Atualizar o status do primeiro veiculo (PATCH)
log "Atualizando status do veiculo ID $ID1 para EM_ROTA"
curl -s -w "\nHTTP_STATUS:%{http_code}\n" -X PATCH "$BASE_URL/$ID1/status" \
    -H "Content-Type: application/json" \
    -d '{"status": "EM_ROTA"}' | tee -a "$LOG_FILE"
 
# 4. Deletar o segundo veiculo
log "Deletando veiculo ID $ID2"
curl -s -w "\nHTTP_STATUS:%{http_code}\n" -X DELETE "$BASE_URL/$ID2" | tee -a "$LOG_FILE"
 
log "Teste finalizado"
echo "Log completo salvo em $LOG_FILE"
```
 
Dar permissão de execução e rodar:
 
```bash
chmod +x teste_crud.sh
./teste_crud.sh
cat crud_result.log
```
 
Resultado:
 
```
maria_e_silva64@cloudshell:~/curso-pbe1/binario_tech/aula04$ chmod +x teste_crud.sh
maria_e_silva64@cloudshell:~/curso-pbe1/binario_tech/aula04$ ./teste_crud.sh

--- Cadastrando veiculo 1 (Iveco Tector) ---
{"id":4,"placa":"IVC-1001","montadora":"Iveco","modelo":"Tector","status":"DISPONIVEL"}
HTTP_STATUS:201

--- Cadastrando veiculo 2 (DAF XF) ---
{"id":5,"placa":"DAF-2002","montadora":"DAF","modelo":"XF","status":"DISPONIVEL"}
HTTP_STATUS:201

--- Atualizando status do veiculo ID 4 para EM_ROTA ---
{"mensagem":"Status atualizado com sucesso!","veiculo":{"id":4,"placa":"IVC-1001","montadora":"Iveco","modelo":"Tector","status":"EM_ROTA"}}
HTTP_STATUS:200

--- Deletando veiculo ID 5 ---
{"mensagem":"Veiculo ID 5 removido com sucesso."}
HTTP_STATUS:200

--- Teste finalizado ---
Log completo salvo em crud_result.log
```
Conteúdo do `crud_result.log`:

```
maria_e_silva64@cloudshell:~/curso-pbe1/binario_tech/aula04$ cat crud_result.log
===== Teste CRUD - Tue Oct 13 10:13:05 PM UTC 2026 =====

--- Cadastrando veiculo 1 (Iveco Tector) ---
{"id":4,"placa":"IVC-1001","montadora":"Iveco","modelo":"Tector","status":"DISPONIVEL"}
HTTP_STATUS:201

--- Cadastrando veiculo 2 (DAF XF) ---
{"id":5,"placa":"DAF-2002","montadora":"DAF","modelo":"XF","status":"DISPONIVEL"}
HTTP_STATUS:201

--- Atualizando status do veiculo ID 4 para EM_ROTA ---
{"mensagem":"Status atualizado com sucesso!","veiculo":{"id":4,"placa":"IVC-1001","montadora":"Iveco","modelo":"Tector","status":"EM_ROTA"}}
HTTP_STATUS:200

--- Deletando veiculo ID 5 ---
{"mensagem":"Veiculo ID 5 removido com sucesso."}
HTTP_STATUS:200

--- Teste finalizado ---
```

**O que cada parte do script faz:**
 
- `BASE_URL` e `LOG_FILE` guardam a URL e o nome do log em variáveis, para não repetir
- `echo "..." > "$LOG_FILE"` cria o log do zero a cada execução (o `>` apaga o que tinha)
- `log() { ... }` é uma **função** que escreve o título de cada passo. O `tee -a` mostra na tela **e** adiciona no arquivo ao mesmo tempo
- `$(curl ...)` guarda a resposta do `curl` numa variável
- `-w "\nHTTP_STATUS:%{http_code}"` escreve o status code numa **segunda linha** depois do JSON
- `sed -n '1p'` pega só a **primeira linha** (o JSON, sem o `HTTP_STATUS`) e `jq -r '.id'` tira o `id` dele
- `$ID1` e `$ID2` guardam os IDs criados, para o PATCH e o DELETE usarem os IDs certos
> Obs: o `cat crud_result.log` deu `No such file or directory` antes de rodar o script. É normal: o log só passa a existir depois da primeira execução.
 
> Obs: os IDs saíram **4 e 5** porque a lista já começa com 2 veículos. Rodando de novo sem reiniciar o servidor, os IDs seriam outros.

**Possíveis erros e como resolver:**
 
- **`cat: crud_result.log: No such file or directory`**: o script ainda não foi executado. Rodar `./teste_crud.sh`.
- **`Permission denied`**: faltou a permissão de execução. `chmod +x teste_crud.sh`.
- **`teste_crud.sh: command not found`**: esqueci o `./` na frente.
- **`bad interpreter` ou `^M` nas mensagens de erro**: o arquivo ficou com formato do Windows. Rodar `sed -i 's/\r$//' teste_crud.sh`.
- **`jq: parse error` e os IDs saem vazios**: o servidor está desligado ou a porta está errada. Rodar `node frota_api.js &` e conferir a porta no `BASE_URL`.
- **O PATCH ou o DELETE dá `404`**: o ID não foi pego. Conferir se o cadastro respondeu `HTTP_STATUS:201`.
- **O log vem com `HTTP_STATUS:000`**: o `curl` não conseguiu conectar (servidor desligado).
- **O log não tem a última linha `Log completo salvo...`**: é normal. Essa linha só aparece na tela, porque é um `echo` sem `tee`.

-----------------------------------------------------------------

#### Resumo dos comandos da Aula 04
 
| Comando | Para que serve |
|---------|----------------|
| `curl -s URL` | GET sem barra de progresso |
| `curl -i -s URL` | Mostra também o status code e os headers |
| `curl -X POST/PATCH/PUT/DELETE` | Define o verbo HTTP |
| `-H "Content-Type: application/json"` | Avisa que o body é JSON |
| `-d '{...}'` | Envia o body da requisição |
| `-w "\nHTTP_STATUS:%{http_code}"` | Escreve o status code no final da resposta |
| `"URL?campo=valor"` | Query param (filtro na URL, entre aspas) |
| `jq .` | Formata o JSON |
| `jq -r '.id'` | Pega o campo `id` sem aspas |
| `node frota_api.js &` | Roda o servidor em segundo plano |
| `ps aux \| grep node` | Mostra os processos `node` e o PID |
| `kill -9 <PID>` | Encerra o processo à força |
| `jobs` | Lista os processos em segundo plano do terminal |
| `tee -a arquivo` | Mostra na tela e adiciona no arquivo |
| `>` / `>>` | Salva a saída em arquivo (apaga) / adiciona no final |
| `chmod +x` | Dá permissão de execução |
| `./script.sh` | Executa o script da pasta atual |
| `vi arquivo` | Edita o arquivo (`i` escreve, `Esc`, `:wq` salva e sai) |
 
-----------------------------------------------------------------

## Aula 05: Roteamento Avançado, Middlewares, CORS e Tratamento de Erros

Data: 07/08/2026 (Sexta-feira | 13:00 às 14:30 - 2 aulas / 90 minutos)

Tópico (conforme o plano da aula): 2.2 Roteamento Avançado no Express, Middlewares de Validação, CORS e Tratamento Global de Erros.

### O que foi visto na aula

- Ciclo de vida de um **middleware** no Express (`req`, `res`, `next`)
- Modularização das rotas com `express.Router()`
- Middlewares: logger, autenticação por API Key e validação de dados
- Tratamento global de erro (404 em JSON padronizado)
- CORS (Cross-Origin Resource Sharing)
- 8 exercícios de fixação

### Objetivos da aula

- Entender a arquitetura e o ciclo de vida de um middleware (`req`, `res`, `next`)
- Modularizar as rotas com `express.Router()`
- Criar middlewares de logging, autenticação por API Key e validação de dados
- Tratar erros de forma centralizada, com respostas padronizadas em JSON
- Configurar o CORS para a integração com o Front-End

### Conceitos

**Middleware** é uma função que roda **no meio do caminho** entre a requisição e a resposta. Ela recebe `req`, `res` e `next`:

- `next()` passa a requisição para o **próximo** passo da fila
- Se o middleware **responde** sem chamar `next()` (por exemplo, com `401`), a fila **para ali**
- A **ordem** em que são registrados importa

```
Requisição → cors() → express.json() → logger → authMiddleware → rota → Resposta
```

| Middleware | O que faz |
|------------|-----------|
| `cors()` | Libera o acesso de outras origens (o navegador bloqueia sem isso) |
| `express.json()` | Lê o body JSON da requisição |
| `loggerMiddleware` | Registra método, URL, status e tempo de cada requisição |
| `authMiddleware` | Confere o header `X-API-KEY` (responde `401` se faltar ou estiver errado) |
| `validaCnhMiddleware` | Confere se a CNH tem 11 dígitos (responde `400` se não tiver) |
| 404 global | Responde em JSON quando nenhuma rota atende |

**Status codes da aula:** `200` OK, `201` Created, `400` Bad Request (dado inválido), `401` Unauthorized (sem chave ou chave errada), `404` Not Found (rota não existe).

**CORS:** o navegador bloqueia chamadas de uma origem (site) para outra (API), a não ser que o servidor mande o header `Access-Control-Allow-Origin`. O `cors()` faz isso.

**`express.Router()`:** separa as rotas em arquivos. Em `app.use('/api/v1/motoristas', authMiddleware, motoristasRouter)`, o prefixo vem do `app.js`, e dentro do arquivo a rota `'/'` já é `/api/v1/motoristas`.

### Estrutura de pastas

```
aula05/
├── app.js
├── middlewares/
│   ├── logger.js
│   ├── auth.js
│   └── validaCnh.js      (Exercício 4)
└── routes/
    ├── motoristas.js
    └── manutencoes.js    (Exercício 2)
```

-----------------------------------------------------------------

### Passo a passo da aula guiada

#### 1. Criar o projeto

```bash
cd ~/curso-pbe1/binario_tech
mkdir -p aula05/routes aula05/middlewares
cd aula05
npm init -y
npm install express cors
```

#### 2. `middlewares/logger.js`

```js
function loggerMiddleware(req, res, next) {
    const inicio = Date.now();
    const timestamp = new Date().toISOString();

    res.on('finish', () => {
        const duracao = Date.now() - inicio;
        console.log(`[LOG ${timestamp}] ${req.method} ${req.originalUrl} - Status: ${res.statusCode} (${duracao}ms)`);
    });

    next();
}

module.exports = loggerMiddleware;
```

- O `res.on('finish', ...)` espera a resposta terminar para escrever o log com o status e o tempo.

#### 3. `middlewares/auth.js`

```js
function authMiddleware(req, res, next) {
    const apiKey = req.headers['x-api-key'];
    const CHAVE_VALIDA = "binario-tech-secret-2026";

    if (!apiKey || apiKey !== CHAVE_VALIDA) {
        return res.status(401).json({
            erro: "Acesso nao autorizado. Header 'X-API-KEY' invalido ou ausente."
        });
    }

    next();
}

module.exports = authMiddleware;
```

#### 4. `routes/motoristas.js`

```js
const express = require('express');
const router = express.Router();

let motoristas = [
    { id: 1, nome: "Carlos Silva", cnh: "12345678900", categoria: "E", ativo: true },
    { id: 2, nome: "Ana Pereira", cnh: "98765432100", categoria: "D", ativo: true }
];

// GET /api/v1/motoristas
router.get('/', (req, res) => {
    res.status(200).json(motoristas);
});

// POST /api/v1/motoristas (Com validacao inline)
router.post('/', (req, res) => {
    const { nome, cnh, categoria } = req.body;

    if (!nome || !cnh || !categoria) {
        return res.status(400).json({ erro: "Campos 'nome', 'cnh' e 'categoria' sao obrigatorios." });
    }

    const novoMotorista = {
        id: motoristas.length + 1,
        nome,
        cnh,
        categoria,
        ativo: true
    };

    motoristas.push(novoMotorista);
    res.status(201).json(novoMotorista);
});

module.exports = router;
```

#### 5. `app.js`

```js
const express = require('express');
const cors = require('cors');
const loggerMiddleware = require('./middlewares/logger');
const authMiddleware = require('./middlewares/auth');
const motoristasRouter = require('./routes/motoristas');

const app = express();
const PORT = 3000;

// Middlewares Globais
app.use(cors());
app.use(express.json());
app.use(loggerMiddleware);

// Rota Publica
app.get('/api/v1/health', (req, res) => {
    res.status(200).json({ status: "ONLINE", aplicacao: "Binario Tech API v2" });
});

// Rotas Protegidas por Autenticacao
app.use('/api/v1/motoristas', authMiddleware, motoristasRouter);

// Middleware Global de Tratamento de Erros 404 (Rota nao encontrada)
app.use((req, res) => {
    res.status(404).json({ erro: "Endpoint nao encontrado no servidor Binario Tech." });
});

app.listen(PORT, () => {
    console.log(`[Binario Tech] Servidor de Middlewares ativo na porta ${PORT}`);
});
```

#### 6. Rodar e testar

```bash
node app.js &

# Rota publica (health check)
curl -s http://localhost:3024/api/v1/health | jq .

# Rota protegida SEM chave (401)
curl -s http://localhost:3024/api/v1/motoristas | jq .

# Rota protegida COM chave valida
curl -s -H "X-API-KEY: binario-tech-secret-2026" http://localhost:3024/api/v1/motoristas | jq .

# Cadastrar motorista COM chave
curl -s -X POST http://localhost:3024/api/v1/motoristas \
  -H "X-API-KEY: binario-tech-secret-2026" \
  -H "Content-Type: application/json" \
  -d '{"nome":"Roberto Souza","cnh":"55544433322","categoria":"E"}' | jq .
```

- `-H "X-API-KEY: ..."` envia a chave no **header** da requisição

-----------------------------------------------------------------

### Exercícios da Aula 05

#### Exercício 01: health check e o log do middleware

**Enunciado:**

```text
Efetue uma requisicao GET na rota de 'health' e verifique nos logs do terminal a mensagem gerada pelo 'loggerMiddleware'.
```

**Como fazer:**

```bash
fuser -k 3024/tcp
node app.js &  # Ativar o servidor e não esqueça de matar o server antigo!
curl -s http://localhost:3024/api/v1/health | jq . # Só rodar 
```

Resultado:

```
[LOG 2026-10-13T23:11:43.780Z] GET /api/v1/health - Status: 200 (2ms)
{
  "status": "ONLINE",
  "aplicacao": "Binario Tech API v2"
}
```

- A linha `[LOG ...]` é do **servidor** (`loggerMiddleware`): método (`GET`), URL, status (`200`) e tempo (`2ms`)
- Ela aparece no meio do JSON porque o servidor roda em segundo plano no mesmo terminal
- A rota `health` é **pública**, por isso não precisa da API Key

**Possíveis erros e como resolver:**

- **Não aparece o `[LOG ...]`**: o servidor está rodando em outro terminal (o log aparece lá), ou está desligado. Subir com `node app.js &`.
- **`curl: (7) Failed to connect`**: servidor desligado ou porta errada.
- **Aparece "ativo na porta ...", mas o servidor cai (`Done`/`Concluído`)**: já tem um servidor meu na mesma porta. `ps aux | grep node` e `kill -9 <PID>`.
- **`comando não encontrado` ao digitar uma anotação** (`exercicio 1 - aula 5`): o terminal tenta executar tudo. Para anotar, usar `#` no começo da linha.

-----------------------------------------------------------------

#### Exercício 02: rota de manutenções

**Enunciado:**

```text
Crie um novo arquivo de rota 'routes/manutencoes.js' que gerencia orcaments de manutencao dos caminhões. Adicione rotas para listar e cadastrar manutencoes.
```

**Como fazer:**

```bash
vi routes/manutencoes.js
cat routes/manutencoes.js
```

Conteúdo do `routes/manutencoes.js`:

```js
const express = require('express');
const router = express.Router();

let manutencoes = [
    { id: 1, caminhao: "Scania R450", tipo: "Troca de oleo", valor: 850.00, data: "2026-06-10" },
    { id: 2, caminhao: "Volvo FH540", tipo: "Revisao de freios", valor: 1200.50, data: "2026-07-02" }
];

// GET /api/v1/manutencoes
router.get('/', (req, res) => {
    res.status(200).json(manutencoes);
});

// POST /api/v1/manutencoes
router.post('/', (req, res) => {
    const { caminhao, tipo, valor, data } = req.body;

    if (!caminhao || !tipo || !valor || !data) {
        return res.status(400).json({ erro: "Campos 'caminhao', 'tipo', 'valor' e 'data' sao obrigatorios." });
    }

    const novaManutencao = {
        id: manutencoes.length + 1,
        caminhao,
        tipo,
        valor,
        data
    };

    manutencoes.push(novaManutencao);
    res.status(201).json(novaManutencao);
});

module.exports = router;
```

- É o mesmo modelo do `motoristas.js`: uma lista em memória, um `GET` que lista e um `POST` que cadastra com validação (`400` se faltar campo, `201` se criar)
- O arquivo só funciona depois de registrado no `app.js` (Exercício 3)

**Possíveis erros e como resolver:**

- **`Router.use() requires a middleware function but got a Object`**: esqueci o `module.exports = router;` no final.
- **`Cannot find module './routes/manutencoes'`**: o arquivo está na pasta errada ou com outro nome. Conferir com `ls routes/`.
- **`SyntaxError` ao subir o servidor**: faltou fechar uma chave `}` ou parêntese. A mensagem mostra a linha.
- **Cadastro com `valor: 0` dá `400`**: o `!valor` trata `0` como "vazio". Usar um valor maior que zero.
- **Não consigo sair do `vi`**: `Esc`, depois `:wq` (salva e sai) ou `:q!` (sai sem salvar).

-----------------------------------------------------------------

#### Exercício 03: registrar a rota no `app.js` com autenticação

**Enunciado:**

```text
Registre o novo roteador de manutencoes no arquivo 'app.js' sob o caminho '/api/v1/manutencoes', aplicando tambem o 'authMiddleware'.
```

**Como fazer:** 

- No `app.js`, adicionar duas linhas.

Junto dos outros `require`:

```js
const manutencoesRouter = require('./routes/manutencoes');
```

Junto das rotas protegidas:

```js
app.use('/api/v1/manutencoes', authMiddleware, manutencoesRouter);
```

Testar (reiniciando o servidor antes):

```bash
node app.js &
curl -s -H "X-API-KEY: binario-tech-secret-2026" http://localhost:3024/api/v1/manutencoes | jq .
```

Resultado:

```
[LOG 2026-10-13T23:16:31.169Z] GET /api/v1/manutencoes - Status: 200 (1ms)
[
  {
    "id": 1,
    "caminhao": "Scania R450",
    "tipo": "Troca de oleo",
    "valor": 850,
    "data": "2026-06-10"
  },
  {
    "id": 2,
    "caminhao": "Volvo FH540",
    "tipo": "Revisao de freios",
    "valor": 1200.5,
    "data": "2026-07-02"
  }
]
```

- O `authMiddleware` vai **antes** do roteador na mesma linha: a requisição passa por ele e só então chega nas rotas
- O `jq` mostra `850` e `1200.5` (e não `850.00` e `1200.50`), porque no JSON é número

**Possíveis erros e como resolver:**

- **`404` com `Endpoint nao encontrado no servidor Binario Tech.`**: a rota não foi registrada ou esqueci de reiniciar o servidor.
- **`401` com `Acesso nao autorizado...`**: faltou o header `X-API-KEY`, ou a chave está errada.
- **A rota responde sem a chave**: esqueci o `authMiddleware` na linha do `app.use`, e ela ficou pública.
- **`ReferenceError: manutencoesRouter is not defined`**: faltou a linha do `require`.
- **Aparece "ativo", mas o servidor cai**: o servidor antigo ainda está na porta. `kill -9 <PID>` e subir de novo.

-----------------------------------------------------------------

#### Exercício 04: middleware `validaCnh`

**Enunciado:**

```text
Crie um middleware exclusivo de validacao de CNH chamado 'middlewares/validaCnh.js' que garante que a CNH informada no POST contenha exatamente 11 digitos numericos.
```

**Como fazer:** 

- Criar o `middlewares/validaCnh.js`:

```bash
cd middlewares/
touch validaCnh.js
vi validaCnh.js
```

Dentro do arquivo:

```js
function validaCnhMiddleware(req, res, next) {
    const { cnh } = req.body;

    const regexCnh = /^\d{11}$/;

    if (!cnh || !regexCnh.test(cnh)) {
        return res.status(400).json({
            erro: "CNH invalida. Deve conter exatamente 11 digitos numericos."
        });
    }

    next();
}

module.exports = validaCnhMiddleware;
```

- `/^\d{11}$/` é uma **expressão regular**: `^` começo, `\d{11}` exatamente 11 dígitos, `$` fim
- `!cnh ||` trata a CNH ausente (vazia). Se for inválida, responde `400` e **para a fila**. Se estiver certa, chama `next()`

**Possíveis erros e como resolver:**

- **`validaCnhMiddleware is not a function`** (ou `Route.post() requires a callback function but got a [object Object]`): faltou o `module.exports = validaCnhMiddleware;`.
- **CNH que começa com `0`**: tem que ir **entre aspas** no JSON (`"01234567890"`). Como número, o `0` da frente some.
- **`400` mesmo com 11 dígitos**: tem letra, espaço ou traço na CNH. Só números.
- **`500`/erro de `undefined` ao ler o `cnh`**: esqueci o `-H "Content-Type: application/json"` na requisição, então o body não é lido.

-----------------------------------------------------------------

#### Exercício 05: aplicar o `validaCnh` só no POST de motoristas

**Enunciado:**

```text
Aplique o middleware 'validaCnh' apenas na rota POST de motoristas e faca um teste via cURL enviando uma CNH invalida (ex: "123"). Confirme o retorno 400 Bad Request.
```

**Como fazer:** 

- No `routes/motoristas.js`, importar e colocar o middleware **só** na rota `POST`:

```js
const express = require('express');
const router = express.Router();
const validaCnhMiddleware = require('../middlewares/validaCnh');

let motoristas = [
    { id: 1, nome: "Carlos Silva", cnh: "12345678900", categoria: "E", ativo: true },
    { id: 2, nome: "Ana Pereira", cnh: "98765432100", categoria: "D", ativo: true }
];

// GET /api/v1/motoristas
router.get('/', (req, res) => {
    res.status(200).json(motoristas);
});

// POST /api/v1/motoristas (validaCnh roda antes da funcao da rota)
router.post('/', validaCnhMiddleware, (req, res) => {
    const { nome, cnh, categoria } = req.body;

    if (!nome || !cnh || !categoria) {
        return res.status(400).json({ erro: "Campos 'nome', 'cnh' e 'categoria' sao obrigatorios." });
    }

    const novoMotorista = {
        id: motoristas.length + 1,
        nome,
        cnh,
        categoria,
        ativo: true
    };

    motoristas.push(novoMotorista);
    res.status(201).json(novoMotorista);
});

module.exports = router;
```

- Testar com a CNH inválida `"123"`:

```bash
curl -s -X POST http://localhost:3024/api/v1/motoristas \
  -H "X-API-KEY: binario-tech-secret-2026" \
  -H "Content-Type: application/json" \
  -d '{"nome":"Teste Invalido","cnh":"123","categoria":"E"}' | jq .
```

Resultado:

```
[LOG 2026-10-13T23:27:43.574Z] POST /api/v1/motoristas - Status: 400 (1ms)
{
  "erro": "CNH invalida. Deve conter exatamente 11 digitos numericos."
}
```

- O middleware vem **entre** o caminho e a função da rota: `router.post('/', validaCnhMiddleware, (req, res) => {...})`. Por isso só vale no `POST` (o `GET` continua livre)
- O `[LOG ... Status: 400]` confirma o **400 Bad Request**. Para ver o status na tela, usar `curl -i`

**Possíveis erros e como resolver:**

- **`Error: Cannot find module '.../routes/app.js'` (`MODULE_NOT_FOUND`)**: rodei o `node app.js &` **dentro da pasta `routes/`**. Aconteceu aqui, com `[1]+ Exit 1 node app.js`. Voltar com `cd ..` e rodar de novo na pasta `aula05`.
- **`Cannot find module '../middlewares/validaCnh'`**: o caminho do `require` está errado. Dentro de `routes/`, é `../middlewares/validaCnh`.
- **Voltou `201` com a CNH `"123"`**: o middleware não foi colocado na rota, ou o servidor não foi reiniciado.
- **`401`**: faltou o header `X-API-KEY`.

-----------------------------------------------------------------

#### Exercício 06: rota inexistente (404 padronizado)

**Enunciado:**

```text
Faca uma requisicao GET para uma rota inexistente como '/api/v1/clientes' e confirme que o middleware global de 404 intercepta e responde em JSON padronizado.
```

**Como fazer:**

```bash
curl -s http://localhost:3024/api/v1/clientes | jq .
```

Resultado:

```
[LOG 2026-10-13T23:30:01.047Z] GET /api/v1/clientes - Status: 404 (1ms)
{
  "erro": "Endpoint nao encontrado no servidor Binario Tech."
}
```

- O middleware de 404 fica **por último** no `app.js`. Se nenhuma rota anterior atender, ele responde em JSON, no lugar da página de erro em HTML do Express

**Possíveis erros e como resolver:**

- **`Cannot GET /api/v1/clientes` (em HTML)**: o middleware de 404 não está no `app.js`, ou o servidor não foi reiniciado.
- **Todas as rotas dão 404**: o middleware de 404 foi colocado **antes** das rotas. Ele precisa ficar depois de todas.
- **`jq: parse error`**: a resposta não era JSON. Rodar o `curl -s URL` sem o `| jq`.

-----------------------------------------------------------------

#### Exercício 07: script `teste_seguranca.sh`

**Enunciado:**

```text
Crie um script Bash chamado 'teste_seguranca.sh' que simula 3 tentativas de acesso sem chave de API e 1 tentativa com chave valida, salvando os retornos em 'audit_seguranca.log'.
```

**Como fazer:**

```bash
touch teste_seguranca.sh
vi teste_seguranca.sh
```

Conteúdo do `teste_seguranca.sh`:

```bash
#!/bin/bash

LOG_FILE="audit_seguranca.log"
URL="http://localhost:3024/api/v1/motoristas"
API_KEY_VALIDA="binario-tech-secret-2026"

echo "=== Teste de Seguranca - $(date) ===" > "$LOG_FILE"

echo "" >> "$LOG_FILE"
echo "--- Tentativa 1 (SEM API Key) ---" >> "$LOG_FILE"
curl -s -w "\nStatus HTTP: %{http_code}\n" "$URL" >> "$LOG_FILE"

echo "" >> "$LOG_FILE"
echo "--- Tentativa 2 (SEM API Key) ---" >> "$LOG_FILE"
curl -s -w "\nStatus HTTP: %{http_code}\n" "$URL" >> "$LOG_FILE"

echo "" >> "$LOG_FILE"
echo "--- Tentativa 3 (SEM API Key) ---" >> "$LOG_FILE"
curl -s -w "\nStatus HTTP: %{http_code}\n" "$URL" >> "$LOG_FILE"

echo "" >> "$LOG_FILE"
echo "--- Tentativa 4 (COM API Key valida) ---" >> "$LOG_FILE"
curl -s -w "\nStatus HTTP: %{http_code}\n" -H "X-API-KEY: $API_KEY_VALIDA" "$URL" >> "$LOG_FILE"

echo "" >> "$LOG_FILE"
echo "=== Fim do teste ===" >> "$LOG_FILE"

echo "Teste concluido! Resultados salvos em $LOG_FILE"
```

Dar permissão, rodar e verificar o audit_seguranca.log

```bash
chmod +x teste_seguranca.sh
./teste_seguranca.sh
cat audit_seguranca.log
```

Resultado:

```
$ touch teste_seguranca.sh
$ vi teste_seguranca.sh
$ chmod +x teste_seguranca.sh
$ ./teste_seguranca.sh
 
[LOG 2026-10-13T23:34:11.988Z] GET /api/v1/motoristas - Status: 401 (1ms)
[LOG 2026-10-13T23:34:12.000Z] GET /api/v1/motoristas - Status: 401 (1ms)
[LOG 2026-10-13T23:34:12.013Z] GET /api/v1/motoristas - Status: 401 (1ms)
[LOG 2026-10-13T23:34:12.025Z] GET /api/v1/motoristas - Status: 200 (0ms)
Teste concluido! Resultados salvos em audit_seguranca.log

$ cat audit_seguranca.log
=== Teste de Seguranca - Tue Oct 13 11:34:11 PM UTC 2026 ===

--- Tentativa 1 (SEM API Key) ---
{"erro":"Acesso nao autorizado. Header 'X-API-KEY' invalido ou ausente."}
Status HTTP: 401

--- Tentativa 2 (SEM API Key) ---
{"erro":"Acesso nao autorizado. Header 'X-API-KEY' invalido ou ausente."}
Status HTTP: 401

--- Tentativa 3 (SEM API Key) ---
{"erro":"Acesso nao autorizado. Header 'X-API-KEY' invalido ou ausente."}
Status HTTP: 401

--- Tentativa 4 (COM API Key valida) ---
[{"id":1,"nome":"Carlos Silva","cnh":"12345678900","categoria":"E","ativo":true},{"id":2,"nome":"Ana Pereira","cnh":"98765432100","categoria":"D","ativo":true}]
Status HTTP: 200

=== Fim do teste ===
```

- Variáveis no começo (`LOG_FILE`, `URL`, `API_KEY_VALIDA`) evitam repetir os valores
- A primeira linha usa `>` (recria o log do zero a cada execução) e as outras usam `>>` (adicionam)
- `-w "\nStatus HTTP: %{http_code}\n"` escreve o status code depois da resposta
- `-H "X-API-KEY: $API_KEY_VALIDA"` só na tentativa 4. As tentativas sem chave voltam `401`, e a com chave, `200`

**Possíveis erros e como resolver:**

- **`Permission denied`**: faltou `chmod +x teste_seguranca.sh`.
- **`teste_seguranca.sh: command not found`**: esqueci o `./`.
- **O log mostra `Status HTTP: 000`**: o `curl` não conectou (servidor desligado ou porta errada na `URL`).
- **Todas as tentativas dão `401`, inclusive a 4**: a chave do script está diferente da do `auth.js`.
- **`cat audit_seguranca.log: No such file`**: o script ainda não foi executado.

-----------------------------------------------------------------

#### Exercício 08: encontrar e encerrar o processo da API

**Enunciado:**

```text
Utilize o comando 'ps aux | grep node' no terminal Linux para encontrar o processo da API e encerre-o utilizando 'kill -9 <PID>'.
```

**Como fazer:**

```bash
ps aux | grep node
kill -9 <PID>
```

Resultado (só as minhas linhas; o Cloud Shell tem vários `node` do próprio editor):

```
$ ps aux | grep node
maria_e+    2619  0.0  0.8 1418544 70060 pts/2   S<l  23:07   0:00 node app.js
maria_e+    2800  0.0  0.0   6552  2396 pts/2    S<+  23:37   0:00 grep --color=auto node

$ kill -9 2619
$
[1]+  Killed                  node app.js
```

- O **PID** é a segunda coluna (`2619`), na linha do `node app.js`
- Depois do `kill -9`, o servidor morre (`Killed`)
  
**Possíveis erros e como resolver:**

- **`kill: (PID) - No such process`**: o PID está errado ou já encerrou. Rodar o `ps aux | grep node` de novo.
- **Vários `node` na lista**: o meu é o que tem `node app.js` no final da linha. As linhas com `code-oss-for-cloud-shell` são do editor do Cloud Shell, **não matar**.
- **No Cloud Shell, não usar `killall node`**: ele também derruba o editor. Usar `pkill -f "node app.js"`.

-----------------------------------------------------------------

#### Resumo dos comandos da Aula 05

| Comando | Para que serve |
|---------|----------------|
| `npm install express cors` | Instala o Express e o CORS |
| `node app.js &` | Roda a API em segundo plano |
| `curl -s -H "X-API-KEY: ..." URL` | Faz uma requisição enviando um header |
| `curl -s -X POST ... -d '{...}'` | Envia um POST com body JSON |
| `curl -w "\nStatus HTTP: %{http_code}\n"` | Escreve o status code no final da resposta |
| `curl -i` | Mostra também o status e os headers |
| `jq .` | Formata o JSON |
| `vi arquivo` | Edita o arquivo (`i` escreve, `Esc`, `:wq` salva e sai) |
| `cat arquivo` | Mostra o conteúdo do arquivo |
| `touch` / `chmod +x` / `./script.sh` | Cria / dá permissão / executa o script |
| `>` / `>>` | Salva a saída em arquivo (apaga) / adiciona no final |
| `ps aux \| grep node` | Lista os processos `node` e o PID |
| `kill -9 <PID>` | Encerra o processo à força |
| `pkill -f "node app.js"` | Encerra só a API desta aula |

-----------------------------------------------------------------

## Aula 06: Persistência em Disco e CRUD de Ocorrências da Frota

Data: 13/08/2026 (Quinta-feira | 13:00 às 17:00 - 5 aulas / 225 minutos)

Tópico (conforme o plano da aula): Persistência em Disco, Módulo Nativo `fs/promises` e CRUD de Ocorrências da Frota

### O que foi visto na aula

- Persistência em **memória** x persistência em **arquivo JSON**
- Módulo nativo `fs/promises`, com `async/await`
- `path.join()` para montar o caminho do arquivo
- Tratamento de erros de leitura e escrita (`try/catch`) sem derrubar o servidor
- API de ocorrências de manutenção dos caminhões
- Script Bash para auditar a persistência
- 5 exercícios de fixação

### Objetivos da aula

- Salvar e ler dados da telemetria em arquivos JSON locais com `fs/promises`
- Integrar a persistência em disco às rotas Express da Binário Tech
- Tratar exceções de leitura/escrita (I/O) para o servidor não cair
- Criar rotas para registrar e consultar as ocorrências de manutenção

### Conceitos

| | Memória (Aula 04) | Arquivo JSON (Aula 06) |
|---|-------------------|------------------------|
| Onde guarda | Numa variável (`let veiculos = [...]`) | No arquivo `ocorrencias.json` |
| Ao reiniciar o servidor | **Perde tudo** | **Mantém** os dados |

- `fs/promises`: funções de arquivo que devolvem promessas (`readFile`, `writeFile`), usadas com `async/await`
- `await`: espera a leitura/escrita terminar antes de seguir
- `path.join(__dirname, 'ocorrencias.json')`: monta o caminho do arquivo na mesma pasta do servidor
- `JSON.parse(texto)`: transforma o texto do arquivo em lista. `JSON.stringify(lista, null, 2)`: transforma a lista em texto formatado para salvar
- `id: Date.now()`: usa a hora atual (em milissegundos) como ID, por isso os IDs são números grandes

-----------------------------------------------------------------

### Passo a passo da aula guiada

#### 1. Preparar a pasta

```bash
cd ~/curso-pbe1/binario_tech
mkdir -p aula06
cd aula06
npm init -y
npm install express cors
```

#### 2. `ocorrencias_api.js`

```js
const express = require('express');
const fs = require('fs/promises');
const path = require('path');
const cors = require('cors');

const app = express();
const PORT = 3000;
const ARQUIVO_DADOS = path.join(__dirname, 'ocorrencias.json');

app.use(cors());
app.use(express.json());

// Função Auxiliar: Ler Arquivo JSON
async function lerOcorrencias() {
    try {
        const dados = await fs.readFile(ARQUIVO_DADOS, 'utf-8');
        return JSON.parse(dados);
    } catch (erro) {
        // Se o arquivo não existir, retorna array vazio e cria o arquivo
        await fs.writeFile(ARQUIVO_DADOS, '[]', 'utf-8');
        return [];
    }
}

// Função Auxiliar: Salvar no Arquivo JSON
async function salvarOcorrencias(ocorrencias) {
    await fs.writeFile(ARQUIVO_DADOS, JSON.stringify(ocorrencias, null, 2), 'utf-8');
}

// ROTA 1: Listar todas as ocorrências
app.get('/api/v1/ocorrencias', async (req, res) => {
    try {
        const ocorrencias = await lerOcorrencias();
        res.status(200).json(ocorrencias);
    } catch (erro) {
        res.status(500).json({ erro: "Erro ao ler base de dados em disco." });
    }
});

// ROTA 2: Cadastrar nova ocorrência na frota
app.post('/api/v1/ocorrencias', async (req, res) => {
    try {
        const { montadora, placa, descricao, gravidade } = req.body;

        if (!montadora || !placa || !descricao) {
            return res.status(400).json({ erro: "Montadora, placa e descrição são obrigatórios." });
        }

        const ocorrencias = await lerOcorrencias();
        const novaOcorrencia = {
            id: Date.now(),
            montadora,
            placa,
            descricao,
            gravidade: gravidade || "MEDIA",
            data_registro: new Date().toISOString()
        };

        ocorrencias.push(novaOcorrencia);
        await salvarOcorrencias(ocorrencias);

        res.status(201).json(novaOcorrencia);
    } catch (erro) {
        res.status(500).json({ erro: "Erro ao salvar ocorrência em disco." });
    }
});

app.listen(PORT, () => {
    console.log(`[Binário Tech] API de Ocorrências ativa na porta ${PORT}`);
});
```

> Obs: o `lerOcorrencias()` cria o arquivo `[]` se ele não existir. Mas se o arquivo existir com **JSON inválido**, o `catch` também recria `[]` e **apaga os dados**. Cuidado ao editar o `ocorrencias.json` na mão.

#### 3. Script `testar_persistencia.sh`

```bash
#!/bin/bash
echo "=================================================="
echo " AUDITORIA DE PERSISTÊNCIA EM DISCO - BINÁRIO TECH"
echo "=================================================="

echo -e "\n[1] Cadastrando Ocorrência Scania..."
curl -s -X POST http://localhost:3000/api/v1/ocorrencias \
  -H "Content-Type: application/json" \
  -d '{"montadora":"Scania","placa":"SCA-9988","descricao":"Superaquecimento de motor","gravidade":"ALTA"}' | jq .

echo -e "\n[2] Cadastrando Ocorrência Mercedes-Benz..."
curl -s -X POST http://localhost:3000/api/v1/ocorrencias \
  -H "Content-Type: application/json" \
  -d '{"montadora":"Mercedes-Benz","placa":"MBB-1122","descricao":"Troca de pastilhas de freio","gravidade":"BAIXA"}' | jq .

echo -e "\n[3] Lendo arquivo JSON direto do disco (cat ocorrencias.json)..."
cat ocorrencias.json | jq .
```

#### 4. Executar

```bash
node ocorrencias_api.js &
chmod +x testar_persistencia.sh
./testar_persistencia.sh
```

-----------------------------------------------------------------

### Exercícios da Aula 06

#### Exercício 01: GET das ocorrências com httpie

**Enunciado:**

```text
Efetue uma requisição GET na rota '/api/v1/ocorrencias' via httpie e valide se a resposta é um array contendo os registros do arquivo 'ocorrencias.json'.
```

**Como fazer:**

```bash
http GET localhost:3024/api/v1/ocorrencias
```

Resultado:

```
HTTP/1.1 200 OK
Access-Control-Allow-Origin: *
Connection: keep-alive
Content-Length: 337
Content-Type: application/json; charset=utf-8
Date: Tue, 13 Oct 2026 23:43:29 GMT
ETag: W/"151-nWY+9TT6f0FRZJ8uOGn2VTFa+nQ"
Keep-Alive: timeout=5
X-Powered-By: Express

[
    {
        "data_registro": "2026-09-10T14:23:25.282Z",
        "descricao": "Superaquecimento de motor",
        "gravidade": "ALTA",
        "id": 1789050205282,
        "montadora": "Scania",
        "placa": "SCA-9988"
    },
    {
        "data_registro": "2026-09-10T14:23:25.291Z",
        "descricao": "Troca de pastilhas de freio",
        "gravidade": "BAIXA",
        "id": 1789050205291,
        "montadora": "Mercedes-Benz",
        "placa": "MBB-1122"
    }
]
```

- **É um array**: o corpo começa com `[` e termina com `]`, com um objeto para cada ocorrência
- `200 OK` quer dizer que deu certo. O `Access-Control-Allow-Origin: *` vem do `cors()`
- O `httpie` mostra as chaves em **ordem alfabética**

**Possíveis erros e como resolver:**

- **`http: command not found`**: instalar com `sudo apt-get install -y httpie`.
- **`Connection refused`**: servidor desligado. `node ocorrencias_api.js &`.
- **Resposta `[]`**: o arquivo `ocorrencias.json` ainda não tem registros. Rodar o `testar_persistencia.sh` ou fazer um `POST`.
- **`500` com `Erro ao ler base de dados em disco.`**: erro ao ler o arquivo. Conferir se a pasta e as permissões estão certas.

-----------------------------------------------------------------

#### Exercício 02: `jq` filtrando por montadora

**Enunciado:**

```text
Utilize o utilitário 'jq' para filtrar do arquivo 'ocorrencias.json' apenas os registros da montadora "Scania".
```

**Como fazer:**

```bash
cat ocorrencias.json | jq '[.[] | select(.montadora == "Scania")]'
```

Resultado:

```json
[
  {
    "id": 1789050205282,
    "montadora": "Scania",
    "placa": "SCA-9988",
    "descricao": "Superaquecimento de motor",
    "gravidade": "ALTA",
    "data_registro": "2026-09-10T14:23:25.282Z"
  }
]
```

- `.[]` passa por cada item da lista
- `select(.montadora == "Scania")` fica só com os itens que atendem a condição
- `[ ... ]` em volta junta os resultados de volta numa lista (sem ele, saem objetos soltos)

**Possíveis erros e como resolver:**

- **`[]` (vazio)**: a montadora está escrita diferente (o `==` diferencia maiúscula de minúscula: `"scania"` não acha `"Scania"`).
- **`jq: error ... syntax error`**: faltou fechar aspas, colchetes ou parênteses. O filtro vai entre aspas simples.
- **`jq: error ... Cannot iterate over null`**: o arquivo está vazio. Fazer um `POST` primeiro.
- **`No such file or directory`**: estou na pasta errada (`pwd`) ou o arquivo ainda não foi criado.

-----------------------------------------------------------------

#### Exercício 03: rota por montadora

**Enunciado:**

```text
Adicione uma rota GET '/api/v1/ocorrencias/montadora/:nome' que filtra as ocorrências registradas em arquivo de acordo com a montadora informada na URL.
```

**Como fazer:** 

- No `ocorrencias_api.js`, adicionar **antes** do `app.listen`:

```js
// ROTA 3: Filtrar ocorrências por montadora
app.get('/api/v1/ocorrencias/montadora/:nome', async (req, res) => {
    try {
        const { nome } = req.params;
        const ocorrencias = await lerOcorrencias();
        const filtradas = ocorrencias.filter(
            o => o.montadora.toLowerCase() === nome.toLowerCase()
        );
        res.status(200).json(filtradas);
    } catch (erro) {
        res.status(500).json({ erro: "Erro ao filtrar ocorrências." });
    }
});
```

Reiniciar o servidor e testar:

```bash
http GET localhost:3024/api/v1/ocorrencias/montadora/Scania
```

Resultado do teste: 

```
HTTP/1.1 200 OK
Access-Control-Allow-Origin: *
Connection: keep-alive
Content-Length: 164
Content-Type: application/json; charset=utf-8
Date: Tue, 13 Oct 2026 23:47:56 GMT
ETag: W/"a4-ak2WG+eXVkr4k85V1BB90K9ZKJ4"
Keep-Alive: timeout=5
X-Powered-By: Express

[
    {
        "data_registro": "2026-09-10T14:23:25.282Z",
        "descricao": "Superaquecimento de motor",
        "gravidade": "ALTA",
        "id": 1789050205282,
        "montadora": "Scania",
        "placa": "SCA-9988"
    }
]
```

- `:nome` é um **parâmetro de rota**: o que vier na URL depois de `/montadora/` fica em `req.params.nome`
- O `toLowerCase()` nos dois lados faz o filtro **não diferenciar maiúscula de minúscula** (`Scania` e `scania` funcionam)

**Possíveis erros e como resolver:**

- **`Cannot GET /api/v1/ocorrencias/montadora/Scania`**: esqueci de reiniciar o servidor.
- **Resposta `[]`**: nenhuma ocorrência dessa montadora. Para nomes com espaço ou hífen, conferir a escrita (`Mercedes-Benz`).
- **A rota nova nunca é chamada**: ela precisa estar **antes** do `app.listen`.
- **`500` com `Erro ao filtrar ocorrências.`**: algum registro está sem o campo `montadora`.

-----------------------------------------------------------------

#### Exercício 04: rota DELETE

**Enunciado:**

```text
Crie uma nova rota DELETE '/api/v1/ocorrencias/:id' que remove do arquivo JSON a ocorrência correspondente ao ID informado.
```

**Como fazer:** 

- No `ocorrencias_api.js`, adicionar **antes** do `app.listen` e depois da Rota 3 (Exercício anterior):

```js
// ROTA 4: Remover ocorrência por ID
app.delete('/api/v1/ocorrencias/:id', async (req, res) => {
    try {
        const { id } = req.params;
        const ocorrencias = await lerOcorrencias();
        const indice = ocorrencias.findIndex(o => o.id === Number(id));

        if (indice === -1) {
            return res.status(404).json({ erro: "Ocorrência não encontrada." });
        }

        const [removida] = ocorrencias.splice(indice, 1);
        await salvarOcorrencias(ocorrencias);

        res.status(200).json({ mensagem: "Ocorrência removida com sucesso.", ocorrencia: removida });
    } catch (erro) {
        res.status(500).json({ erro: "Erro ao remover ocorrência." });
    }
});
```

Reiniciar o servidor e testar:

```bash
http GET localhost:3024/api/v1/ocorrencias

http DELETE localhost:3024/api/v1/ocorrencias/1789050205282
```

Resultado do teste: 

- Primeiro comando
  
```
HTTP/1.1 200 OK
Access-Control-Allow-Origin: *
Connection: keep-alive
Content-Length: 337
Content-Type: application/json; charset=utf-8
Date: Tue, 13 Oct 2026 23:53:20 GMT
ETag: W/"151-nWY+9TT6f0FRZJ8uOGn2VTFa+nQ"
Keep-Alive: timeout=5
X-Powered-By: Express

[
    {
        "data_registro": "2026-09-10T14:23:25.282Z",
        "descricao": "Superaquecimento de motor",
        "gravidade": "ALTA",
        "id": 1789050205282,
        "montadora": "Scania",
        "placa": "SCA-9988"
    },
    {
        "data_registro": "2026-09-10T14:23:25.291Z",
        "descricao": "Troca de pastilhas de freio",
        "gravidade": "BAIXA",
        "id": 1789050205291,
        "montadora": "Mercedes-Benz",
        "placa": "MBB-1122"
    }
]
```
- Segundo comando: DELETE

```
HTTP/1.1 200 OK
Access-Control-Allow-Origin: *
Connection: keep-alive
Content-Length: 224
Content-Type: application/json; charset=utf-8
Date: Tue, 13 Oct 2026 23:57:33 GMT
ETag: W/"e0-Lv3SrD0atPToeDpuBBf4dmWOqgM"
Keep-Alive: timeout=5
X-Powered-By: Express

{
    "mensagem": "Ocorrência removida com sucesso.",
    "ocorrencia": {
        "data_registro": "2026-09-10T14:23:25.282Z",
        "descricao": "Superaquecimento de motor",
        "gravidade": "ALTA",
        "id": 1789050205282,
        "montadora": "Scania",
        "placa": "SCA-9988"
    }
}
```

- Se quiser verificar a remoção, rode novamente o primeiro comando:

Resultado:

```
HTTP/1.1 200 OK
Access-Control-Allow-Origin: *
Connection: keep-alive
Content-Length: 174
Content-Type: application/json; charset=utf-8
Date: Tue, 13 Oct 2026 23:59:46 GMT
ETag: W/"ae-mhZnh2y2k9kF/9CMSP2fT95Xh+A"
Keep-Alive: timeout=5
X-Powered-By: Express

[
    {
        "data_registro": "2026-09-10T14:23:25.291Z",
        "descricao": "Troca de pastilhas de freio",
        "gravidade": "BAIXA",
        "id": 1789050205291,
        "montadora": "Mercedes-Benz",
        "placa": "MBB-1122"
    }
]
```

- A rota precisa: ler o arquivo, tirar a ocorrência com aquele ID, salvar o arquivo de novo e responder `200`. Se o ID não existir, responder `404`
- Os IDs são números grandes (`Date.now()`), então na URL vai o número **inteiro**

**Possíveis erros e como resolver:**

- **`404` mesmo com o ID certo**: o ID está cortado ou o `id` da URL (texto) não foi convertido para número (`Number(req.params.id)`) antes de comparar.
- **O registro continua no arquivo**: faltou salvar com `await salvarOcorrencias(...)`.
- **`Cannot DELETE /api/v1/ocorrencias/...`**: esqueci de reiniciar o servidor.

-----------------------------------------------------------------

#### Exercício 05: script `limpar_dados.sh`

**Enunciado:**

```text
Crie um script em Bash chamado 'limpar_dados.sh' que encerra o processo Node.js e exclui o arquivo 'ocorrencias.json' para resetar o ambiente de testes.
```

**Como fazer:**

```bash
touch limpar_dados.sh
vi limpar_dados.sh
```

Coloque o script bash, dentro do 'limpar_dados.sh'

```bash
#!/bin/bash

echo "=================================================="
echo " LIMPEZA DO AMBIENTE DE TESTES - BINÁRIO TECH     "
echo "=================================================="

echo -e "\n[1] Encerrando processo Node.js (ocorrencias_api.js)..."
PID=$(ps aux | grep '[o]correncias_api.js' | awk '{print $2}')

if [ -n "$PID" ]; then
    kill -9 $PID
    echo "Processo $PID encerrado."
else
    echo "Nenhum processo Node.js rodando."
fi

echo -e "\n[2] Removendo arquivo ocorrencias.json..."
if [ -f "ocorrencias.json" ]; then
    rm ocorrencias.json
    echo "Arquivo ocorrencias.json removido."
else
    echo "Arquivo ocorrencias.json não encontrado."
fi

echo -e "\nAmbiente resetado com sucesso!"
```

Dar permissão e executar o script: 

```bash
chmod +x limpar_dados.sh 
./limpar_dados.sh 
```

Resultado do `limpar_dados.sh `:

```
==================================================
 LIMPEZA DO AMBIENTE DE TESTES - BINÁRIO TECH     
==================================================

[1] Encerrando processo Node.js (ocorrencias_api.js)...
Processo 2829 encerrado.

[2] Removendo arquivo ocorrencias.json...
Arquivo ocorrencias.json removido.

Ambiente resetado com sucesso!
[1]+  Killed                  node ocorrencias_api.js
```

- Caso queira verificar se removeu só rodar:
```bash
ps aux | grep node
```

Resultado:

```
maria_e+    2005  0.0  2.7 18603932 225008 ?     Sl   Oct13   0:08 /google/devshell/editor/code-oss-for-cloud-shell/node /google/devshell/editor/code-oss-for-cloud-shell/extensions/geminicodeassist/agent/a2a-server.mjs
maria_e+    2998  0.0  0.0   6552  2396 pts/2    S<+  00:11   0:00 grep --color=auto node
```

- O script encerra o servidor e apaga o `ocorrencias.json`. Na próxima vez que a API subir, o `lerOcorrencias()` cria um arquivo novo com `[]`
- O `rm` apaga **de vez** (não tem lixeira)

**Possíveis erros e como resolver:**

- **`Permission denied`**: faltou `chmod +x limpar_dados.sh`.
- **`rm: cannot remove 'ocorrencias.json': No such file or directory`**: o arquivo já foi apagado ou estou na pasta errada. Usar `rm -f` para não dar erro.
- **No Cloud Shell, `killall node` derruba também o editor**: usar `pkill -f ocorrencias_api.js`.
- **O servidor continua rodando**: conferir com `ps aux | grep node`.

-----------------------------------------------------------------

#### Resumo dos comandos da Aula 06

| Comando | Para que serve |
|---------|----------------|
| `http GET URL` | Requisição GET com o httpie (mostra headers e JSON formatado) |
| `jq '[.[] \| select(.campo == "valor")]'` | Filtra os itens de uma lista pelo valor de um campo |
| `cat arquivo \| jq .` | Mostra o arquivo JSON formatado |
| `node ocorrencias_api.js &` | Roda a API em segundo plano |
| `ps aux \| grep node` | Lista os processos `node` e o PID |
| `pkill -f ocorrencias_api.js` | Encerra só a API desta aula |
| `rm arquivo` | Apaga o arquivo (sem lixeira) |
| `chmod +x` / `./script.sh` | Dá permissão / executa o script |

-----------------------------------------------------------------

# UNIDADE 3: PROTOCOLO HTTP E COMUNICACAO WEB

Aulas 07, 08, 09 e 10

>Em desenvolvimento do Readme⚠️

## Aula 07

(a preencher)

## Aula 08

(a preencher)

## Aula 09

(a preencher)

## Aula 10

(a preencher)

-----------------------------------------------------------------

# UNIDADE 4: PERSISTENCIA E INTEGRACAO COM BANCO DE DADOS (CRUD)

Aulas 11 e 12

>Em desenvolvimento do Readme⚠️

## Aula 07

(a preencher)

## Aula 08

(a preencher)

-----------------------------------------------------------------

# UNIDADE: 5 - ARQUITETURA RESTFUL, VALIDAÇÕES E TRATAMENTO DE ERROS

Aulas 13, 14, 15, 16, 17 e 18

>Em desenvolvimento do Readme⚠️

## Aula 13

(a preencher)

## Aula 14

(a preencher)

## Aula 15

(a preencher)

## Aula 16

(a preencher)

## Aula 17

(a preencher)

## Aula 18

(a preencher)

-----------------------------------------------------------------

# UNIDADE: 6 - DEVOPS, DEPLOY E AUTOMAÇÃO DE INFRAESTRUTURA

Aulas 19, 20, 21, 22 e 23

>Em desenvolvimento do Readme⚠️

## Aula 19

(a preencher)

## Aula 20

(a preencher)

## Aula 21

(a preencher)

## Aula 22

(a preencher)

## Aula 23

(a preencher)

-----------------------------------------------------------------

>Histórico de Atualizações

**13/10/2026**
- Update README.md - docs: README unidade 2: Com aulas 04 a 06 completa e atualização do histórico.

**11/10/2026**
- Porta 3024 no teste_seguranca.sh - aula05

**08/10/2026**
- feat: Prova03 - Concluída - implementa rotas de telemetria e scripts de auditoria

**06/10/2026**
- feat: conclusao de todos os laboratorios e exercicios da aula 23 - docker compose

**04/10/2026**
- Update README.md - docs: README completo com aulas 01 a 03 e historico de atualizacoes

**01/10/2026**
- feat: conclusao de todos os laboratorios e exercicios da aula 22 - docker
- feat: Mudanças do arquivo, tentando funcionar

**25/09/2026**
- feat: versionados os arquivos server.js, deploy.sh, package.json e automacao de deploy - aula21
- feat: atualiza versao da api para 1.0.1
- feat: conclusao e scripts de auditoria - aula20
- Aula 19 - Conclusão e término do exercícios 1 á 4 - Configuração PM2 e scripts

**24/09/2026**
- aula19: adiciona script persistir.sh e configuracoes
- Adicionando alterações

**17/09/2026**
- feat: Resolução da aula18, implementando codigos
- feat: entrega oficial da avaliacao pratica - aula18

**13/09/2026**
- feat: adiciona endpoint de token-teste e script de teste - aula17
- feat: conclusao e simulado de preparacao - aula17
- feat: adiciona script de auditoria de processos node - aula16

**11/09/2026**
- chore: adiciona .env ao gitignore e remove envs do rastreamento
- test: alteracao para validar sincronizacao

**10/09/2026**
- feat: configuracao e sincronizacao do servidor de aula - aula16
- Create README.md
- Troca de porta, de 3000 para 3024 (alteração da porta padrão da aplicação)

**09/09/2026**
- Adicionando aula14

**04/09/2026**
- Adicionando aula13
- Começando o arquivo package.json

**03/09/2026**
- Renomeia pasta aula2 para aula02
- Remove node_modules do controle de versao
- Remove node_modules do controle de versao e atualiza gitignore
- Iniciando o repositório do curso PBE1
