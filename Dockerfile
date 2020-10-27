FROM ubuntu:latest

ARG DEBIAN_FRONTEND=noninteractive
ARG TZ="America/Sao_Paulo"

RUN apt-get update && apt-get install git curl nodejs neovim -y

RUN sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

COPY . /root/.config/nvim/

RUN /usr/bin/nvim +'PlugInstall --sync' +qa

WORKDIR /mnt/workdir

CMD /usr/bin/nvim
