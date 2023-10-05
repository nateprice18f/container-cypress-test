# Args are defined in the Dockerfile before the FROM command.
# Using these args will cause an image to be created with node (default version is 16.18.1), chrome, firefox and edge.
ARG CYPRESS_VERSION='13.3.0'
ARG NODE_VERSION='18.18.0'
ARG YARN_VERSION='1.22.19'
ARG CHROME_VERSION='117.0.5938.132-1'
ARG EDGE_VERSION='117.0.2045.40-1'
ARG FIREFOX_VERSION='118.0'

#FROM natep18f/container-cypress-test:container-build-ui

FROM cypress/factory
WORKDIR /e2e
#COPY . /opt/app

WORKDIR /cypress_ui
RUN npm install -g cypress cypress-image-diff-js cypress-axe cypress-axe-core cypress-real-events cypress-mochawesome-reporter
ENTRYPOINT [ "yarn" "run" "cypress" "open" ]
