FROM archlinux

RUN pacman -Syu --noconfirm \
        tree

RUN tree -L 2

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]
