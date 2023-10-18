FROM node:14

WORKDIR /app

COPY package.json /app
RUN npm install

COPY . /app

EXPOSE 80

# this is anonymous Volume and it doesn't help us
# to solve the problem,that's why i comment it out!
# instead we have to create named volume in VSCode Terminal 
# and not here!
# VOLUME [ "/app/feedback" ]

CMD [ "node","server.js" ]