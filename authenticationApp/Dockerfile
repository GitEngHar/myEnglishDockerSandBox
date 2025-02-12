# Java build Base Image
FROM eclipse-temurin

# 作業ディレクトリを設定
WORKDIR /app

# Buildするjarをコピー
COPY ./app/SnsAuthenticationApp-0.0.1-SNAPSHOT.jar app.jar

# portを設定
EXPOSE 8080

# 環境変数を設定(検証用)
# ENV REDIRECT_URI=hogepoge

# jarの起動
ENTRYPOINT ["java", "-jar", "app.jar"]

# docker build . --platform linux/amd64
# docker run -d --rm -p 8080:8080 e577413bc30d