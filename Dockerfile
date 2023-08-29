# JREのみのものだとtools.jarがないのでJDKを採用
FROM amazoncorretto:8u382-alpine3.18

# バージョン依存の箇所は適宜調整
ENV JAVA_HOME /usr/lib/jvm/java-8-amazon-corretto

WORKDIR /app
CMD ./gradlew bootRun