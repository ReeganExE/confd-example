FROM reeganexe/confd-base:0.16

COPY entrypoint.sh /
ENTRYPOINT [ "/entrypoint.sh" ]
