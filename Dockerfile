FROM natep18f/container-cypress-test:container-build

WORKDIR /config

RUN npm install \
    cypress@12.17.4 \
    cypress-image-diff-js@1.28.0 \
    cypress-axe@1.4.0 \
    cypress-axe-core@2.0.0 \
    cypress-real-events@1.10.0 \
    cypress-mochawesome-reporter@3.5.1 \
    axe-core@4.7.2

CMD ["npx", "cypress", "run"]
