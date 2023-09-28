# Args are defined in the Dockerfile before the FROM command.
# Using these args will cause an image to be created with node (default version is 16.18.1), chrome, firefox and edge.
ARG CYPRESS_VERSION='12.1.0'
ARG NODE_VERSION='16.18.1'
ARG YARN_VERSION='1.22.19'
ARG CHROME_VERSION='107.0.5304.121-1'
ARG EDGE_VERSION='100.0.1185.29-1'
ARG FIREFOX_VERSION='107.0'

FROM natep18f/container-cypress-test:container-build-ui

#COPY . /opt/app
WORKDIR /e2e

RUN npm install -g cypress cypress-image-diff-js cypress-axe cypress-axe-core cypress-real-events cypress-mochawesome-reporter
ENTRYPOINT ["npx" "cypress" "open"]
