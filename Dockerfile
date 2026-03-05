# 使用官方 OpenJDK 基础镜像（Java 17 或 21，根据你的项目选）
FROM openjdk:17-jdk-slim

# 设置工作目录
WORKDIR /app

# 复制 Maven 构建好的 jar 包（假设打包后在 target/）
COPY target/*.jar app.jar

# 暴露 8080 端口（Spring Boot 默认）
EXPOSE 8080

# 运行 jar 包
ENTRYPOINT ["java", "-jar", "app.jar"]