FROM node

COPY CLI db

RUN cd db && npm i && node . create && node . create-table

ENTRYPOINT [ "/bin/bash" ]