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

### Grupo A: Ambiente, processos e comandos básicos Linux

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
### Grupo B: Gerenciamento de dependências e pacotes

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
### Grupo C: Testes de requisição e manipulação de JSON

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

> Obs: o servidor usa a porta **3024** (e não a 3001 do roteiro da aula), porque cada um tem a sua própria porta.

> Obs: os testes desta aula foram feitos no servidor da sala (`genesis`), acessado por SSH. Como todo mundo usa o mesmo servidor, tem muito `node` rodando de outras pessoas. Por isso é importante olhar o **usuário** antes de matar um processo.

### Objetivos da aula

- Testar endpoints HTTP pela linha de comando com `curl` e `httpie`
- Formatar e filtrar JSON com o `jq`
- Diferenciar `apt` (pacotes do sistema) e `npm` (pacotes do Node)
- Criar e rodar scripts Bash (`.sh`) para testar as rotas de telemetria das montadoras

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

O `&` faz o servidor rodar em segundo plano, e o terminal fica livre para os testes.

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
- Sempre usar aspas simples no filtro do `jq`

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
| `killall node` | Encerra todos os `node` meus |
| `jobs` | Lista os processos em segundo plano deste terminal |
| `ss -tulnp \| grep 3024` | Mostra quem está usando a porta 3024 |
| `pm2 list` / `pm2 delete all` | Lista / apaga os processos do PM2 |

-----------------------------------------------------------------

Passo 1 — Criar o diretório e iniciar o projeto

mkdir -p ~/curso-pbe1/binario_tech/prova_aula03
cd ~/curso-pbe1/binario_tech/prova_aula03


npm init -y
npm install express




Passo 2 — Criar o servidor telemetria.js (Porta 3024)



cat << 'EOF' > telemetria.js
const express = require('express');
const app = express();
const PORT = 3024;

app.get('/api/v1/scania', (req, res) => {
    res.json({ montadora: "Scania", modelo: "R 540", status: "OK", conexao: true, velocidade_media: 80 });
});

app.get('/api/v1/mercedes', (req, res) => {
    res.json({ montadora: "Mercedes-Benz", modelo: "Actros 2651", status: "MANUTENCAO", conexao: true, velocidade_media: 65 });
});

app.get('/api/v1/vw', (req, res) => {
    res.json({ montadora: "Volkswagen", modelo: "Constellation 24.280", status: "OK", conexao: true, velocidade_media: 70 });
});

app.get('/api/v1/volvo', (req, res) => {
    res.json({ montadora: "Volvo", modelo: "FH 540", status: "ALERTA", conexao: false, velocidade_media: 0 });
});

app.listen(PORT, () => {
    console.log(`Servidor de telemetria rodando na porta ${PORT}`);
});
EOF


node telemetria.js > servidor.log 2>&1 &


Passo 3 — Requisição e salvamento do JSON da Mercedes

http GET http://localhost:3024/api/v1/mercedes > mercedes.json


Passo 4 — Executar filtros com jq


curl -s http://localhost:3024/api/v1/scania | jq '.modelo'

jq '.status' mercedes.json


curl -s http://localhost:3024/api/v1/vw | jq '{montadora: .montadora, status: .status}'


Passo 5 — Script de automação e geração de log (Porta 3024)


cat << 'EOF' > testar_telemetria.sh
#!/bin/bash
echo "=== AUDITORIA DE TELEMETRIA ==="
echo "-------------------------------"
echo "1. SCANIA:"
curl -s http://localhost:3024/api/v1/scania | jq .
echo "-------------------------------"
echo "2. MERCEDES:"
curl -s http://localhost:3024/api/v1/mercedes | jq .
echo "-------------------------------"
echo "3. VW:"
curl -s http://localhost:3024/api/v1/vw | jq .
echo "-------------------------------"
echo "4. VOLVO:"
curl -s http://localhost:3024/api/v1/volvo | jq .
echo "==============================="
EOF


chmod +x testar_telemetria.sh
./testar_telemetria.sh > relatorio.log
cat relatorio.log


node -e "const fs = require('fs'); const pkg = JSON.parse(fs.readFileSync('package.json')); pkg.scripts = { start: 'node telemetria.js' }; fs.writeFileSync('package.json', JSON.stringify(pkg, null, 2));"


ps aux | grep "node telemetria.js"

kill -9 NUMERO_DO_PID

git add .
git commit -m "feat: implementa rotas de telemetria e scripts de auditoria"
git push origin main




ouuu



