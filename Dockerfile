FROM node

COPY CLI db

RUN cd db && npm i

ENTRYPOINT [ "/bin/bash" ]