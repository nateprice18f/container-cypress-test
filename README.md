# Cypress Container Test Repo

## Cypress Container

### The Cypress repo brokendown into a few different branches
- Main branch only used to create and maintain templates of action workflows, Dockerfile and other supporting artifacts as needed 
- Container-build: This branch is used for pulling a container image from upstream then scanning the image and adds base packages and/or dependencies then creates a base container images for AMD64 and ARM64
- Container-build-ui: Used to for future containerization of Cypress base packages with UI access
- Container-cypress-test : This branch uses the container-build image to setup Cypress with needed packages.
- Container-cypress-test-ui : This branch uses the container-build-ui image to setup Cypress with needed packages with UI access.
- Container-test-website: Nodejs container with basic website for cypress container testing

| Branch | README | Github Actions | Dockerfile | Artifact |
| ------ | ------ | ------ | ------ | ------ |
| [Main]() | [README]() | [Workflow]() | [Dockerfile]() |
| [container-pa11y-dashboard]() | [README]() | [Workflow]() | [Dockerfile]() | [Download]() |
| [container-pa11y-mongodb]() | [README]() | [Workflow]() | [Dockerfile]() |
| [Test]() | [README]() | [Workflow]() | [Dockerfile]() |
