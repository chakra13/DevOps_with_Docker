# Utilisez l'image Docker officielle
FROM docker:latest

# Installez git
RUN apk add --no-cache git

# Copiez le script dans l'image Docker
COPY builder.sh /usr/local/bin/builder.sh

# Rendez le script exécutable
RUN chmod +x /usr/local/bin/builder.sh

# Définissez le point d'entrée pour exécuter le script
ENTRYPOINT ["/usr/local/bin/builder.sh"]
