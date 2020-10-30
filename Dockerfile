FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive
# ARG TZ="America/Sao_Paulo"

RUN apt-get update && apt-get -yq install git curl nodejs neovim gnupg2 && \
    sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim' && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get install -yq yarn && \
    rm -rf /var/lib/apt/lists/*

COPY . /root/.config/nvim/

RUN /usr/bin/nvim +'PlugInstall --sync' +qa

WORKDIR /mnt/workdir

ENTRYPOINT [ "/usr/bin/nvim" ]

CMD [ "/mnt/workdir" ]