1. CRIAR O PROJETO
Entre no diretório do projeto:
cd ~/binario_tech
Crie a pasta da prova:
mkdir -p prova_aula03
cd prova_aula03
Confira o diretório:
pwd
2. CONFIGURAR O NODE.JS
Inicialize o projeto:
npm init -y
Instale o Express:
npm install express
Instale jq e httpie:
sudo apt-get update
sudo apt-get install -y jq httpie
Confira as instalações:
jq --version
http --version
3. CRIAR O SERVIDOR
Crie:
nano telemetria.js
telemetria.js — arquivo completo
const express = require("express");

const app = express();
const PORT = 3001;

app.use(express.json());

app.get("/api/v1/scania", (req, res) => {
    res.json({
        montadora: "Scania",
        modelo: "R450",
        status: "OK",
        conexao: true,
        velocidade_media: 82
    });
});

app.get("/api/v1/mercedes", (req, res) => {
    res.json({
        montadora: "Mercedes-Benz",
        modelo: "Actros",
        status: "OK",
        conexao: true,
        velocidade_media: 78
    });
});

app.get("/api/v1/vw", (req, res) => {
    res.json({
        montadora: "Volkswagen",
        modelo: "Delivery",
        status: "ALERTA",
        conexao: false,
        velocidade_media: 0
    });
});

app.listen(PORT, () => {
    console.log(`Servidor de telemetria rodando na porta ${PORT}`);
});
Salve:
CTRL + O
ENTER
CTRL + X
4. EXECUTAR O SERVIDOR
Execute em segundo plano:
node telemetria.js &
A aplicação utiliza a porta:
3001
5. TESTAR AS ROTAS EXISTENTES
Scania
curl -s http://localhost:3001/api/v1/scania | jq .
Deve retornar:
{
  "montadora": "Scania",
  "modelo": "R450",
  "status": "OK",
  "conexao": true,
  "velocidade_media": 82
}
Mercedes-Benz
curl -s http://localhost:3001/api/v1/mercedes | jq .
Deve retornar:
{
  "montadora": "Mercedes-Benz",
  "modelo": "Actros",
  "status": "OK",
  "conexao": true,
  "velocidade_media": 78
}
Volkswagen
curl -s http://localhost:3001/api/v1/vw | jq .
Deve retornar:
{
  "montadora": "Volkswagen",
  "modelo": "Delivery",
  "status": "ALERTA",
  "conexao": false,
  "velocidade_media": 0
}
6. ADICIONAR A ROTA VOLVO
A prova exige uma quarta rota:
/api/v1/volvo
Dados da Volvo:
montadora: Volvo
modelo: FH 540
status: ALERTA
conexao: false
velocidade_media: 0
Antes de reiniciar, encerre o servidor atual:
ps aux | grep node
Encontre o PID de:
node telemetria.js
Encerre:
kill -9 PID
Agora edite:
nano telemetria.js
telemetria.js — arquivo completo atualizado
const express = require("express");

const app = express();
const PORT = 3001;

app.use(express.json());

app.get("/api/v1/scania", (req, res) => {
    res.json({
        montadora: "Scania",
        modelo: "R450",
        status: "OK",
        conexao: true,
        velocidade_media: 82
    });
});

app.get("/api/v1/mercedes", (req, res) => {
    res.json({
        montadora: "Mercedes-Benz",
        modelo: "Actros",
        status: "OK",
        conexao: true,
        velocidade_media: 78
    });
});

app.get("/api/v1/vw", (req, res) => {
    res.json({
        montadora: "Volkswagen",
        modelo: "Delivery",
        status: "ALERTA",
        conexao: false,
        velocidade_media: 0
    });
});

app.get("/api/v1/volvo", (req, res) => {
    res.json({
        montadora: "Volvo",
        modelo: "FH 540",
        status: "ALERTA",
        conexao: false,
        velocidade_media: 0
    });
});

app.listen(PORT, () => {
    console.log(`Servidor de telemetria rodando na porta ${PORT}`);
});
Salve o arquivo.
Inicie novamente:
node telemetria.js &
Teste a nova rota:
curl -s http://localhost:3001/api/v1/volvo | jq .
7. TESTAR HTTPie E CRIAR mercedes.json
Faça uma requisição para Mercedes usando HTTPie:
http GET http://localhost:3001/api/v1/mercedes > mercedes.json
Confira:
cat mercedes.json
Visualize formatado:
cat mercedes.json | jq .
O arquivo mercedes.json deve conter os dados da rota Mercedes.
8. USAR jq PARA FILTRAR OS DADOS
Scania — somente modelo
curl -s http://localhost:3001/api/v1/scania | jq '.modelo'
Resultado:
"R450"
Mercedes — somente status
jq '.status' mercedes.json
Resultado:
"OK"
Volkswagen — somente montadora e status
curl -s http://localhost:3001/api/v1/vw | jq '{montadora, status}'
Resultado:
{
  "montadora": "Volkswagen",
  "status": "ALERTA"
}
9. CRIAR O SCRIPT DE TELEMETRIA
Crie:
nano testar_telemetria.sh
testar_telemetria.sh — arquivo completo
#!/bin/bash

