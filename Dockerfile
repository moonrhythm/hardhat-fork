FROM node:16

WORKDIR /usr/src/app

RUN npm init -y
RUN npm install --save-dev hardhat
ADD fork.sh ./

EXPOSE 8545
CMD [ "sh", "-c", "/usr/src/app/fork.sh" ]
