# Resumo Helm Chart e Kubernetes - Manipulação e Criação de Imagens no Docker

## Introdução
Este projeto é uma apostila prática que combina o uso de Helm Chart, Kubernetes e Docker. Ele aborda conceitos fundamentais, comandos essenciais e exemplos práticos para manipulação e criação de imagens, execução de containers, e gerenciamento de aplicações em clusters Kubernetes.

## Conceitos
- **Helm Chart**: Ferramenta para gerenciar pacotes Kubernetes, facilitando a implantação e configuração de aplicações.
- **Kubernetes**: Plataforma de orquestração de containers que gerencia a execução, escalabilidade e disponibilidade de aplicações em pods.

## Instalação
Para utilizar os exemplos desta apostila, siga os passos abaixo:
1. Instale o Docker:
           - [Docker Desktop](https://www.docker.com/products/docker-desktop) (Windows/Mac)
           - [Docker Engine](https://docs.docker.com/engine/install/) (Linux)
2. Instale o Helm:
           - [Helm Installation Guide](https://helm.sh/docs/intro/install/)
3. Configure o Kubernetes:
           - [Kubernetes Setup](https://kubernetes.io/docs/setup/)

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

### Helm Chart
- Instalar um chart no cluster Kubernetes:
```bash
          helm install <nome-release> <chart>
```
- Listar os releases instalados:
```bash
          helm list
```
- Remover um release do cluster:
```bash
          helm uninstall <nome-release>
```
- Atualizar um release existente:
```bash
          helm upgrade <nome-release> <chart>
```

### Kubernetes
- Listar os pods em execução:
```bash
          kubectl get pods
```
- Exibir detalhes de um pod:
```bash
          kubectl describe pod <nome-pod>
```
- Exibir os logs de um pod:
```bash
          kubectl logs <nome-pod>
```
- Aplicar um manifesto YAML para criar ou atualizar recursos:
```bash
          kubectl apply -f <arquivo.yaml>
```
- Remover recursos definidos em um manifesto YAML:
```bash
          kubectl delete -f <arquivo.yaml>
```

## Validação

### Exemplo de JSON para Testes
```json
        {
          "image": "nginx:latest",
          "commands": [
            "docker pull nginx:latest",
            "docker run -d --name meu-nginx nginx:latest",
            "docker stop meu-nginx",
            "docker rm meu-nginx",
            "docker build -t meu-nginx .",
            "docker run -d -p 8080:80 meu-nginx",
            "helm install meu-release bitnami/nginx",
            "kubectl apply -f deployment.yaml"
          ]
        }
```

## Exemplo Prático

### Criando e Executando Containers
1. **Baixar uma imagem**:
```bash
           docker pull nginx:latest
```
2. **Executar um container em segundo plano**:
```bash
           docker run -d --name meu-nginx nginx:latest
```
3. **Parar e remover o container**:
```bash
           docker stop meu-nginx
           docker rm meu-nginx
```

### Criando Imagens com Dockerfile
1. **Criar um Dockerfile**:
```dockerfile
           FROM nginx:latest
           COPY . /usr/share/nginx/html
```
2. **Construir a imagem**:
```bash
           docker build -t meu-nginx .
```
3. **Executar a imagem como container**:
```bash
           docker run -d -p 8080:80 meu-nginx
```

### Usando Helm Chart
1. **Instalar um chart**:
```bash
           helm install meu-release bitnami/nginx
```
2. **Listar releases instalados**:
```bash
           helm list
```
3. **Atualizar um release**:
```bash
           helm upgrade meu-release bitnami/nginx
```
4. **Remover um release**:
```bash
           helm uninstall meu-release
```

### Usando Kubernetes
1. **Criar recursos com YAML**:
```bash
           kubectl apply -f deployment.yaml
```
2. **Listar pods**:
```bash
           kubectl get pods
```
3. **Exibir logs de um pod**:
```bash
           kubectl logs <nome-pod>
```
4. **Remover recursos com YAML**:
```bash
           kubectl delete -f deployment.yaml
```