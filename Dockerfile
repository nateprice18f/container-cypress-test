FROM natep18f/container-cypress-test:container-build

RUN mkdir /node_modules

RUN cd /node_modules && \
    npm install \
    cypress-image-diff-js@1.28.0 \
    cypress-axe@1.4.0 \
    axe-core@4.7.2 \
    cypress-real-events@1.10.0 \
    cypress-mochawesome-reporter@3.5.1

#EXPOSE 3000 
