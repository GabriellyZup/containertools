# Apostila StackSpot EDP - Manipulação e Criação de Imagens no Docker

## Introdução
Este projeto é uma apostila prática que combina o uso da plataforma StackSpot EDP e do Docker. Ele aborda conceitos fundamentais, comandos essenciais e exemplos práticos para manipulação e criação de imagens, execução de containers e gerenciamento de volumes.

## Conceitos
- **StackSpot EDP**: Plataforma para padronizar, acelerar e escalar o desenvolvimento de software, permitindo criar aplicações e infraestruturas com qualidade e eficiência.
- **Docker**: Ferramenta para criar, distribuir e executar aplicações em containers, utilizando imagens como base.

## Instalação
Para utilizar os exemplos desta apostila, siga os passos abaixo:
        1. Instale o Docker:
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
- Executar um container em segundo plano:
```bash
          docker run -d -p <porta-host>:<porta-container> <imagem>
```
- Listar containers em execução:
```bash
          docker ps
```
- Parar um container em execução:
```bash
          docker stop <container_id>
```
- Remover um container parado:
```bash
          docker rm <container_id>
```

### Gerenciamento de Volumes
- Criar um volume:
```bash
          docker volume create <nome-volume>
```
- Listar volumes disponíveis:
```bash
          docker volume ls
```
- Remover um volume:
```bash
          docker volume rm <nome-volume>
```

### Limpeza de Recursos
- Remover containers, imagens e volumes não utilizados:
```bash
          docker system prune -af
```

## Validação

### Exemplo de JSON para Testes
```json
        {
          "image": "alpine:3.14",
          "commands": [
            "docker pull alpine:3.14",
            "docker run --rm alpine:3.14 echo 'Hello World'",
            "docker build -t minha-imagem .",
            "docker run -d -v meu-volume:/data alpine",
            "docker volume rm meu-volume"
          ]
        }
```

## Exemplo Prático

### Criando e Executando Containers
1. **Criar um Dockerfile**:
```dockerfile
           FROM alpine:3.14
           CMD ["echo", "Eu sou uma pessoa estudante!"]
```
2. **Construir a imagem**:
```bash
           docker build -t minha-imagem .
```
3. **Executar o container**:
```bash
          docker run --rm minha-imagem
```

### Gerenciando Volumes
1. **Criar um volume**:
```bash
           docker volume create meu-volume
```
2. **Executar um container com volume**:
```bash
           docker run -d -v meu-volume:/data alpine
```
3. **Remover o volume**:
```bash
           docker volume rm meu-volume
```

