FROM ubuntu:20.10

LABEL org.opencontainers.image.source https://github.com/RCristiano/Vim-aS-Code

ARG DEBIAN_FRONTEND=noninteractive

ARG LANG=en_US.UTF-8
ARG LANGUAGE=en_US:en

ARG UNAME=Ahab
ARG USER_ID=1000
ARG GROUP_ID=1000

RUN apt-get update && \
    apt-get -yq install git curl neovim gnupg2 universal-ctags ripgrep locales fonts-powerline python3.9 python3.9-venv && \
    locale-gen ${LANG} && \
    rm -rf /var/lib/apt/lists/* && \
    groupadd -g $GROUP_ID -o $UNAME && \
    useradd -m -u $USER_ID -g $GROUP_ID -o -s /bin/bash $UNAME

ENV LANG ${LANG}
ENV LANGUAGE ${LANGUAGE}
ENV LC_ALL ${LANG}

USER $UNAME

RUN bash -c 'python3.9 -m venv --upgrade-deps ~/.virtualenvs/neovim/py3 && \
    source ~/.virtualenvs/neovim/py3/bin/activate && \
    pip install -U pynvim jedi python-language-server' && \
    curl -sLo $HOME/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim && \
    mkdir -p $HOME/.config/nvim/

COPY --chown=${USER_ID}:${GROUP_ID} . /home/${UNAME}/.config/nvim/

RUN /usr/bin/nvim -es -u $HOME/.config/nvim/init.vim -i NONE -c "PlugInstall" -c "qa"

WORKDIR /mnt/workdir

ENV SHELL /bin/bash

ENTRYPOINT [ "/usr/bin/nvim" ]
