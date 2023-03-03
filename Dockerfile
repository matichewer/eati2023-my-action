FROM archlinux

RUN pacman -Syu --noconfirm \
        bash \
        tree \

RUN ls
RUN tree

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]
