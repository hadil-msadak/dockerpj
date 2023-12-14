# Utilisez une image de base
FROM python:3.8

# Définissez le répertoire de travail
WORKDIR /app

# Copiez les fichiers nécessaires dans l'image
COPY ./test /app/test
COPY ./vgg19_service /app/vgg19_service
COPY ./requirements.txt /app/requirements.txt

# Installez les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Exposez les ports utilisés par les services
EXPOSE 5000
EXPOSE 5001

# Commande par défaut pour exécuter les deux services
CMD ["sh", "-c", "python /app/test/svm_service.py & python /app/vgg19_service/vgg19_service.py"]

