# 🐧 Infraestrutura como Código: Script de Provisionamento

Este projeto faz parte do desafio da **DIO (Digital Innovation One)**, focado em **Infraestrutura como Código (IaC)** no ambiente Linux.

O objetivo foi criar um script em Bash para automatizar a criação de usuários, diretórios e grupos, definindo permissões de forma massiva e segura, eliminando processos manuais.

## ⚙️ Definições do Projeto

O script realiza as seguintes configurações automaticamente no sistema operacional:

### 1. Limpeza de Ambiente
* Exclusão de diretórios, arquivos, grupos e usuários criados anteriormente para garantir uma execução limpa.

### 2. Criação de Diretórios
Foram criados os seguintes diretórios na raiz do sistema:
* `/publico` (Acesso livre para todos os usuários)
* `/adm` (Administração)
* `/ven` (Vendas)
* `/sec` (Secretariado)

### 3. Grupos de Usuários
Criação dos grupos para separar permissões por departamento:
* `GRP_ADM`
* `GRP_VEN`
* `GRP_SEC`

### 4. Criação de Usuários
Os usuários foram criados e atribuídos aos seus respectivos grupos:

| Usuário | Grupo | Departamento |
|---|---|---|
| carlos | GRP_ADM | Administração |
| maria | GRP_ADM | Administração |
| joao | GRP_ADM | Administração |
