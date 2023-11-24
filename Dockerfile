# Utiliser une image de base officielle
FROM ubuntu:latest

# Définir le répertoire de travail
WORKDIR /Documents/Docker

# Copier le contenu du répertoire actuel dans le conteneur sous /app
COPY . /Documents/Docker

# Installer les paquets nécessaires spécifiés dans requirements.txt
RUN apt-get update && \
    apt-get install -y python3

# Définir une variable d'environnement
ENV NAME World

# Exécuter la commande lorsque le conteneur démarre
CMD ["python3", "app.py"]
