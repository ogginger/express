from ubuntu:latest

run apt-get update && apt-get install -y curl \
  git \
  vim

run curl -sL https://deb.nodesource.com/setup_10.x | bash -

run apt-get install -y nodejs

run git config --global user.email og.ginger@gmail.com

run useradd josh

user josh

copy config/clone /usr/local/bin/
copy config/run /usr/local/bin/

copy config/bash.bashrc /etc/bash.bashrc

copy config/vimrc /etc/vim/vimrc  

volume /home/

workdir /home/
