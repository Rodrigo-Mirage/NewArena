FROM node:10

WORKDIR /usr/src/app

# Copy NodeCG (just the files we need)
RUN mkdir cfg && mkdir bundles && mkdir logs && mkdir db
COPY . /usr/src/app/

# Install dependencies
RUN npm install --production
RUN npm run build
# The command to run
EXPOSE 5555
CMD ["node", "index.js"]
