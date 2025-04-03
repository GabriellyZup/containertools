# Estágio de Build: Compila a aplicação Java com Maven
FROM maven:3.8.6-openjdk-17 AS builder

# Define o diretório de trabalho
WORKDIR /app

# Copia o arquivo de dependências
COPY pom.xml .

# Resolve as dependências (cacheável)
RUN mvn dependency:go-offline

# Copia o código-fonte
COPY src ./src

# Compila o projeto e gera o JAR
RUN mvn clean package -DskipTests

# ---
# Estágio Final: Imagem otimizada para produção
FROM openjdk:17-alpine

# Define o diretório de trabalho
WORKDIR /app

# Copia o JAR do estágio de build
COPY --from=builder /app/target/*.jar app.jar

# Executa a aplicação
ENTRYPOINT ["java", "-jar", "app.jar"]