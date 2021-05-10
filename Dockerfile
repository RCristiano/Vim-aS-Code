FROM ubuntu:20.04

LABEL org.opencontainers.image.source https://github.com/RCristiano/Vim-aS-Code

ARG DEBIAN_FRONTEND=noninteractive

ARG LANG=en_US.UTF-8
ARG LANGUAGE=en_US:en

ARG UNAME=Ahab
ARG USER_ID=1000
ARG GROUP_ID=1000

RUN apt-get update && \
    apt-get -yq install git curl nodejs neovim gnupg2 universal-ctags locales fonts-powerline python3-pip && \
    locale-gen ${LANG} && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get install -yq --no-install-recommends yarn && \
    pip3 install -U pip pynvim && \
    rm -rf /var/lib/apt/lists/* && \
    groupadd -g $GROUP_ID -o $UNAME && \
    useradd -m -u $USER_ID -g $GROUP_ID -o -s /bin/bash $UNAME

ENV LANG ${LANG}
ENV LANGUAGE ${LANGUAGE}
ENV LC_ALL ${LANG}

USER $UNAME

RUN sh -c 'curl -sLo /home/"${UNAME}"/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim' && \
    mkdir -p /home/${UNAME}/.config/nvim/

COPY --chown=${USER_ID}:${GROUP_ID} . /home/${UNAME}/.config/nvim/

RUN /usr/bin/nvim +'PlugInstall --sync' +qa &> /dev/null

WORKDIR /mnt/workdir

ENTRYPOINT [ "/usr/bin/nvim" ]

CMD [ "/mnt/workdir" ]