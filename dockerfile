FROM nginx:alpine

# Copia o index.html para o diretório do NGINX
COPY index.html /usr/share/nginx/html/index.html

# Ajusta o NGINX para escutar na porta 8080 (necessário em alguns hosts)
RUN sed -i 's/listen       80;/listen       8080;/' /etc/nginx/conf.d/default.conf

# Expõe a porta 8080
EXPOSE 8080
