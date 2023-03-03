FROM archlinux

RUN pacman -Syu --noconfirm \
        tree

RUN ls

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]
