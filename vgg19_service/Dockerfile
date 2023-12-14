# Utilisez une image de base
FROM python:3.8

# Définissez le répertoire de travail
WORKDIR /app

# Copiez les fichiers nécessaires dans l'image
COPY ./requirements.txt /app/requirements.txt
COPY ./app /app

# Installez les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Exposez le port utilisé par Flask
EXPOSE 5000

# Commande par défaut pour exécuter l'application Flask
CMD ["python", "vgg19_service.py"]
