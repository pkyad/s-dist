FROM debian:bullseye-slim
RUN apt update
RUN apt install curl -y
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" -y
RUN echo "zsh" >> ~/.bashrc 

# install nodejs
RUN sh -c "$(curl -fsSL https://deb.nodesource.com/setup_current.x)" -y
RUN apt install nodejs -y
RUN npm install -g yarn

# install python
RUN apt install python3 python3-pip -y


WORKDIR /workspace


# install dependencies
RUN apt install python3-dev default-libmysqlclient-dev build-essential pkg-config -y
RUN apt install libpq-dev -y
COPY requirements.txt .
RUN pip install -r requirements.txt
