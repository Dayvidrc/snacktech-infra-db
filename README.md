# Snack Tech - Terraform AWS RDS SQL Server
Provisionamento de uma instância SQL Server no Amazon RDS utilizando Terraform.

---

## 📑 Conteúdo
- [🎯 Objetivo do Projeto](#objetivo-do-projeto)
- [📊 Motivos para a escolha de um banco de dados relacional](#motivos-para-a-escolha-de-um-banco-de-dados-relacional)
- [🛠 Pré-requisitos](#pré-requisitos)
- [⚙ Configuração/Instalação](#configura%C3%A7%C3%A3oinstala%C3%A7%C3%A3o)
- [🚀 Como usar](#como-usar)

---

## 🎯 Objetivo do Projeto

Este repositório contém scripts Terraform responsáveis por criar uma instância SQL Server no **Amazon RDS**, configurando-a para atender as necessidades de aplicações corporativas com alta disponibilidade e segurança.

Os scripts Terraform irão configurar:

- Instância RDS com SQL Server.
- Configurações básicas de rede e segurança.
- Parâmetros padrão seguros para uso.

---

## 📊 Motivos para a escolha de um banco de dados relacional

A decisão de utilizar um banco de dados relacional como **SQL Server no Amazon RDS**, em vez de um banco de dados não relacional, foi estratégica devido às necessidades do projeto Snack Tech. Veja os principais motivos:

### 1️⃣ Estrutura de Dados Bem Definida
Os bancos de dados relacionais utilizam esquemas rigorosos (tabelas com colunas e tipos de dados definidos), o que garante consistência e organização dos dados. Eles são ideais para dados com estrutura clara e fixa como por exemplo as tabelas de Cliente, Pedido e PedidoItem.

---

### 2️⃣ Suporte a Transações ACID
Os bancos relacionais possuem suporte nativo a transações que seguem o padrão **ACID** (*Atomicidade, Consistência, Isolamento e Durabilidade*), o que garante operações seguras mesmo em caso de falha.

---

### 3️⃣ Consultas Complexas com SQL
Os bancos relacionais oferecem capacidades avançadas através da linguagem **SQL**, permitindo realizar operações como junções, agregações e análises de dados complexos. Dessa forma, fica favorável a extração de relatórios como por exemplo:
- Relatório de vendas diárias
- Relatório de combos mais vendidos
- Relatório de produtos mais vendidos

---

### 4️⃣ Integridade Referencial
Bancos relacionais possuem mecanismos nativos para garantir **integridade referencial**, como chaves primárias e estrangeiras, evitando entradas inválidas no banco.

---

### 5️⃣ Segurança e Controle de Acesso
Bancos relacionais oferecem controle detalhado de permissões, permitindo segmentar usuários que podem apenas ler dados ou realizar atualizações.

---

### 6️⃣ Ferramentas e Ecossistema Maduras
Os bancos relacionais possuem ferramentas maduras de monitoramento, administração e backup, facilitando a manutenção do ambiente.

---
### Conclusão

A decisão de usar um banco de dados relacional, como SQL Server no Amazon RDS, se baseia em:

- Necessidade de garantir consistência e integridade dos dados.
- Suporte a transações críticas.
- Estrutura de dados bem definida e complexidade de relacionamentos.
- Capacidade de realizar consultas avançadas com SQL.
- Garantia de segurança por meio de controle de acesso robusto.
- Uso de práticas comprovadas com um ecossistema maduro.

Com essas informações, o projeto está alinhado a práticas que priorizam confiabilidade, escalabilidade e segurança no longo prazo.

---

## 🛠 Pré-requisitos

Antes de começar, você deve ter o seguinte:

1. **AWS CLI configurado** com as credenciais da sua conta.
   - Instalação: [Documentação AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)
   - Configure com `aws configure`.
2. **Terraform instalado** no seu ambiente.
   - Instalação: [Documentação Terraform](https://www.terraform.io/downloads)
3. Acesso à conta AWS com permissões adequadas para provisionar recursos do RDS.

---

## ⚙ Configuração/Instalação

1. Clone o repositório:
   ```bash
   git clone <URL_REPOSITÓRIO>
   cd <NOME_DA_PASTA>
   
2. Configure suas credenciais AWS com aws configure caso ainda não tenha feito.
3. Inicialize o Terraform (Informar os parametros do backend):
   ```bash
   terraform init -backend-config="bucket=snacktech-backend-tfstate" -backend-config="key=rds/terraform.tfstate" -backend-config="region=us-east-1"

4. Verifique o que será alterado no ambiente antes de aplicar:
   ```bash
   terraform plan -out=tfplan

5. Para criar os recursos no AWS:
   ```bash
   terraform apply -auto-approve tfplan

---

## 🚀 Como usar

Após a execução com sucesso de `terraform apply`, a instância SQL Server estará disponível.

Você pode acessar a instância utilizando as credenciais configuradas no script Terraform (`username`, `password`) e conectando-se pela URL do RDS.

Exemplo de conexão:

```sql
Server=<RDS_ENDPOINT>,1433;Database=<DB_NAME>;User Id=<USERNAME>;Password=<PASSWORD>;

---

## Equipe

* Adriano de Melo Costa. Email: adriano.dmcosta@gmail.com
* Rafael Duarte Gervásio da Silva. Email: rafael.dgs.1993@gmail.com
* Guilherme Felipe de Souza. Email: gui240799@outlook.com
* Dayvid Ribeiro Correia. Email: dayvidrc@gmail.com