echo "========================================="
echo "  AUDITORIA DE TELEMETRIA - BINARIO TECH "
echo "  Data/Hora: $(date)"
echo "========================================="

echo -e "\n[1] Testando Rota Scania..."
curl -s http://localhost:3001/api/v1/scania | jq .

echo -e "\n[2] Testando Rota Mercedes-Benz..."
curl -s http://localhost:3001/api/v1/mercedes | jq .

echo -e "\n[3] Testando Rota Volkswagen..."
curl -s http://localhost:3001/api/v1/vw | jq .

echo -e "\n[4] Testando Rota Volvo..."
curl -s http://localhost:3001/api/v1/volvo | jq .

echo -e "\n-----------------------------------------"
echo "Auditoria finalizada com sucesso!"
Dê permissão:
chmod +x testar_telemetria.sh
Confira:
ls -l testar_telemetria.sh
Execute:
./testar_telemetria.sh
10. CRIAR O relatorio.log
Salve toda a saída do script:
./testar_telemetria.sh > relatorio.log
Confira o conteúdo:
cat relatorio.log
Confira o arquivo:
ls -l relatorio.log
O relatorio.log deve conter a execução das quatro rotas.
11. CONFIGURAR O package.json
Abra:
nano package.json
O arquivo precisa possuir o script:
"start": "node telemetria.js"
O package.json completo deverá manter as informações geradas pelo npm e ficar semelhante a:
{
  "name": "prova_aula03",
  "version": "1.0.0",
  "description": "",
  "main": "index.js",
  "scripts": {
    "start": "node telemetria.js",
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "keywords": [],
  "author": "",
  "license": "ISC",
  "dependencies": {
    "express": "^5.1.0"
  }
}
Se o npm instalou outra versão do Express, mantenha a versão que já estiver no seu arquivo.
O importante é possuir:
"start": "node telemetria.js"
12. TESTAR npm start
Se o servidor estiver rodando, localize:
ps aux | grep node
Encerre:
kill -9 PID
Execute:
npm start
Deve aparecer:
Servidor de telemetria rodando na porta 3001
Para parar:
CTRL + C
13. IDENTIFICAR E ENCERRAR O PROCESSO
Execute:
node telemetria.js &
Procure o processo:
ps aux | grep node
Localize:
node telemetria.js
Pegue o PID e execute:
kill -9 PID
Confirme:
ps aux | grep node
14. CONFERIR OS ARQUIVOS
Execute:
ls -la
A pasta deverá possuir os principais arquivos:
mercedes.json
package.json
package-lock.json
relatorio.log
telemetria.js
testar_telemetria.sh
15. GIT
Confira o status:
git status
Confira a branch:
git branch
A prova deve ser entregue na:
main
Adicione os arquivos:
git add telemetria.js mercedes.json testar_telemetria.sh relatorio.log package.json package-lock.json
Confira:
git status
Faça o commit:
git commit -m "prova pratica aula 03"
Atualize o repositório:
git pull origin main
Envie para o GitHub:
git push origin main
16. O QUE PRECISA ESTAR PRONTO
API
A aplicação deve possuir:
GET /api/v1/scania
GET /api/v1/mercedes
GET /api/v1/vw
GET /api/v1/volvo
Porta:
3001
Arquivos
Você precisa ter:
prova_aula03/
├── telemetria.js
├── testar_telemetria.sh
├── mercedes.json
├── relatorio.log
├── package.json
└── package-lock.json
Comandos que precisam funcionar
curl -s http://localhost:3001/api/v1/scania | jq '.modelo'
http GET http://localhost:3001/api/v1/mercedes > mercedes.json
jq '.status' mercedes.json
curl -s http://localhost:3001/api/v1/vw | jq '{montadora, status}'
curl -s http://localhost:3001/api/v1/volvo | jq .
./testar_telemetria.sh
./testar_telemetria.sh > relatorio.log
npm start
ps aux | grep node
kill -9 PID
git push origin main


-----------------------------------------------------------------

# UNIDADE 2: WEB SERVICES E ESTRUTURACAO DE DADOS

Aulas 04, 05 e 06

>Em desenvolvimento do Readme⚠️

## Aula 04

(a preencher)

## Aula 05

(a preencher)

## Aula 06

(a preencher)

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
