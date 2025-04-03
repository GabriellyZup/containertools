# Apostila Container Runtimes - Manipulação e Criação de Imagens no Docker

## Introdução
Este projeto é uma apostila prática que aborda os conceitos fundamentais de container runtimes, com foco no Docker. Ele inclui instruções para manipulação e criação de imagens, execução de containers e exemplos práticos para facilitar o aprendizado.

## Instalação
Para utilizar os exemplos desta apostila, você precisará instalar o Docker. Siga os passos abaixo:

1. Baixe e instale o Docker:
           - [Docker Desktop](https://www.docker.com/products/docker-desktop) (Windows/Mac)
           - [Docker Engine](https://docs.docker.com/engine/install/) (Linux)
2. Verifique a instalação:
```bash
           docker --version
```

## Uso
### Manipulação de Imagens
- Listar imagens disponíveis localmente:
```bash
          docker images
```
- Baixar uma imagem de um registry:
```bash
          docker pull <imagem>:<tag>
```
- Remover uma imagem local:
```bash
          docker rmi <imagem>
```

### Criação de Imagens
- Construir uma imagem a partir de um Dockerfile:
```bash
          docker build -t <nome-imagem> .
```

### Execução de Containers
- Executar um container interativo e removê-lo após a execução:
```bash
          docker run -it --rm <imagem>
```
- Executar um container em segundo plano:
```bash
          docker run -d --name <nome-container> <imagem>
```
- Listar containers em execução:
```bash
          docker ps
```
- Listar todos os containers (ativos e parados):
```bash
          docker ps -a
```
- Parar um container em execução:
```bash
          docker stop <container_id>
```
- Remover um container parado:
```bash
          docker rm <container_id>
```
- Remover todos os containers inativos:
```bash
        docker container prune
```

### Acessando e Monitorando Containers
- Executar comandos dentro de um container em execução:
```bash
         docker exec -it <container> <comando>
```
- Exibir os logs de um container:
```bash
          docker logs <container>
 ```
- Monitorar os processos dentro de um container:
```bash
          docker top <container>
```

## Validação
### Exemplo de JSON para Testes
```json
        {
          "image": "alpine:3.14",
          "commands": [
            "docker pull alpine:3.14",
            "docker run -it --rm alpine:3.14 echo 'Hello World'",
            "docker run -d --name meu-container alpine:3.14 sleep 300",
            "docker exec -it meu-container sh",
            "docker stop meu-container",
            "docker rm meu-container"
          ]
        }
```

## Exemplo Prático
### Criando e Executando Containers
1. **Baixar uma imagem**:
```bash
           docker pull alpine:3.14
```
2. **Executar um container interativo**:
```bash
           docker run -it --rm alpine:3.14 echo "Hello World"
```
3. **Executar um container em segundo plano**:
```bash
          docker run -d --name meu-container alpine:3.14 sleep 300
```
4. **Acessar o terminal do container**:
```bash
           docker exec -it meu-container sh
```
5. **Parar e remover o container**:
```bash
           docker stop meu-container
           docker rm meu-container
```

### Criando Imagens com Dockerfile
1. **Criar um Dockerfile**:
```dockerfile
           FROM alpine:3.14
           CMD ["echo", "Eu sou uma pessoa estudante!"]
```
2. **Construir a imagem**:
```bash
           docker build -t primeira-imagem .
```
3. **Executar a imagem como container**:
```bash
           docker run primeira-imagem
```

