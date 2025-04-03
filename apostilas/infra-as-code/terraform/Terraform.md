# Apostila Terraform e Plugins de Infraestrutura

## Introdução
Esta apostila aborda o uso do Terraform e Plugins de Infraestrutura para provisionar e gerenciar recursos de forma eficiente. O Terraform é uma ferramenta de IaC (Infrastructure as Code) amplamente utilizada, enquanto os Plugins de Infraestrutura são extensões baseadas em Terraform que facilitam a criação e o gerenciamento de recursos específicos.

## Conceitos
- **Terraform**: Ferramenta IaC para provisionar e gerenciar infraestrutura de maneira declarativa.
- **Plugins de Infraestrutura**: Extensões baseadas em Terraform que permitem criar e gerenciar recursos específicos de forma modular e reutilizável.

## Instalação
Para utilizar os comandos e exemplos desta apostila, siga os passos abaixo:
        1. Instale o Terraform: [Guia de Instalação do Terraform](https://developer.hashicorp.com/terraform/tutorials)
        2. Instale o STK CLI: [Guia de Instalação do STK CLI](https://docs.stackspot.com/home/stk-cli/install/)

## Uso

### Comandos Essenciais
- **Login no STK CLI**:
```bash
          stk login
```
- **Criar um Plugin de Infraestrutura**:
```bash
          stk create plugin
```
- **Criar uma Infraestrutura**:
```bash
          stk create infra
```
- **Fazer o Deploy da Infraestrutura**:
```bash
          stk deploy infra
```

## Exemplo Prático

### 1. Gerar um Plugin de Infraestrutura
- Utilize o comando abaixo para criar um Plugin de Infraestrutura baseado em arquivos Terraform existentes:
```bash
          stk create plugin
```
- O comando extrai variáveis e valores locais dos arquivos Terraform para criar inputs no Plugin.

### 2. Criar uma Infraestrutura
- Crie um diretório vazio para o projeto:
```bash
          mkdir demo-infra
```
- Acesse o diretório:
```bash
          cd demo-infra
```
- Registre e aplique os Plugins de Infraestrutura necessários.

### 3. Fazer o Deploy da Infraestrutura
- Execute o comando abaixo para realizar o deploy da infraestrutura:
```bash
          stk deploy infra
```

## Validação

### Exemplo de JSON para Testes
```json
        {
          "plugin": "my-infra-plugin",
          "commands": [
            "stk create plugin",
            "stk create infra",
            "stk deploy infra"
          ],
          "terraform": {
            "variables": {
              "region": "us-east-1",
              "instance_type": "t2.micro"
            }
          }
        }
```