# Utiliser une image de base Node.js (ou Python selon ton projet)
FROM node:20

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers package.json et package-lock.json
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier le reste du projet
COPY . .

# Exposer le port de l'application
EXPOSE 3000

# Commande pour lancer l'application
CMD ["npm", "start"]
