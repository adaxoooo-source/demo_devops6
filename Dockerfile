# Étape 1: choisir l'image Node.js
FROM node:18-alpine

# Étape 2: créer un dossier de travail
WORKDIR /app

# Étape 3: copier package.json et installer les dépendances
COPY app/package*.json ./
RUN npm install

# Étape 4: copier tout le code
COPY app/ ./

# Étape 5: exposer le port
EXPOSE 3000

# Étape 6: démarrer l'application
CMD ["npm", "start"]
