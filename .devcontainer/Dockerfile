FROM library/node:lts-bookworm

RUN apt update
RUN apt install zsh -y
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true
RUN echo "zsh" >> ~/.bashrc 

RUN apt install openjdk-17-jre-headless -y
RUN npm install @openapitools/openapi-generator-cli -g