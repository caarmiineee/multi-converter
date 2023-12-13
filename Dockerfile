# Usa un'immagine di base con Node.js
FROM node:14

# Imposta la directory di lavoro all'interno del contenitore
WORKDIR /usr/src/app

# Copia i file del progetto nell'immagine
COPY package*.json ./

# Installa le dipendenze
RUN npm install

# Copia tutti i file nell'immagine (escludendo quelli elencati in .dockerignore)
COPY . .

# Comando per avviare l'app Angular sulla porta 4200
CMD ["npm", "start", "--", "--host", "0.0.0.0", "--port", "4200"]
