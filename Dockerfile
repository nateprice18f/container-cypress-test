FROM natep18f/container-cypress-test:container-build


WORKDIR /modules
RUN npm install \
    cypress-image-diff-js@1.28.0 \
    cypress-axe@1.4.0 \
    axe-core@4.7.2 \
    cypress-real-events@1.10.0 \
    cypress-mochawesome-reporter@3.5.1

WORKDIR /e2e
#EXPOSE 3000 
