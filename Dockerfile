FROM ubuntu:18.04

ARG ARG_FINAL_NAME
ENV env_final_name=${ARG_FINAL_NAME}

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install openjdk-11-jre-headless tzdata -y && ln -fs /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime && dpkg-reconfigure -f noninteractive tzdata

RUN mkdir -p /usr/local/${env_final_name}

ADD target/${env_final_name}.jar /usr/local/${env_final_name}/

RUN chown -R www-data:www-data /usr/local/${env_final_name}

USER www-data

CMD ["sh", "-c", "/usr/local/${env_final_name}/${env_final_name}.jar"]
