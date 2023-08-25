FROM natep18f/container-cypress-test:container-build

WORKDIR /e2e

RUN npm install cypress-image-diff-js cypress-axe cypress axe-core cypress-real-events cypress-mochawesome-reporter

#EXPOSE 3000 
