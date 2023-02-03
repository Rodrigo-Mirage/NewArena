FROM node:10

WORKDIR /usr/src/app

# Copy NodeCG (just the files we need)
RUN mkdir cfg && mkdir bundles && mkdir logs && mkdir db
COPY . /usr/src/app/

# Install dependencies
RUN npm install --production
RUN gulp && nodecg install https://github.com/Rodrigo-Mirage/arena-mh
# The command to run
EXPOSE 9090
CMD ["node", "index.js"]
