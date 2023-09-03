# JREのみのものだとtools.jarがないのでJDKを採用
FROM amazoncorretto:8u382

# バージョン依存の箇所は適宜調整
ENV JAVA_HOME /usr/lib/jvm/java-8-amazon-corretto

WORKDIR /app
RUN yum update && \
    yum install -y tar && \
    yum install -y java-17-amazon-corretto
#RUN wget -O /etc/apk/keys/amazoncorretto.rsa.pub  https://apk.corretto.aws/amazoncorretto.rsa.pub && \
#    echo "https://apk.corretto.aws/" >> /etc/apk/repositories && \
#    apk update
#RUN apk add amazon-corretto-17